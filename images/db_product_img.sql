-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 04, 2020 at 11:06 AM
-- Server version: 10.2.14-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databar_DB1`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_product_img`
--

CREATE TABLE `db_product_img` (
  `Pimg_ID` int(11) NOT NULL,
  `Plist_ID` int(11) DEFAULT NULL,
  `Pimg_Name` varchar(100) DEFAULT NULL,
  `Pimg_Index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_product_img`
--
ALTER TABLE `db_product_img`
  ADD PRIMARY KEY (`Pimg_ID`),
  ADD KEY `FK1` (`Plist_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_product_img`
--
ALTER TABLE `db_product_img`
  MODIFY `Pimg_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_product_img`
--
ALTER TABLE `db_product_img`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`Plist_ID`) REFERENCES `db_product_list` (`Plist_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
