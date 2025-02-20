/*
 Navicat Premium Dump SQL

 Source Server         : Database
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ukk

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 20/02/2025 13:04:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detail_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `detail_penjualan`;
CREATE TABLE `detail_penjualan`  (
  `id_detail` int NOT NULL AUTO_INCREMENT,
  `id_penjualan` int NULL DEFAULT NULL,
  `id_produk` int NULL DEFAULT NULL,
  `jumlah_produk` int NULL DEFAULT NULL,
  `jenis_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bayar` decimal(10, 2) NULL DEFAULT NULL,
  `kembalian` decimal(10, 2) NULL DEFAULT NULL,
  `subtotal` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_detail`) USING BTREE,
  INDEX `1`(`id_detail` ASC) USING BTREE,
  INDEX `2`(`id_penjualan` ASC) USING BTREE,
  INDEX `3`(`id_produk` ASC) USING BTREE,
  INDEX `4`(`jumlah_produk` ASC) USING BTREE,
  INDEX `5`(`jenis_pembayaran` ASC) USING BTREE,
  INDEX `6`(`bayar` ASC) USING BTREE,
  INDEX `7`(`kembalian` ASC) USING BTREE,
  INDEX `8`(`subtotal` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_penjualan
-- ----------------------------
INSERT INTO `detail_penjualan` VALUES (1, 1, 1, 3, 'Cash', 10000.00, 4000.00, 6000.00);
INSERT INTO `detail_penjualan` VALUES (2, 2, 2, 2, 'Cash', 10000.00, 0.00, 10000.00);
INSERT INTO `detail_penjualan` VALUES (3, 3, 1, 1, 'Qris', 5000.00, 3000.00, 2000.00);
INSERT INTO `detail_penjualan` VALUES (4, 4, 3, 3, 'Cash', 50000.00, 20000.00, 30000.00);
INSERT INTO `detail_penjualan` VALUES (5, 5, 2, 2, 'Cash', 10000.00, 0.00, 10000.00);
INSERT INTO `detail_penjualan` VALUES (6, 6, 1, 6, 'Cash', 20000.00, 80000.00, 12000.00);
INSERT INTO `detail_penjualan` VALUES (7, 7, 1, 4, 'Qris', 50000.00, 10000.00, 40000.00);

-- ----------------------------
-- Table structure for log_activity
-- ----------------------------
DROP TABLE IF EXISTS `log_activity`;
CREATE TABLE `log_activity`  (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_table` int NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `old_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `new_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE,
  INDEX `1`(`id_log` ASC) USING BTREE,
  INDEX `2`(`id_table` ASC) USING BTREE,
  INDEX `3`(`action` ASC) USING BTREE,
  INDEX `4`(`old_data` ASC) USING BTREE,
  INDEX `5`(`new_data` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_activity
-- ----------------------------
INSERT INTO `log_activity` VALUES (7, 8, 'INSERT INTO detail_penjualan', NULL, NULL);
INSERT INTO `log_activity` VALUES (8, 8, 'UPDATE detail_penjualan', NULL, 'id_penjualan : 8id_produk : 8123jumlah_produk : 8123jenis_pembayaran : 123123bayar : 12312312.00kembalian : 8.00subtotal :8.00');
INSERT INTO `log_activity` VALUES (9, 8, 'UPDATE detail_penjualan', 'id_penjualan : 8id_produk : 8123jumlah_produk : 8123jenis_pembayaran : 123123bayar : 12312312.00kembalian : 8.00subtotal :8.00', 'id_penjualan : 8id_produk : 123123jumlah_produk : 8123jenis_pembayaran : 123123bayar : 12312312.00kembalian : 8.00subtotal :8.00');
INSERT INTO `log_activity` VALUES (10, 8, 'DELETE detail_penjualan', 'id_penjualan : 8id_produk : 123123jumlah_produk : 8123jenis_pembayaran : 123123bayar : 12312312.00kembalian : 8.00subtotal :8.00', NULL);
INSERT INTO `log_activity` VALUES (11, 4, 'UPDATE pelanggan', 'nama_pelanggan : Hanialamat : Southlink A No 1no_hp: 087288197111', 'nama_pelanggan : Hanialamat : Southlink A No 1no_hp: 087288197111`');
INSERT INTO `log_activity` VALUES (12, 4, 'UPDATE pelanggan', 'nama_pelanggan : Hanialamat : Southlink A No 1no_hp: 087288197111`', 'nama_pelanggan : Hanialamat : Southlink A No 1no_hp: 087288197111');
INSERT INTO `log_activity` VALUES (13, 5, 'INSERT INTO pelanggan', NULL, 'nama_pelanggan : wdalamat : 1no_hp: 1');
INSERT INTO `log_activity` VALUES (14, 5, 'UPDATE pelanggan', 'nama_pelanggan : wdalamat : 1no_hp: 1', 'nama_pelanggan : 123alamat : 123no_hp: 1');
INSERT INTO `log_activity` VALUES (15, 5, 'UPDATE pelanggan', 'nama_pelanggan : 123alamat : 123no_hp: 1', NULL);

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `no_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE,
  INDEX `1`(`id_pelanggan` ASC) USING BTREE,
  INDEX `2`(`nama_pelanggan` ASC) USING BTREE,
  INDEX `3`(`alamat`(768) ASC) USING BTREE,
  INDEX `4`(`no_hp` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES (1, 'Elvan', 'Palazo Garden C No 92', '085157206615');
INSERT INTO `pelanggan` VALUES (2, 'Elan', 'Permata Baloi D No 45', '082166728817');
INSERT INTO `pelanggan` VALUES (3, 'Satria', 'Aiko Residence F No 32', '081277728289');
INSERT INTO `pelanggan` VALUES (4, 'Hani', 'Southlink A No 1', '087288197111');

-- ----------------------------
-- Table structure for pembelian
-- ----------------------------
DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian`  (
  `id_pembelian` int NOT NULL AUTO_INCREMENT,
  `id_produk` int NULL DEFAULT NULL,
  `harga_beli` decimal(10, 2) NULL DEFAULT NULL,
  `jumlah` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`) USING BTREE,
  INDEX `1`(`id_pembelian` ASC) USING BTREE,
  INDEX `2`(`id_produk` ASC) USING BTREE,
  INDEX `3`(`harga_beli` ASC) USING BTREE,
  INDEX `4`(`jumlah` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembelian
-- ----------------------------
INSERT INTO `pembelian` VALUES (1, 1, 1.00, 1);
INSERT INTO `pembelian` VALUES (2, 1, 2.00, 2);
INSERT INTO `pembelian` VALUES (3, 1, 1.00, 3);

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan`  (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `tanggal_penjualan` date NULL DEFAULT NULL,
  `total_harga` decimal(10, 2) NULL DEFAULT NULL,
  `id_pelanggan` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE,
  INDEX `1`(`id_penjualan` ASC) USING BTREE,
  INDEX `2`(`tanggal_penjualan` ASC) USING BTREE,
  INDEX `3`(`total_harga` ASC) USING BTREE,
  INDEX `4`(`id_pelanggan` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
INSERT INTO `penjualan` VALUES (1, '2025-02-19', 6000.00, 1);
INSERT INTO `penjualan` VALUES (2, '2025-02-19', 10000.00, 1);
INSERT INTO `penjualan` VALUES (3, '2025-02-19', 2000.00, 2);
INSERT INTO `penjualan` VALUES (4, '2025-02-19', 30000.00, 3);
INSERT INTO `penjualan` VALUES (5, '2025-03-01', 10000.00, 4);
INSERT INTO `penjualan` VALUES (6, '2025-03-01', 12000.00, 3);
INSERT INTO `penjualan` VALUES (7, '2025-03-02', 40000.00, 1);

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga_beli` decimal(10, 2) NULL DEFAULT NULL,
  `harga_jual` decimal(10, 2) NULL DEFAULT NULL,
  `stok` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE,
  INDEX `1`(`id_produk` ASC) USING BTREE,
  INDEX `2`(`nama_produk` ASC) USING BTREE,
  INDEX `3`(`harga_beli` ASC) USING BTREE,
  INDEX `4`(`harga_jual` ASC) USING BTREE,
  INDEX `5`(`stok` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (1, 'Sanford Gelas', 1000.00, 2000.00, 100);
INSERT INTO `produk` VALUES (2, 'Sanford Botol 150ml', 2000.00, 5000.00, 100);
INSERT INTO `produk` VALUES (3, 'Sanford Besar 300ml', 4000.00, 10000.00, 100);

-- ----------------------------
-- Triggers structure for table detail_penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `produk`;
delimiter ;;
CREATE TRIGGER `produk` AFTER INSERT ON `detail_penjualan` FOR EACH ROW BEGIN
    DECLARE stok_produk INT;

    -- Ambil stok saat ini dari tabel produk
    SELECT stok INTO stok_produk FROM produk WHERE id_produk = NEW.id_produk;

    -- Cek apakah stok cukup
    IF stok_produk < NEW.jumlah_produk THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'stok Tidak cukup';      
    END IF;
    UPDATE produk 
        SET stok = stok - NEW.jumlah_produk 
        WHERE id_produk = NEW.id_produk;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log insert`;
delimiter ;;
CREATE TRIGGER `log insert` AFTER INSERT ON `detail_penjualan` FOR EACH ROW insert into log_activity (id_table, action, new_data)
 VALUES (NEW.id_detail, 'INSERT INTO detail_penjualan',
          CONCAT('id_penjualan : ' , NEW.id_penjualan, 'id_produk : ', NEW.id_produk, 'jumlah_produk : ', NEW.jumlah_produk, 'jenis_pembayaran : ', NEW.jenis_pembayaran, 'bayar : ' , NEW.bayar, 'kembalian : ', NEW.kembalian, 'subtotal :', NEW.subtotal ))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `produk2`;
delimiter ;;
CREATE TRIGGER `produk2` AFTER UPDATE ON `detail_penjualan` FOR EACH ROW BEGIN
    DECLARE stok_produk INT;

    -- Ambil stok saat ini dari tabel produk
    SELECT stok INTO stok_produk FROM produk WHERE id_produk = NEW.id_produk;

    -- Cek apakah stok cukup
    IF stok_produk < NEW.jumlah_produk THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'stok Tidak cukup';      
    END IF;
    IF OLD.jumlah_produk <> NEW.jumlah_produk THEN
        UPDATE produk
        SET stok = stok + OLD.jumlah_produk - NEW.jumlah_produk
        WHERE id_produk = NEW.id_produk;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log update`;
delimiter ;;
CREATE TRIGGER `log update` AFTER UPDATE ON `detail_penjualan` FOR EACH ROW insert into log_activity (id_table, action, old_data, new_data)
 VALUES (OLD.id_detail, 'UPDATE detail_penjualan',
 CONCAT('id_penjualan : ' , OLD.id_penjualan, 'id_produk : ', OLD.id_produk, 'jumlah_produk : ', OLD.jumlah_produk, 'jenis_pembayaran : ', OLD.jenis_pembayaran, 'bayar : ' , OLD.bayar, 'kembalian : ', OLD.kembalian, 'subtotal :', OLD.subtotal ),
          CONCAT('id_penjualan : ' , NEW.id_penjualan, 'id_produk : ', NEW.id_produk, 'jumlah_produk : ', NEW.jumlah_produk, 'jenis_pembayaran : ', NEW.jenis_pembayaran, 'bayar : ' , NEW.bayar, 'kembalian : ', NEW.kembalian, 'subtotal :', NEW.subtotal ))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `produk3`;
delimiter ;;
CREATE TRIGGER `produk3` AFTER DELETE ON `detail_penjualan` FOR EACH ROW UPDATE produk
    SET stok = stok + OLD.jumlah_produk
    WHERE id_produk = OLD.id_produk
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log delete`;
delimiter ;;
CREATE TRIGGER `log delete` AFTER DELETE ON `detail_penjualan` FOR EACH ROW insert into log_activity (id_table, action, old_data)
 VALUES (OLD.id_detail, 'DELETE detail_penjualan',
 CONCAT('id_penjualan : ' , OLD.id_penjualan, 'id_produk : ', OLD.id_produk, 'jumlah_produk : ', OLD.jumlah_produk, 'jenis_pembayaran : ', OLD.jenis_pembayaran, 'bayar : ' , OLD.bayar, 'kembalian : ', OLD.kembalian, 'subtotal :', OLD.subtotal ))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pelanggan
-- ----------------------------
DROP TRIGGER IF EXISTS `log insert2`;
delimiter ;;
CREATE TRIGGER `log insert2` AFTER INSERT ON `pelanggan` FOR EACH ROW insert into log_activity (id_table, action, new_data)
 VALUES (NEW.id_pelanggan, 'INSERT INTO pelanggan',
          CONCAT('nama_pelanggan : ' , NEW.nama_pelanggan, 'alamat : ', NEW.alamat, 'no_hp: ', NEW.no_hp))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pelanggan
-- ----------------------------
DROP TRIGGER IF EXISTS `log update 2`;
delimiter ;;
CREATE TRIGGER `log update 2` AFTER UPDATE ON `pelanggan` FOR EACH ROW insert into log_activity (id_table, action, old_data, new_data)
 VALUES (OLD.id_pelanggan, 'UPDATE pelanggan',
          CONCAT('nama_pelanggan : ' , OLD.nama_pelanggan, 'alamat : ', OLD.alamat, 'no_hp: ', OLD.no_hp),
                    CONCAT('nama_pelanggan : ' , NEW.nama_pelanggan, 'alamat : ', NEW.alamat, 'no_hp: ', NEW.no_hp))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pelanggan
-- ----------------------------
DROP TRIGGER IF EXISTS `log delete 2`;
delimiter ;;
CREATE TRIGGER `log delete 2` AFTER DELETE ON `pelanggan` FOR EACH ROW insert into log_activity (id_table, action, old_data)
 VALUES (OLD.id_pelanggan, 'DELETE pelanggan',
          CONCAT('nama_pelanggan : ' , OLD.nama_pelanggan, 'alamat : ', OLD.alamat, 'no_hp: ', OLD.no_hp))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembelian
-- ----------------------------
DROP TRIGGER IF EXISTS `produk4`;
delimiter ;;
CREATE TRIGGER `produk4` AFTER INSERT ON `pembelian` FOR EACH ROW UPDATE produk
    SET produk.stok = produk.stok + NEW.jumlah
    WHERE id_produk = NEW.id_produk
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembelian
-- ----------------------------
DROP TRIGGER IF EXISTS `log insert 3`;
delimiter ;;
CREATE TRIGGER `log insert 3` AFTER INSERT ON `pembelian` FOR EACH ROW insert into log_activity (id_table, action, new_data)
 VALUES (NEW.id_pembelian, 'INSERT INTO pembelian',
          CONCAT('id_produk : ' , NEW.id_produk, 'harga_beli: ', NEW.harga_beli, 'jumlah: ', NEW.jumlah))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembelian
-- ----------------------------
DROP TRIGGER IF EXISTS `produk5`;
delimiter ;;
CREATE TRIGGER `produk5` AFTER UPDATE ON `pembelian` FOR EACH ROW IF OLD.jumlah <> NEW.jumlah THEN
        UPDATE produk
        SET stok = stok - OLD.jumlah + NEW.jumlah
        WHERE id_produk = NEW.id_produk;
    END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembelian
-- ----------------------------
DROP TRIGGER IF EXISTS `log update 3`;
delimiter ;;
CREATE TRIGGER `log update 3` AFTER UPDATE ON `pembelian` FOR EACH ROW insert into log_activity (id_table, action, old_data, new_data)
 VALUES (OLD.id_pembelian, 'UPDATE pembelian',
    CONCAT('id_produk : ' , OLD.id_produk, 'harga_beli: ', OLD.harga_beli, 'jumlah: ', OLD.jumlah),
          CONCAT('id_produk : ' , NEW.id_produk, 'harga_beli: ', NEW.harga_beli, 'jumlah: ', NEW.jumlah))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembelian
-- ----------------------------
DROP TRIGGER IF EXISTS `produk6`;
delimiter ;;
CREATE TRIGGER `produk6` AFTER DELETE ON `pembelian` FOR EACH ROW UPDATE produk
    SET stok = stok - OLD.jumlah
    WHERE id_produk = OLD.id_produk
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table pembelian
-- ----------------------------
DROP TRIGGER IF EXISTS `log delete3`;
delimiter ;;
CREATE TRIGGER `log delete3` AFTER DELETE ON `pembelian` FOR EACH ROW insert into log_activity (id_table, action, old_data)
 VALUES (OLD.id_pembelian, 'DELETE pembelian',
    CONCAT('id_produk : ' , OLD.id_produk, 'harga_beli: ', OLD.harga_beli, 'jumlah: ', OLD.jumlah))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log insert 4`;
delimiter ;;
CREATE TRIGGER `log insert 4` AFTER INSERT ON `penjualan` FOR EACH ROW insert into log_activity (id_table, action, new_data)
 VALUES (NEW.id_penjualan, 'INSERT INTO penjualan',
    CONCAT('tanggal_penjualan : ' , NEW.tanggal_penjualan, 'total_harga: ', NEW.total_harga, 'id_pelanggan: ', NEW.id_pelanggan))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log u`;
delimiter ;;
CREATE TRIGGER `log u` AFTER UPDATE ON `penjualan` FOR EACH ROW insert into log_activity (id_table, action,old_data, new_data)
 VALUES (OLD.id_penjualan, 'UPDATE penjualan',
   CONCAT('tanggal_penjualan : ' , OLD.tanggal_penjualan, 'total_harga: ', OLD.total_harga, 'id_pelanggan: ', OLD.id_pelanggan),
    CONCAT('tanggal_penjualan : ' , NEW.tanggal_penjualan, 'total_harga: ', NEW.total_harga, 'id_pelanggan: ', NEW.id_pelanggan))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table penjualan
-- ----------------------------
DROP TRIGGER IF EXISTS `log d`;
delimiter ;;
CREATE TRIGGER `log d` AFTER DELETE ON `penjualan` FOR EACH ROW insert into log_activity (id_table, action,old_data)
 VALUES (OLD.id_penjualan, 'DELETE penjualan',
   CONCAT('tanggal_penjualan : ' , OLD.tanggal_penjualan, 'total_harga: ', OLD.total_harga, 'id_pelanggan: ', OLD.id_pelanggan))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk
-- ----------------------------
DROP TRIGGER IF EXISTS `log iss`;
delimiter ;;
CREATE TRIGGER `log iss` AFTER INSERT ON `produk` FOR EACH ROW insert into log_activity (id_table, action, new_data)
 VALUES (NEW.id_produk, 'INSERT INTO produk',
    CONCAT('nama_produk : ' , NEW.nama_produk, 'harga_beli: ', NEW.harga_beli, 'harga_jual: ', NEW.harga_jual, 'stok :' , NEW.stok))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk
-- ----------------------------
DROP TRIGGER IF EXISTS `log uyp`;
delimiter ;;
CREATE TRIGGER `log uyp` AFTER UPDATE ON `produk` FOR EACH ROW insert into log_activity (id_table, action, old_data, new_data)
 VALUES (OLD.id_produk, 'UPDATE  produk',
     CONCAT('nama_produk : ' , OLD.nama_produk, 'harga_beli: ', OLD.harga_beli, 'harga_jual: ', OLD.harga_jual, 'stok :' , OLD.stok),
    CONCAT('nama_produk : ' , NEW.nama_produk, 'harga_beli: ', NEW.harga_beli, 'harga_jual: ', NEW.harga_jual, 'stok :' , NEW.stok))
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table produk
-- ----------------------------
DROP TRIGGER IF EXISTS `log del`;
delimiter ;;
CREATE TRIGGER `log del` AFTER DELETE ON `produk` FOR EACH ROW insert into log_activity (id_table, action, old_data)
 VALUES (OLD.id_produk, 'DELETE  produk',
     CONCAT('nama_produk : ' , OLD.nama_produk, 'harga_beli: ', OLD.harga_beli, 'harga_jual: ', OLD.harga_jual, 'stok :' , OLD.stok))
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
