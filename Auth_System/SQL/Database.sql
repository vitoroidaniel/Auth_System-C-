﻿-- INIT

USE MASTER;

GO

DROP DATABASE IF EXISTS AuthSystem;

GO

CREATE DATABASE AuthSystem;

GO

USE AuthSystem;

GO

-- TABLES

CREATE TABLE "Role" (
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	"Name" VARCHAR(50) UNIQUE NOT NULL
);

GO

CREATE TABLE Account (
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Username VARCHAR(50) UNIQUE NOT NULL,
	"Password" VARCHAR(500) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(500) NOT NULL,
	PhoneNumber VARCHAR(500) NOT NULL,
	"Role" INT FOREIGN KEY REFERENCES "Role"(Id) NOT NULL
);

GO

 -- INSERTS

INSERT INTO "Role" VALUES
	('User'),
	('Admin');

GO

INSERT INTO Account VALUES
	('admin', 
	'5IENroLR/Cl95UklQxxxFm6TVIf3WqMRnPGZUrxEO55oQGqsbuFZmm+B+hse0CjiEw3miihi4ydE8i3mtVvnyxGhHR9/JbvI0OKiw6ebCgr9A3TL0BrLS23T79XHoQxt', 
	'Admin', 
	'Admin', 
	'693n0Xxg9px746IAhZyjWEHHfkX0KFU4dcPzBrMdTJ9KGMwf6y9DM+x8Bt1lqillqgEbLPHWro9gSuP++jgtjxcLl/ih8jdIX0EzxU3ELmBxJPUhYKfT1rJtDVW/8kJ0', 
	'AKcO5N6qR5th5gJ8enurJBEbygjIZEFBpdPU91sJXluulf15phTdyQ19gY6cUkmdikKvcK2iGJ4ZH5A3bLCzYR74qFCoMYT58P0E43ykMQ0a7zdmTira6/8Zk+48y3vP', 
	(SELECT id FROM "Role" WHERE "Name" = 'Admin'))

GO

-- SELECTS

SELECT * FROM "Role";

GO

SELECT * FROM Account;