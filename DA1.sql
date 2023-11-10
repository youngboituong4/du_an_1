Create database DA1
use DA1
go
Create Table MauSac(
	STT int identity(1,1) not null,
	MS Varchar(100) primary key,
	TenMau Nvarchar(100) not null,
	
)
Create Table KichThuoc(
	STT int identity(1,1) not null,
	KT Varchar(100) primary key,
	Size nvarchar(100) not null,
	
)
Create Table ChatLieu(
	STT int identity(1,1) not null,
	CL Varchar(100) primary key,
	ChatLieu NVarchar(100) not null,
	
)
Create Table LoaiSanPham(
	STT int identity(1,1) not null,
	LSP Varchar(100) primary key,
	LoaiSanPham nvarchar(100) not null,	
)

DROP TABLE SanPham
Create Table SanPham(
	MaSP varchar(25) primary key,
	TenSP nVarchar(100) not null,
	LoaiSP nvarchar(100) not null,
	KT nvarchar(100) not null,
	MS nvarchar(100) not null,
	CL nvarchar(100) not null,
	Gia DECIMAL(10,2) not null,
	SoLuong int not null,
	TrangThai bit
)

INSERT INTO SanPham (MaSP, TenSP, LoaiSP, KT, MS, CL, Gia, SoLuong, TrangThai)
VALUES ('SP01',N'Áo vô tri', N'Áo không cổ', 'L', N'Đỏ', 'Len', 100.00, 10,1),
	   ('SP02',N'Áo không sợ vợ ', N'Áo Polo', 'M', N'Vàng', N'Nỉ', 199.00, 20,1);

DROP TABLE ChiTietSanPham


--DROP TABLE MauSac
--DROP TABLE KichThuoc
--DROP TABLE ChatLieu
--DROP TABLE LoaiSanPham
DROP TABLE SanPham

--select * from SanPham,MauSac,KichThuoc,ChatLieu
--drop table  SanPham

--SELECT * FROM SANPHAM WHERE TenSP LIKE '%vo%' or LoaiSP LIKE '%len%' or KT LIKE '%len%' or MS LIKE '%len%' or CL LIKE '%len%' 

INSERT INTO MauSac (MS, TenMau)
VALUES ('MS1', N'Đỏ'),('MS2',N'Vàng');
select * from MauSac
--SET IDENTITY_INSERT [dbo].[SanPham] OFF
--SET IDENTITY_INSERT MauSac ON;

INSERT INTO KichThuoc (KT, Size)
VALUES ('KT1', 'L'),('KT2','M');
select * from KichThuoc
INSERT INTO ChatLieu (CL, ChatLieu)
VALUES ('CL1', 'Cotton'),('CL2','Len');
INSERT INTO LoaiSanPham (LSP, LoaiSanPham)
VALUES ('LSP1',N'Áo thun'),('LSP2',N'Áo ba lỗ');

--select * from ChatLieu


