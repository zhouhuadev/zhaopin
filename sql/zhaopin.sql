/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : zhaopin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-02-13 16:50:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作城市',
  `job_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '职位名称',
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '职位链接',
  `min_salary` int(10) unsigned DEFAULT NULL COMMENT '最低工资',
  `max_salary` int(10) unsigned DEFAULT NULL COMMENT '最高工资',
  `education` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '最低学历',
  `experience` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作经验',
  `address` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作地址',
  `description` longtext COMMENT '工作描述',
  `company_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '公司名',
  `release_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_url` (`url`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8mb4 COMMENT='工作职位信息表';
