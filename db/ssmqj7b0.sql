-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmqj7b0
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761718736 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-16 01:02:43',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-16 01:02:43',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-16 01:02:43',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-16 01:02:43',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-16 01:02:43',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-16 01:02:43',6,'宇宙银河系月球1号','月某','13823888886','是'),(1610761525530,'2021-01-16 01:45:24',61,'江西省萍乡市芦溪县新泉乡8264武功山驴友旅舍','小吴','16459878988','是'),(1610761718735,'2021-01-16 01:48:38',1610761656144,'西藏自治区昌都市江达县生达乡','小李','16459878988','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'chongwuyongpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761828652 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762502849 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2021-01-16 01:02:43',1,1,'提问1','回复1',1),(102,'2021-01-16 01:02:43',2,2,'提问2','回复2',2),(103,'2021-01-16 01:02:43',3,3,'提问3','回复3',3),(104,'2021-01-16 01:02:43',4,4,'提问4','回复4',4),(105,'2021-01-16 01:02:43',5,5,'提问5','回复5',5),(106,'2021-01-16 01:02:43',6,6,'提问6','回复6',6),(1610761553545,'2021-01-16 01:45:52',61,NULL,'1212',NULL,1),(1610761852227,'2021-01-16 01:50:52',1610761656144,NULL,'这里可以向管理员咨询',NULL,0),(1610762502848,'2021-01-16 02:01:42',1610761656144,1,NULL,'这里回复用户的咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwufenlei`
--

DROP TABLE IF EXISTS `chongwufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762157888 DEFAULT CHARSET=utf8 COMMENT='宠物分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwufenlei`
--

LOCK TABLES `chongwufenlei` WRITE;
/*!40000 ALTER TABLE `chongwufenlei` DISABLE KEYS */;
INSERT INTO `chongwufenlei` VALUES (11,'2021-01-16 01:02:43','宠物猫'),(12,'2021-01-16 01:02:43','宠物狗'),(13,'2021-01-16 01:02:43','宠物猪'),(14,'2021-01-16 01:02:43','宠物鼠'),(15,'2021-01-16 01:02:43','其它宠物'),(1610762157887,'2021-01-16 01:55:57','这里添加宠物分类');
/*!40000 ALTER TABLE `chongwufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwuguashi`
--

DROP TABLE IF EXISTS `chongwuguashi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwuguashi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guashibiaoti` varchar(200) NOT NULL COMMENT '挂失标题',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `yishididian` varchar(200) DEFAULT NULL COMMENT '遗失地点',
  `yishishijian` datetime DEFAULT NULL COMMENT '遗失时间',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `neirongxiangqing` longtext COMMENT '内容详情',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762017007 DEFAULT CHARSET=utf8 COMMENT='宠物挂失';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwuguashi`
--

LOCK TABLES `chongwuguashi` WRITE;
/*!40000 ALTER TABLE `chongwuguashi` DISABLE KEYS */;
INSERT INTO `chongwuguashi` VALUES (91,'2021-01-16 01:02:43','挂失标题1','分类1','宠物名称1','http://localhost:8080/ssmqj7b0/upload/chongwuguashi_tupian1.jpg','城市1','遗失地点1','2021-01-16 09:02:43','2021-01-16','内容详情1','用户名1','手机1'),(92,'2021-01-16 01:02:43','挂失标题2','分类2','宠物名称2','http://localhost:8080/ssmqj7b0/upload/chongwuguashi_tupian2.jpg','城市2','遗失地点2','2021-01-16 09:02:43','2021-01-16','内容详情2','用户名2','手机2'),(93,'2021-01-16 01:02:43','挂失标题3','分类3','宠物名称3','http://localhost:8080/ssmqj7b0/upload/chongwuguashi_tupian3.jpg','城市3','遗失地点3','2021-01-16 09:02:43','2021-01-16','内容详情3','用户名3','手机3'),(94,'2021-01-16 01:02:43','挂失标题4','分类4','宠物名称4','http://localhost:8080/ssmqj7b0/upload/chongwuguashi_tupian4.jpg','城市4','遗失地点4','2021-01-16 09:02:43','2021-01-16','内容详情4','用户名4','手机4'),(95,'2021-01-16 01:02:43','挂失标题5','分类5','宠物名称5','http://localhost:8080/ssmqj7b0/upload/chongwuguashi_tupian5.jpg','城市5','遗失地点5','2021-01-16 09:02:43','2021-01-16','内容详情5','用户名5','手机5'),(96,'2021-01-16 01:02:43','挂失标题6','分类6','宠物名称6','http://localhost:8080/ssmqj7b0/upload/chongwuguashi_tupian6.jpg','城市6','遗失地点6','2021-01-16 09:02:43','2021-01-16','内容详情6','用户名6','手机6'),(1610762017006,'2021-01-16 01:53:36','这里发布要挂失的宠物','宠物猫','AA','http://localhost:8080/ssmqj7b0/upload/1610761992241.jpg','北京','朝阳区','2021-01-20 09:49:10','2021-01-20','<p>1212</p>','666','16459878982');
/*!40000 ALTER TABLE `chongwuguashi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwujicun`
--

DROP TABLE IF EXISTS `chongwujicun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwujicun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jicunbiaoti` varchar(200) NOT NULL COMMENT '寄存标题',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `jicunneirong` longtext COMMENT '寄存内容',
  `shangdianbianhao` varchar(200) DEFAULT NULL COMMENT '商店编号',
  `shangdianmingcheng` varchar(200) DEFAULT NULL COMMENT '商店名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jicunriqi` date DEFAULT NULL COMMENT '寄存日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761964514 DEFAULT CHARSET=utf8 COMMENT='宠物寄存';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwujicun`
--

LOCK TABLES `chongwujicun` WRITE;
/*!40000 ALTER TABLE `chongwujicun` DISABLE KEYS */;
INSERT INTO `chongwujicun` VALUES (71,'2021-01-16 01:02:43','寄存标题1','宠物名称1','分类1','http://localhost:8080/ssmqj7b0/upload/chongwujicun_tupian1.jpg','公','年龄1','寄存内容1','商店编号1','商店名称1','联系电话1','2021-01-16','备注1','用户名1','手机1','否',''),(72,'2021-01-16 01:02:43','寄存标题2','宠物名称2','分类2','http://localhost:8080/ssmqj7b0/upload/chongwujicun_tupian2.jpg','公','年龄2','寄存内容2','商店编号2','商店名称2','联系电话2','2021-01-16','备注2','用户名2','手机2','否',''),(73,'2021-01-16 01:02:43','寄存标题3','宠物名称3','分类3','http://localhost:8080/ssmqj7b0/upload/chongwujicun_tupian3.jpg','公','年龄3','寄存内容3','商店编号3','商店名称3','联系电话3','2021-01-16','备注3','用户名3','手机3','否',''),(74,'2021-01-16 01:02:43','寄存标题4','宠物名称4','分类4','http://localhost:8080/ssmqj7b0/upload/chongwujicun_tupian4.jpg','公','年龄4','寄存内容4','商店编号4','商店名称4','联系电话4','2021-01-16','备注4','用户名4','手机4','否',''),(75,'2021-01-16 01:02:43','寄存标题5','宠物名称5','分类5','http://localhost:8080/ssmqj7b0/upload/chongwujicun_tupian5.jpg','公','年龄5','寄存内容5','商店编号5','商店名称5','联系电话5','2021-01-16','备注5','用户名5','手机5','否',''),(76,'2021-01-16 01:02:43','寄存标题6','宠物名称6','分类6','http://localhost:8080/ssmqj7b0/upload/chongwujicun_tupian6.jpg','公','年龄6','寄存内容6','商店编号6','商店名称6','联系电话6','2021-01-16','备注6','用户名6','手机6','否',''),(1610761964513,'2021-01-16 01:52:43','宠物寄存','AA','宠物狗','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian1.jpg','公','三个月','<p><img src=\"../../..//upload/1610761955789.jpg\" /></p>','编号1','商店名称1','13823888881','2021-01-28','','666','16459878982','是','这里查看审核用户寄存信息');
/*!40000 ALTER TABLE `chongwujicun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwulingyang`
--

DROP TABLE IF EXISTS `chongwulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhonglei` varchar(200) NOT NULL COMMENT '种类',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xingqing` varchar(200) DEFAULT NULL COMMENT '性情',
  `chongwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '宠物状态',
  `yimiaoqingkuang` varchar(200) DEFAULT NULL COMMENT '疫苗情况',
  `lingyangfeiyong` int(11) NOT NULL COMMENT '领养费用',
  `lingyangshuoming` longtext COMMENT '领养说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762290903 DEFAULT CHARSET=utf8 COMMENT='宠物领养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwulingyang`
--

LOCK TABLES `chongwulingyang` WRITE;
/*!40000 ALTER TABLE `chongwulingyang` DISABLE KEYS */;
INSERT INTO `chongwulingyang` VALUES (51,'2021-01-16 01:02:43','宠物名称1','宠物狗','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian1.jpg','种类1','年龄1','公','性情1','已领养','有',150,'<p>费用包括疫苗费用 治疗费用</p><p><br></p><p>宠物被领养后  可在这里修改宠物状态  或者直接删除该条领养信息</p>'),(52,'2021-01-16 01:02:43','宠物名称2','分类2','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian2.jpg','种类2','年龄2','公','性情2','可领养','有',2,'领养说明2'),(53,'2021-01-16 01:02:43','宠物名称3','分类3','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian3.jpg','种类3','年龄3','公','性情3','可领养','有',3,'领养说明3'),(54,'2021-01-16 01:02:43','宠物名称4','分类4','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian4.jpg','种类4','年龄4','公','性情4','可领养','有',4,'领养说明4'),(55,'2021-01-16 01:02:43','宠物名称5','分类5','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian5.jpg','种类5','年龄5','公','性情5','可领养','有',5,'领养说明5'),(56,'2021-01-16 01:02:43','宠物名称6','分类6','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian6.jpg','种类6','年龄6','公','性情6','可领养','有',6,'领养说明6'),(1610762290902,'2021-01-16 01:58:09','这里发布可供领养的宠物信息','宠物狗','http://localhost:8080/ssmqj7b0/upload/1610762248519.jpg','金毛','四个月','公','温顺','可领养','有',160,'<p><img src=\"http://localhost:8080/ssmqj7b0/upload/1610762267017.jpg\"></p><p><span class=\"ql-size-large\">领养费用包含流浪狗治疗费用  疫苗费用 </span></p>');
/*!40000 ALTER TABLE `chongwulingyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwushangdian`
--

DROP TABLE IF EXISTS `chongwushangdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwushangdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangdianbianhao` varchar(200) NOT NULL COMMENT '商店编号',
  `shangdianmingcheng` varchar(200) NOT NULL COMMENT '商店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangdiandizhi` varchar(200) DEFAULT NULL COMMENT '商店地址',
  `shangdianjieshao` longtext COMMENT '商店介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='宠物商店';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwushangdian`
--

LOCK TABLES `chongwushangdian` WRITE;
/*!40000 ALTER TABLE `chongwushangdian` DISABLE KEYS */;
INSERT INTO `chongwushangdian` VALUES (41,'2021-01-16 01:02:43','编号1','商店名称1','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian1.jpg','经营范围1','联系人1','13823888881','商店地址1','<p>商店介绍1</p>'),(42,'2021-01-16 01:02:43','商店编号2','商店名称2','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian2.jpg','经营范围2','联系人2','13823888882','商店地址2','商店介绍2'),(43,'2021-01-16 01:02:43','商店编号3','商店名称3','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian3.jpg','经营范围3','联系人3','13823888883','商店地址3','商店介绍3'),(44,'2021-01-16 01:02:43','商店编号4','商店名称4','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian4.jpg','经营范围4','联系人4','13823888884','商店地址4','商店介绍4'),(45,'2021-01-16 01:02:43','商店编号5','商店名称5','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian5.jpg','经营范围5','联系人5','13823888885','商店地址5','商店介绍5'),(46,'2021-01-16 01:02:43','商店编号6','商店名称6','http://localhost:8080/ssmqj7b0/upload/chongwushangdian_tupian6.jpg','经营范围6','联系人6','13823888886','商店地址6','商店介绍6');
/*!40000 ALTER TABLE `chongwushangdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwuyongpin`
--

DROP TABLE IF EXISTS `chongwuyongpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwuyongpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762211805 DEFAULT CHARSET=utf8 COMMENT='宠物用品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwuyongpin`
--

LOCK TABLES `chongwuyongpin` WRITE;
/*!40000 ALTER TABLE `chongwuyongpin` DISABLE KEYS */;
INSERT INTO `chongwuyongpin` VALUES (31,'2021-01-16 01:02:43','商品名称1','衣服饰品','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian1.jpg','双','品牌1','保质期1','<p>商品详情1</p>','2021-01-20','2021-01-16 10:02:12',8,22),(32,'2021-01-16 01:02:43','商品名称2','衣服饰品','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian2.jpg','规格2','品牌2','保质期2','<p>商品详情2</p>','2020-12-27','2021-01-16 10:02:09',7,20),(33,'2021-01-16 01:02:43','商品名称3','分类3','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian3.jpg','规格3','品牌3','保质期3','商品详情3','2021-01-16','2021-01-16 09:02:43',3,99.9),(34,'2021-01-16 01:02:43','商品名称4','分类4','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian4.jpg','规格4','品牌4','保质期4','商品详情4','2021-01-16','2021-01-16 09:02:43',4,99.9),(35,'2021-01-16 01:02:43','商品名称5','分类5','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian5.jpg','规格5','品牌5','保质期5','商品详情5','2021-01-16','2021-01-16 09:02:43',5,99.9),(36,'2021-01-16 01:02:43','商品名称6','分类6','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian6.jpg','规格6','品牌6','保质期6','商品详情6','2021-01-16','2021-01-16 09:02:43',6,99.9),(1610762211804,'2021-01-16 01:56:51','宠物玩具','玩具','http://localhost:8080/ssmqj7b0/upload/1610762179593.jpg','个','a','无','<p><img src=\"http://localhost:8080/ssmqj7b0/upload/1610762210545.jpg\"></p>','2020-12-28','2021-01-16 09:56:56',1,16);
/*!40000 ALTER TABLE `chongwuyongpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmqj7b0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmqj7b0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmqj7b0/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwuguashi`
--

DROP TABLE IF EXISTS `discusschongwuguashi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwuguashi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='宠物挂失评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwuguashi`
--

LOCK TABLES `discusschongwuguashi` WRITE;
/*!40000 ALTER TABLE `discusschongwuguashi` DISABLE KEYS */;
INSERT INTO `discusschongwuguashi` VALUES (201,'2021-01-16 01:02:43',1,1,'评论内容1','回复内容1'),(202,'2021-01-16 01:02:43',2,2,'评论内容2','回复内容2'),(203,'2021-01-16 01:02:43',3,3,'评论内容3','回复内容3'),(204,'2021-01-16 01:02:43',4,4,'评论内容4','回复内容4'),(205,'2021-01-16 01:02:43',5,5,'评论内容5','回复内容5'),(206,'2021-01-16 01:02:43',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschongwuguashi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwulingyang`
--

DROP TABLE IF EXISTS `discusschongwulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='宠物领养评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwulingyang`
--

LOCK TABLES `discusschongwulingyang` WRITE;
/*!40000 ALTER TABLE `discusschongwulingyang` DISABLE KEYS */;
INSERT INTO `discusschongwulingyang` VALUES (191,'2021-01-16 01:02:43',1,1,'评论内容1','回复内容1'),(192,'2021-01-16 01:02:43',2,2,'评论内容2','回复内容2'),(193,'2021-01-16 01:02:43',3,3,'评论内容3','回复内容3'),(194,'2021-01-16 01:02:43',4,4,'评论内容4','回复内容4'),(195,'2021-01-16 01:02:43',5,5,'评论内容5','回复内容5'),(196,'2021-01-16 01:02:43',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschongwulingyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwushangdian`
--

DROP TABLE IF EXISTS `discusschongwushangdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwushangdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761926894 DEFAULT CHARSET=utf8 COMMENT='宠物商店评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwushangdian`
--

LOCK TABLES `discusschongwushangdian` WRITE;
/*!40000 ALTER TABLE `discusschongwushangdian` DISABLE KEYS */;
INSERT INTO `discusschongwushangdian` VALUES (181,'2021-01-16 01:02:43',1,1,'评论内容1','回复内容1'),(182,'2021-01-16 01:02:43',2,2,'评论内容2','回复内容2'),(183,'2021-01-16 01:02:43',3,3,'评论内容3','回复内容3'),(184,'2021-01-16 01:02:43',4,4,'评论内容4','回复内容4'),(185,'2021-01-16 01:02:43',5,5,'评论内容5','回复内容5'),(186,'2021-01-16 01:02:43',6,6,'评论内容6','回复内容6'),(1610761926893,'2021-01-16 01:52:06',41,1610761656144,'这里查看商店信息  并进行寄存操作',NULL);
/*!40000 ALTER TABLE `discusschongwushangdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwuyongpin`
--

DROP TABLE IF EXISTS `discusschongwuyongpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwuyongpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761799227 DEFAULT CHARSET=utf8 COMMENT='宠物用品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwuyongpin`
--

LOCK TABLES `discusschongwuyongpin` WRITE;
/*!40000 ALTER TABLE `discusschongwuyongpin` DISABLE KEYS */;
INSERT INTO `discusschongwuyongpin` VALUES (171,'2021-01-16 01:02:43',1,1,'评论内容1','回复内容1'),(172,'2021-01-16 01:02:43',2,2,'评论内容2','回复内容2'),(173,'2021-01-16 01:02:43',3,3,'评论内容3','回复内容3'),(174,'2021-01-16 01:02:43',4,4,'评论内容4','回复内容4'),(175,'2021-01-16 01:02:43',5,5,'评论内容5','回复内容5'),(176,'2021-01-16 01:02:43',6,6,'评论内容6','回复内容6'),(1610761799226,'2021-01-16 01:49:58',31,1610761656144,'用户登录后可以收藏  评论  购买 寄养  挂失  发布交流经验的帖子等操作','这里可以回复用户在前台的评论');
/*!40000 ALTER TABLE `discusschongwuyongpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762066052 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1610761430178,'2021-01-16 01:43:50','你不得不知道的宠物冬季小常识','<p>随着冬季气温越来越寒冷，人和宠物的活动量开始逐渐的减少，这就给了疾病和病菌可乘之机，从而导致了宠物的一些疾病发病率的提升，让铲屎官们忧心忡忡，那么在冬季要怎样预防一些疾病的发生呢，又有哪些常见的疾病呢，下面为各位铲屎官们介绍一些宠物在冬季常见的一些疾病，和宠物们一起度过健康的冬天~</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/13024195612/1000\"></p><p>针对用户的发帖  对于敏感类话题或者字眼  管理员在后台可以修改或者删除该类帖子</p>',0,61,'001','开放'),(1610761476912,'2021-01-16 01:44:36','宠物知识猫','<div class=\"img-container\" style=\"margin-top: 30px; font-family: arial; font-size: 12px; background-color: #ffffff;\"><img src=\"../../../upload/1610761456257.jpg\" width=\"381\" height=\"238\" /></div>\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">胖丁是继花生毛豆后被女儿喂养的又一只猫。</span></p>\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">听女儿说，胖丁本来是她对门邻居小姑娘养的猫，可不知道什么原因，它总是和它的室友不友好相处，被主人多次嫌弃。一个偶然的机会女儿把它抱回了家。或许它体会到了原主人对它的厌恶，因此刚到女儿家时，胖丁连走路都是特别谨慎小心地溜边进出，生怕弄出一点点声响。而每次花生对它无故地挑衅，它也都表现的大度包容，颇有一番逆来顺受的可怜相。就连喂食机投喂食物时，只要花生毛豆第一时间挤在喂食机前，它也会主动退出不去争抢。时间久了，女儿再看见花生欺负它时总是呵斥花生，大概胖丁能从主人的言语、动作中体会出主人对它的喜爱，于是，它慢慢的开始学会了反击，甚至对花生的一些行为开始了反攻。</span></p>\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">刚喂养胖丁时，女儿给我发过来它的好多照片。胖丁的体型圆滚滚肉嘟嘟，黑白灰相间的横向花纹让它看上去更为胖大。如果名字里不带个&ldquo;胖&rdquo;字仿佛就辜负了它这一身的肉肉。胖丁的脸瘪瘪得又宽又大，和毛豆小巧的瓜子脸相比，胖丁的脸足足大出毛豆两个型号。一双提溜圆的大眼睛却总是眯缝着，永远一副睡不醒的样子，嘴角下垂给人一种丧丧的生无可恋的感觉，我管它叫大脸猫，其实人家的学名叫&ldquo;美国短毛猫&rdquo;。可就凭着这一张厌世脸，短短半天时间我就喜欢上了它。</span></p>',0,61,'001','开放'),(1610762036807,'2021-01-16 01:53:56',NULL,'这里可以评论其他用户发布的交流帖子',1610761476912,1610761656144,'666',NULL),(1610762066051,'2021-01-16 01:54:25','在这里可以发帖跟回帖','<p>可以在这里分享自己的饲养宠物经验</p>\n<p><img src=\"../../../upload/1610762064132.jpg\" /></p>',0,1610761656144,'666','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762487661 DEFAULT CHARSET=utf8 COMMENT='宠物资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (161,'2021-01-16 01:02:43','数十万企业上演同质化竞争，“宠物经济”千亿级市场如何破壁','http://localhost:8080/ssmqj7b0/upload/news_picture1.jpg','<p class=\"ql-align-justify\"><strong>“它经济”迎来爆发式增长</strong></p><p class=\"ql-align-justify\">《2019年中国宠物行业白皮书》的数据显示，2019年中国宠物消费市场规模已经突破2000亿元，并且这一数据每年将保持20%的复合增长，预计到2023年国内的宠物市场消费规模将超过4000亿元。</p><p><br></p>'),(162,'2021-01-16 01:02:43','为让宠物主人安心放心，普陀这支“大部队”出动了！','http://localhost:8080/ssmqj7b0/upload/news_picture2.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">开展专项检查</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">保障消费者权益</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">建立微信群</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">宣传相关法规</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">宜川路街道市场监管所积极行动</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">让监管落到实处</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">为加强对宜川地区宠物店及动物诊疗机构的监管，规范宠物经营及诊疗活动，近期宜川市场监督管理所开展了一次专项检查，并通过建立微信群对上述经营单位进行有关法律法规的宣贯行动。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">全面检查 规范经营</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">宜川路街道属于老城区，居民小区集中，宠物店多开设在沿街店铺及居民小区内，此次检查共涉及宠物店6户，动物诊疗机构1户，出动执法人员18人次。</span></p>'),(163,'2021-01-16 01:02:43','宠物看病比人贵合理吗？','http://localhost:8080/ssmqj7b0/upload/news_picture3.jpg','<p>	《中国经济周刊》 记者&nbsp;马铭悦</p><p>	“如果花五六万块可以治好，还是会花的。”</p><p>	“去年我带着我家虎头去宠物医院拔全口牙，花了13000多。今年治疗前庭老化花了大概6000块钱。现在长期吃治疗心脏的药，三个月400多块钱，合一个月100多，还算便宜。”北京的王女士家有一只14岁名叫“虎头”的雪纳瑞，因为狗上了年纪，这两年带狗看病次数也逐渐增多，林林总总共花了三四万块钱。</p><p>	“我基本每年都会带虎头体检，一年两次，一次需要一千多块钱。”王女士对《中国经济周刊》记者说，“（虎头）年纪小的时候，也就是夏天会有些皮肤病等（小毛病），但年纪大了就会出现腰部疾病等，治疗就比较费劲，会辗转好几个医院。”</p>'),(1610762487660,'2021-01-16 02:01:26','这里能添加新的公告信息跟宠物新闻资讯','http://localhost:8080/ssmqj7b0/upload/1610762481131.jpg','<p><img src=\"http://localhost:8080/ssmqj7b0/upload/1610762486328.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'chongwuyongpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761838585 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1610761543492,'2021-01-16 01:45:42','20211169412527749061','chongwuyongpin',61,31,'商品名称1','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian1.jpg',1,22,22,22,22,1,'已发货','江西省萍乡市芦溪县新泉乡8264武功山驴友旅舍'),(1610761808779,'2021-01-16 01:50:08','2021116945515440758','chongwuyongpin',1610761656144,31,'商品名称1','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian1.jpg',1,22,22,22,22,1,'已完成','西藏自治区昌都市江达县生达乡'),(1610761838584,'2021-01-16 01:50:38','20211169462118183227','chongwuyongpin',1610761656144,32,'商品名称2','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian2.jpg',2,20,20,40,40,1,'已完成','西藏自治区昌都市江达县生达乡');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610762165588 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (21,'2021-01-16 01:02:43','零食'),(22,'2021-01-16 01:02:43','饮料'),(23,'2021-01-16 01:02:43','食品'),(24,'2021-01-16 01:02:43','玩具'),(25,'2021-01-16 01:02:43','衣服饰品'),(26,'2021-01-16 01:02:43','日用品'),(1610762165587,'2021-01-16 01:56:05','鞋子');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761889206 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610761539231,'2021-01-16 01:45:38',61,31,'chongwuyongpin','商品名称1','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian1.jpg'),(1610761763187,'2021-01-16 01:49:22',1610761656144,31,'chongwuyongpin','商品名称1','http://localhost:8080/ssmqj7b0/upload/chongwuyongpin_tupian1.jpg'),(1610761889205,'2021-01-16 01:51:28',1610761656144,51,'chongwulingyang','宠物名称1','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','htdw53419p9ckpf3as7mv0e0t4o0phbf','2021-01-16 01:35:50','2021-01-16 02:55:38'),(2,61,'001','yonghu','用户','ujtdv9xzcra8m40pgxpx17fx9pep8858','2021-01-16 01:43:21','2021-01-16 02:43:21'),(3,1610761656144,'666','yonghu','用户','meoniosz4yrsofpnt35es7jrz503d1zj','2021-01-16 01:47:42','2021-01-16 03:02:04');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-16 01:02:43'),(2,'000','000','管理员','2021-01-16 02:00:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761656145 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (61,'2021-01-16 01:02:43','001','001','小吴','女','http://localhost:8080/ssmqj7b0/upload/yonghu_touxiang1.jpg','13823888881',78),(62,'2021-01-16 01:02:43','002','002','小叶','女','http://localhost:8080/ssmqj7b0/upload/yonghu_touxiang2.jpg','13823888882',100),(63,'2021-01-16 01:02:43','用户3','123456','姓名3','男','http://localhost:8080/ssmqj7b0/upload/yonghu_touxiang3.jpg','13823888883',100),(64,'2021-01-16 01:02:43','用户4','123456','姓名4','男','http://localhost:8080/ssmqj7b0/upload/yonghu_touxiang4.jpg','13823888884',100),(65,'2021-01-16 01:02:43','用户5','123456','姓名5','男','http://localhost:8080/ssmqj7b0/upload/yonghu_touxiang5.jpg','13823888885',100),(66,'2021-01-16 01:02:43','用户6','123456','姓名6','男','http://localhost:8080/ssmqj7b0/upload/yonghu_touxiang6.jpg','13823888886',100),(1610761656144,'2021-01-16 01:47:36','666','666','小李','女','http://localhost:8080/ssmqj7b0/upload/1610761671990.jpg','16459878988',538);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghulingyang`
--

DROP TABLE IF EXISTS `yonghulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lingyangbiaoti` varchar(200) NOT NULL COMMENT '领养标题',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `chongwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '宠物状态',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `lingyangfeiyong` varchar(200) DEFAULT NULL COMMENT '领养费用',
  `shenqingneirong` longtext NOT NULL COMMENT '申请内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `shenqingbeizhu` varchar(200) DEFAULT NULL COMMENT '申请备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610761908300 DEFAULT CHARSET=utf8 COMMENT='用户领养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghulingyang`
--

LOCK TABLES `yonghulingyang` WRITE;
/*!40000 ALTER TABLE `yonghulingyang` DISABLE KEYS */;
INSERT INTO `yonghulingyang` VALUES (81,'2021-01-16 01:02:43','领养标题1','宠物名称1','分类1','宠物状态1','http://localhost:8080/ssmqj7b0/upload/yonghulingyang_tupian1.jpg','年龄1','领养费用1','申请内容1','2021-01-16','申请备注1','用户名1','手机1','否','','未支付'),(82,'2021-01-16 01:02:43','领养标题2','宠物名称2','分类2','宠物状态2','http://localhost:8080/ssmqj7b0/upload/yonghulingyang_tupian2.jpg','年龄2','领养费用2','申请内容2','2021-01-16','申请备注2','用户名2','手机2','否','','未支付'),(83,'2021-01-16 01:02:43','领养标题3','宠物名称3','分类3','宠物状态3','http://localhost:8080/ssmqj7b0/upload/yonghulingyang_tupian3.jpg','年龄3','领养费用3','申请内容3','2021-01-16','申请备注3','用户名3','手机3','否','','未支付'),(84,'2021-01-16 01:02:43','领养标题4','宠物名称4','分类4','宠物状态4','http://localhost:8080/ssmqj7b0/upload/yonghulingyang_tupian4.jpg','年龄4','领养费用4','申请内容4','2021-01-16','申请备注4','用户名4','手机4','否','','未支付'),(85,'2021-01-16 01:02:43','领养标题5','宠物名称5','分类5','宠物状态5','http://localhost:8080/ssmqj7b0/upload/yonghulingyang_tupian5.jpg','年龄5','领养费用5','申请内容5','2021-01-16','申请备注5','用户名5','手机5','否','','未支付'),(86,'2021-01-16 01:02:43','领养标题6','宠物名称6','分类6','宠物状态6','http://localhost:8080/ssmqj7b0/upload/yonghulingyang_tupian6.jpg','年龄6','领养费用6','申请内容6','2021-01-16','申请备注6','用户名6','手机6','否','','未支付'),(1610761908299,'2021-01-16 01:51:47','宠物领养','宠物名称1','宠物狗','可领养','http://localhost:8080/ssmqj7b0/upload/chongwulingyang_tupian1.jpg','年龄1','150','<p>11111</p>','2021-01-28','','666','16459878982','是','收到 同意','已支付');
/*!40000 ALTER TABLE `yonghulingyang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-17 17:20:50
