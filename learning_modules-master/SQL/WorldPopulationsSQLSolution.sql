-- Initialization
SELECT * FROM countries;

-- How many entries in the countries table are from Africa?
SELECT COUNT(*) from countries 
WHERE continent = 'Africa';

-- What was the total population of the continent of Oceania in 2005?
SELECT SUM(population) FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2005 AND continent = 'Oceania';

-- What is the average population of countries in South America in 2003?
SELECT AVG(population) FROM population_years
JOIN countries 
ON countries.id = population_years.country_id
WHERE continent = 'South America' and year = '2003';

-- What country had the smallest population in 2007?
SELECT MIN(population) FROM population_years
JOIN countries ON countries.id = population_years.country_id
WHERE year = 2007;

-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population) FROM population_years
JOIN countries on countries.id = population_years.country_id
WHERE countries.name = 'Poland';

-- How many countries have the word “The” in their name?
SELECT count(*) FROM countries
WHERE name LIKE "%The%";

-- What was the total population of each continent in 2010?
SELECT SUM(population_years.population),countries.continent FROM population_years
JOIN countries ON countries.id = population_years.country_id
WHERE YEAR = 2010
GROUP BY countries.continent;
