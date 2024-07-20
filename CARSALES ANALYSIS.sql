create database sales;
use sales;
-- question-1
select * from carsales;

-- question 2
select make, model,saleprice from carsales;

-- question 3
select * from carsales where CountryName = 'United Kingdom';

-- question 4
select * from carsales where CountryName = 'United Kingdom' and saleprice>90000;

-- question 5
select * from carsales where make = 'Rolls Royce' or make = 'Aston Martin';

-- question 6
select * from carsales order by  SalePrice;

-- question 7
select distinct make from carsales;

-- question 8
select * from carsales where model Like 'Silver%';


--  question 9
select * from carsales where region = 'East Midlands' or region = 'Greater London Authority';

-- question 10
select * from carsales where saleprice>=80000 and saleprice<=100000;

-- question 11;
select * from carsales where isDealer = NULL;

-- question 12
select * from carsales where totalDiscount is not Null;

-- question 13
SELECT 
    Make, 
    Model, 
    SalePrice - CostPrice AS Profit 
FROM 
    carsales;
    
-- question 14
select make,sum(saleprice) as total_Sales from carsales group by make;

-- question 15
select make,avg(saleprice) as total_Sales from carsales group by make;

-- question 16
select make,count(saleprice) as total_Sales from carsales group by make;

-- question 17
select make from carsales group by make having avg(saleprice)>90000 ;

-- question  19
SELECT make, model, COUNT(*) AS Number_of_cars
FROM carsales
GROUP BY make, model;

-- question 20
select * from carsales where saleprice > (select avg(saleprice) from carsales);

-- INTERMEDIATE QUESTIONS 
-- QUESTION 1
SELECT *  FROM CARSALES WHERE SALEPRICE>COSTPRICE;

-- QUESTION 2
SELECT *  FROM CARSALES WHERE COUNTRYNAME = 'UNITED KINGDOM' and saleprice>80000;

-- question 3
select * from carsales where make = 'ROLLS ROYCE' OR color = 'red';

-- question 4
select * from carsales order by CountryName desc , SalePrice desc;

-- question 5
select distinct color from carsales;

-- question 6
select * from carsales where make Like '%Royce';

-- question 7
select * from carsales where make = 'Aston Martin ' or make = 'Rolls Royce';

-- question 8
select * from carsales where InvoiceDate >'2012-01-01' and InvoiceDate < '2012-12-31';

-- question 9
SELECT * FROM CARSALES WHERE ISDEALER IS NULL;

-- question 10
SELECT * FROM CARSALES WHERE TOTALDISCOUNT IS NOT NULL;

-- question 11
SELECT make, model, SUM(saleprice + deliverycharge) AS totalcost
FROM carsales
GROUP BY make, model;

-- question 12
select make, model from carsales order by saleprice desc LIMIT 10;

-- question 13
select * from carsales where model like '%Ghost';

-- question 14
select * from carsales where length(Region)>10;

-- question 15
SELECT 
    * 
FROM 
    carsales where SalePrice - CostPrice>10000;

-- question 16
select * from carsales  where countryName <> 'UNITED KINGDOM';

-- question 17
SELECT 
    Make, 
    Model, 
    SalePrice - CostPrice AS Profit 
FROM 
    carsales;
    
-- question 18
select * from carsales where InvoiceDate Like '2012%';

-- question 19
select * from carsales where countryNAME = 'UNITED KINGDOM' AND  (SALEPRICE >80000 OR COLOR = 'RED');

-- question 20
select MAKE , MODEL , UPPER(MAKE) ,UPPER  (MODEL) FROM CARSALES;

-- HARD LEVEL

-- QUESTION 1
select * from carsales where SalePrice>CostPrice and TotalDiscount > 500 and color<>'red';

-- Question 2
select * from carsales where (make = 'Rolls Royce' and SalePrice>90000) or (make = 'Aston Martin' and SalePrice<100000);

-- Question 3
SELECT Make , Model , SALEPRICE,Costprice from carsales WHERE ((SALEPRICE - COSTPRICE)>=20000 OR (SALEPRICE - COSTPRICE)<=-20000) AND TotalDiscount<=1000;
    
-- QUESTION 4
SELECT Make, Model,Color FROM CARSALES WHERE Model like 'Silver%' and BINARY Color = UPPER(Color);

-- QUESTION 5
Select * from carsales where (InvoiceDate >= '2012-01-01' and InvoiceDate <= '2012-12-31') and (DeliveryCharge between 500 and 1500);

-- Question 6
Select * from carsales order by CountryName, Make, SalePrice desc;

-- QUESTION 7
ALTER TABLE CARSALES 
ADD COLUMN PRICECATEGORY VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;

UPDATE CARSALES
SET PRICECATEGORY = 'HIGH'
WHERE SALEPRICE > 100000;

UPDATE CARSALES
SET PRICECATEGORY = 'MEDIUM'
WHERE SALEPRICE BETWEEN 50000 AND 100000;

UPDATE CARSALES
SET PRICECATEGORY = 'LOW'
WHERE SALEPRICE < 50000;

-- QUESTION 8
SELECT * FROM CARSALES WHERE LENGTH(MAKE)>5 AND COLOR LIKE '%YELLOW%';

-- QUESTION 9
SELECT MAKE , MODEL , SALEPRICE - COSTPRICE AS NETPROFIT  FROM CARSALES WHERE SALEPRICE-COSTPRICE > 0;

-- QUESTION 10
SELECT * FROM CARSALES WHERE (MAKE<>'ROLLS ROYCE' AND (SALEPRICE<80000 AND SALEPRICE>100000));

-- QUESTION 11
SELECT * FROM CARSALES WHERE ISDEALER IS NULL AND (SALEPRICE - TOTALDISCOUNT)>85000;

-- QUESTION 12
SELECT MAKE , MODEL , (SALEPRICE/1000)*1000 AS ROUNDED_SALESPRICE FROM CARSALES;

-- QUESTION 13
SELECT MAKE,MODEL, CONCAT(LOWER(MODEL),'_model') AS CONVERTED_MODEL FROM CARSALES ;

-- QUESTION 14
SELECT *
FROM carsales
WHERE InvoiceNumber LIKE '[0-9][A-Za-z]';

-- QUESTION 15
select * from carsales where (saleprice>costprice) and (Make ='Aston Martin' or Make = 'Rolls Royce') and color<>'blue';

-- QUESTION 16
SELECT * FROM CARSALES WHERE ((SALEPRICE+DeliveryCharge)>100000) and CountryName = 'United Kingdom';

-- QUESTION 17
SELECT *,
       CASE
           WHEN SalePrice > 90000 THEN 'Expensive'
           WHEN SalePrice BETWEEN 50000 AND 90000 THEN 'Affordable'
           ELSE 'Cheap'
       END AS PriceCategory
FROM CARSALES;

-- QUESTION 18
Select * from carsales where month(InvoiceDate)=01  and Model Like '%S%';

-- QUESTION 19
-- Select * from carsales group by make('Aston Martin');

-- QUESTION 20
SELECT 
    MAKE, 
    MODEL, 
    SALEPRICE - COALESCE(TOTALDISCOUNT, 0) AS DISCOUNTED_PRICE 
FROM 
    CARSALES;

