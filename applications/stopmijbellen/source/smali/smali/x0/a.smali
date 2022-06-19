.class public Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx0/a$a;,
        Lx0/a$c;,
        Lx0/a$b;,
        Lx0/a$d;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Ljava/nio/charset/Charset;

.field public static final C:[B

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:[I

.field public static final n:[I

.field public static final o:[B

.field public static final p:[B

.field public static final q:[B

.field public static final r:[Ljava/lang/String;

.field public static final s:[I

.field public static final t:[B

.field public static final u:Lx0/a$c;

.field public static final v:[[Lx0/a$c;

.field public static final w:[Lx0/a$c;

.field public static final x:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/nio/ByteOrder;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v5, 0x6

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v7, v1, v8

    const/16 v10, 0x8

    .line 4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v6

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lx0/a;->k:Ljava/util/List;

    new-array v1, v0, [Ljava/lang/Integer;

    aput-object v9, v1, v4

    const/4 v12, 0x7

    .line 6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v8

    const/4 v14, 0x5

    .line 7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v6

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lx0/a;->l:Ljava/util/List;

    new-array v1, v6, [I

    .line 9
    fill-array-data v1, :array_0

    sput-object v1, Lx0/a;->m:[I

    new-array v1, v2, [I

    aput v10, v1, v4

    .line 10
    sput-object v1, Lx0/a;->n:[I

    new-array v1, v6, [B

    .line 11
    fill-array-data v1, :array_1

    sput-object v1, Lx0/a;->o:[B

    new-array v1, v5, [B

    .line 12
    fill-array-data v1, :array_2

    sput-object v1, Lx0/a;->p:[B

    const/16 v1, 0xa

    new-array v12, v1, [B

    .line 13
    fill-array-data v12, :array_3

    sput-object v12, Lx0/a;->q:[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    .line 14
    filled-new-array/range {v16 .. v28}, [Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lx0/a;->r:[Ljava/lang/String;

    const/16 v12, 0xe

    new-array v1, v12, [I

    .line 15
    fill-array-data v1, :array_4

    sput-object v1, Lx0/a;->s:[I

    new-array v1, v10, [B

    .line 16
    fill-array-data v1, :array_5

    sput-object v1, Lx0/a;->t:[B

    const/16 v1, 0x29

    new-array v1, v1, [Lx0/a$c;

    .line 17
    new-instance v12, Lx0/a$c;

    const-string v10, "NewSubfileType"

    const/16 v5, 0xfe

    invoke-direct {v12, v10, v5, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v12, v1, v4

    new-instance v5, Lx0/a$c;

    const-string v10, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v5, v10, v12, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v10, "ImageWidth"

    const/16 v12, 0x100

    invoke-direct {v5, v10, v12, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v5, v1, v8

    new-instance v5, Lx0/a$c;

    const-string v10, "ImageLength"

    const/16 v12, 0x101

    invoke-direct {v5, v10, v12, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v5, v1, v6

    new-instance v5, Lx0/a$c;

    const-string v10, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v0

    new-instance v5, Lx0/a$c;

    const-string v10, "Compression"

    const/16 v12, 0x103

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v1, v14

    new-instance v5, Lx0/a$c;

    const-string v10, "PhotometricInterpretation"

    const/16 v12, 0x106

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "ImageDescription"

    const/16 v12, 0x10e

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x7

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "Make"

    const/16 v12, 0x10f

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "Model"

    const/16 v12, 0x110

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x9

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v12, "StripOffsets"

    const/16 v10, 0x111

    invoke-direct {v5, v12, v10, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xa

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v12, "SamplesPerPixel"

    const/16 v10, 0x115

    invoke-direct {v5, v12, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "RowsPerStrip"

    const/16 v12, 0x116

    invoke-direct {v5, v10, v12, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xd

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "StripByteCounts"

    const/16 v12, 0x117

    invoke-direct {v5, v10, v12, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v10, 0xe

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v5, v10, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xf

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v5, v10, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x10

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x11

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x12

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x13

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "Software"

    const/16 v12, 0x131

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x14

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x15

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v12, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v5, v12, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x16

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v12, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v5, v12, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x17

    aput-object v5, v1, v10

    new-instance v5, Lx0/a$c;

    const-string v12, "PrimaryChromaticities"

    const/16 v2, 0x13f

    invoke-direct {v5, v12, v2, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x18

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "SubIFDPointer"

    const/16 v2, 0x14a

    invoke-direct {v5, v12, v2, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x19

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v5, v12, v2, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1a

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v5, v12, v2, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1b

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "YCbCrCoefficients"

    const/16 v2, 0x211

    invoke-direct {v5, v12, v2, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1c

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "YCbCrSubSampling"

    const/16 v2, 0x212

    invoke-direct {v5, v12, v2, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1d

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "YCbCrPositioning"

    const/16 v2, 0x213

    invoke-direct {v5, v12, v2, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1e

    aput-object v5, v1, v2

    new-instance v5, Lx0/a$c;

    const-string v12, "ReferenceBlackWhite"

    const/16 v2, 0x214

    invoke-direct {v5, v12, v2, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1f

    aput-object v5, v1, v2

    new-instance v2, Lx0/a$c;

    const-string v5, "Copyright"

    const v12, 0x8298

    invoke-direct {v2, v5, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v2, v5, v12, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v2, v5, v12, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "SensorTopBorder"

    invoke-direct {v2, v5, v0, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "SensorLeftBorder"

    invoke-direct {v2, v5, v14, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x24

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "SensorBottomBorder"

    const/4 v12, 0x6

    invoke-direct {v2, v5, v12, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x25

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "SensorRightBorder"

    const/4 v12, 0x7

    invoke-direct {v2, v5, v12, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x26

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "ISO"

    invoke-direct {v2, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x27

    aput-object v2, v1, v5

    new-instance v2, Lx0/a$c;

    const-string v5, "JpgFromRaw"

    const/16 v10, 0x2e

    invoke-direct {v2, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x28

    aput-object v2, v1, v5

    const/16 v2, 0x3b

    new-array v2, v2, [Lx0/a$c;

    .line 18
    new-instance v5, Lx0/a$c;

    const-string v10, "ExposureTime"

    const v12, 0x829a

    invoke-direct {v5, v10, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v4

    new-instance v5, Lx0/a$c;

    const-string v10, "FNumber"

    const v12, 0x829d

    invoke-direct {v5, v10, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v5, v2, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "ExposureProgram"

    const v12, 0x8822

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v8

    new-instance v5, Lx0/a$c;

    const-string v10, "SpectralSensitivity"

    const v12, 0x8824

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v6

    new-instance v5, Lx0/a$c;

    const-string v10, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v5, v10, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v0

    new-instance v5, Lx0/a$c;

    const-string v10, "OECF"

    const v12, 0x8828

    const/4 v4, 0x7

    invoke-direct {v5, v10, v12, v4}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v14

    new-instance v5, Lx0/a$c;

    const-string v10, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v5, v2, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v2, v4

    new-instance v5, Lx0/a$c;

    const-string v10, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v5, v10, v12, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x8

    aput-object v5, v2, v10

    new-instance v5, Lx0/a$c;

    const-string v10, "ComponentsConfiguration"

    const v12, 0x9101

    invoke-direct {v5, v10, v12, v4}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x9

    aput-object v5, v2, v4

    new-instance v4, Lx0/a$c;

    const-string v5, "CompressedBitsPerPixel"

    const v10, 0x9102

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xa

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v10, "ShutterSpeedValue"

    const v12, 0x9201

    invoke-direct {v4, v10, v12, v5}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xb

    aput-object v4, v2, v10

    new-instance v4, Lx0/a$c;

    const-string v10, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v4, v10, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xc

    aput-object v4, v2, v10

    new-instance v4, Lx0/a$c;

    const-string v10, "BrightnessValue"

    const v12, 0x9203

    invoke-direct {v4, v10, v12, v5}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0xd

    aput-object v4, v2, v10

    new-instance v4, Lx0/a$c;

    const-string v10, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v4, v10, v12, v5}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xe

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "MaxApertureValue"

    const v10, 0x9205

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xf

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubjectDistance"

    const v10, 0x9206

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x10

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "MeteringMode"

    const v10, 0x9207

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x11

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "LightSource"

    const v10, 0x9208

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "Flash"

    const v10, 0x9209

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x13

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FocalLength"

    const v10, 0x920a

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubjectArea"

    const v10, 0x9214

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x15

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "MakerNote"

    const v10, 0x927c

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "UserComment"

    const v10, 0x9286

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x17

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubSecTime"

    const v10, 0x9290

    invoke-direct {v4, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x18

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubSecTimeOriginal"

    const v10, 0x9291

    invoke-direct {v4, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x19

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubSecTimeDigitized"

    const v10, 0x9292

    invoke-direct {v4, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1a

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FlashpixVersion"

    const v10, 0xa000

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1b

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "ColorSpace"

    const v10, 0xa001

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1c

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "PixelXDimension"

    const v10, 0xa002

    invoke-direct {v4, v5, v10, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x1d

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "PixelYDimension"

    const v10, 0xa003

    invoke-direct {v4, v5, v10, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x1e

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "RelatedSoundFile"

    const v10, 0xa004

    invoke-direct {v4, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x1f

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "InteroperabilityIFDPointer"

    const v10, 0xa005

    invoke-direct {v4, v5, v10, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x20

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FlashEnergy"

    const v10, 0xa20b

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x21

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SpatialFrequencyResponse"

    const v10, 0xa20c

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x22

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FocalPlaneXResolution"

    const v10, 0xa20e

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x23

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FocalPlaneYResolution"

    const v10, 0xa20f

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x24

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FocalPlaneResolutionUnit"

    const v10, 0xa210

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x25

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubjectLocation"

    const v10, 0xa214

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x26

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "ExposureIndex"

    const v10, 0xa215

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x27

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SensingMethod"

    const v10, 0xa217

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x28

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FileSource"

    const v10, 0xa300

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x29

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SceneType"

    const v10, 0xa301

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2a

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "CFAPattern"

    const v10, 0xa302

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2b

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "CustomRendered"

    const v10, 0xa401

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2c

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "ExposureMode"

    const v10, 0xa402

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2d

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "WhiteBalance"

    const v10, 0xa403

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2e

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "DigitalZoomRatio"

    const v10, 0xa404

    invoke-direct {v4, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x2f

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "FocalLengthIn35mmFilm"

    const v10, 0xa405

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x30

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SceneCaptureType"

    const v10, 0xa406

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x31

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "GainControl"

    const v10, 0xa407

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x32

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "Contrast"

    const v10, 0xa408

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x33

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "Saturation"

    const v10, 0xa409

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x34

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "Sharpness"

    const v10, 0xa40a

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x35

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "DeviceSettingDescription"

    const v10, 0xa40b

    const/4 v12, 0x7

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x36

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "SubjectDistanceRange"

    const v10, 0xa40c

    invoke-direct {v4, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x37

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "ImageUniqueID"

    const v10, 0xa420

    invoke-direct {v4, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x38

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "DNGVersion"

    const v10, 0xc612

    const/4 v12, 0x1

    invoke-direct {v4, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x39

    aput-object v4, v2, v5

    new-instance v4, Lx0/a$c;

    const-string v5, "DefaultCropSize"

    const v10, 0xc620

    invoke-direct {v4, v5, v10, v6, v0}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v5, 0x3a

    aput-object v4, v2, v5

    const/16 v4, 0x1f

    new-array v4, v4, [Lx0/a$c;

    .line 19
    new-instance v5, Lx0/a$c;

    const-string v10, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-direct {v5, v10, v12, v0}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v12

    new-instance v5, Lx0/a$c;

    const-string v10, "GPSLatitudeRef"

    invoke-direct {v5, v10, v0, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v5, v4, v0

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSLatitude"

    invoke-direct {v0, v5, v8, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v8

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSLongitudeRef"

    invoke-direct {v0, v5, v6, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v6

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSAltitudeRef"

    const/4 v10, 0x1

    invoke-direct {v0, v5, v14, v10}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSTimeStamp"

    const/4 v10, 0x7

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSSatellites"

    const/16 v10, 0x8

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSStatus"

    const/16 v10, 0x9

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSMeasureMode"

    const/16 v10, 0xa

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDOP"

    const/16 v10, 0xb

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSSpeedRef"

    const/16 v10, 0xc

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSSpeed"

    const/16 v10, 0xd

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSTrackRef"

    const/16 v10, 0xe

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSTrack"

    const/16 v10, 0xf

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSImgDirectionRef"

    const/16 v10, 0x10

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSImgDirection"

    const/16 v10, 0x11

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSMapDatum"

    const/16 v10, 0x12

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestLatitudeRef"

    const/16 v10, 0x13

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestLatitude"

    const/16 v10, 0x14

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestLongitudeRef"

    const/16 v10, 0x15

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestLongitude"

    const/16 v10, 0x16

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestBearingRef"

    const/16 v10, 0x17

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestBearing"

    const/16 v10, 0x18

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestDistanceRef"

    const/16 v10, 0x19

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDestDistance"

    const/16 v10, 0x1a

    invoke-direct {v0, v5, v10, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSProcessingMethod"

    const/16 v10, 0x1b

    const/4 v12, 0x7

    invoke-direct {v0, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSAreaInformation"

    const/16 v10, 0x1c

    invoke-direct {v0, v5, v10, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDateStamp"

    const/16 v10, 0x1d

    invoke-direct {v0, v5, v10, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    new-instance v0, Lx0/a$c;

    const-string v5, "GPSDifferential"

    const/16 v10, 0x1e

    invoke-direct {v0, v5, v10, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v10

    const/4 v0, 0x1

    new-array v5, v0, [Lx0/a$c;

    .line 20
    new-instance v10, Lx0/a$c;

    const-string v12, "InteroperabilityIndex"

    invoke-direct {v10, v12, v0, v8}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v10, v5, v0

    const/16 v10, 0x25

    new-array v10, v10, [Lx0/a$c;

    .line 21
    new-instance v12, Lx0/a$c;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v6, 0x4

    invoke-direct {v12, v14, v8, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v12, v10, v0

    new-instance v0, Lx0/a$c;

    const-string v8, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v0, v8, v12, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v10, v8

    new-instance v0, Lx0/a$c;

    const-string v8, "ThumbnailImageWidth"

    const/16 v12, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v12, v14, v6}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v10, v8

    new-instance v0, Lx0/a$c;

    const-string v8, "ThumbnailImageLength"

    const/16 v12, 0x101

    invoke-direct {v0, v8, v12, v14, v6}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v0, v10, v14

    new-instance v0, Lx0/a$c;

    const-string v8, "BitsPerSample"

    const/16 v12, 0x102

    invoke-direct {v0, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v6, v8, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x5

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v6, v8, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x6

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v12, 0x2

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x7

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "StripOffsets"

    const/16 v8, 0x111

    const/4 v12, 0x3

    const/4 v14, 0x4

    invoke-direct {v0, v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0xa

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Orientation"

    const/16 v8, 0x112

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v14, 0x4

    invoke-direct {v0, v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0xd

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0xe

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "XResolution"

    const/16 v8, 0x11a

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v12, 0x3

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Software"

    const/16 v8, 0x131

    const/4 v12, 0x2

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v12, 0x4

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v12, 0x3

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v12, 0x5

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "Copyright"

    const v8, 0x8298

    const/4 v12, 0x2

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v12, 0x4

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "DNGVersion"

    const v8, 0xc612

    const/4 v12, 0x1

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v0, v10, v6

    new-instance v0, Lx0/a$c;

    const-string v6, "DefaultCropSize"

    const v8, 0xc620

    const/4 v12, 0x3

    const/4 v14, 0x4

    invoke-direct {v0, v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x24

    aput-object v0, v10, v6

    .line 22
    new-instance v0, Lx0/a$c;

    const-string v6, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v6, v8, v12}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx0/a;->u:Lx0/a$c;

    new-array v0, v12, [Lx0/a$c;

    .line 23
    new-instance v6, Lx0/a$c;

    const-string v8, "ThumbnailImage"

    const/16 v12, 0x100

    const/4 v14, 0x7

    invoke-direct {v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v6, v0, v8

    new-instance v6, Lx0/a$c;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    const/4 v14, 0x4

    invoke-direct {v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v6, v0, v8

    new-instance v6, Lx0/a$c;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v6, v8, v12, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v6, v0, v8

    new-array v6, v8, [Lx0/a$c;

    .line 24
    new-instance v8, Lx0/a$c;

    const-string v12, "PreviewImageStart"

    move-object/from16 v17, v11

    const/16 v11, 0x101

    invoke-direct {v8, v12, v11, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x0

    aput-object v8, v6, v11

    new-instance v8, Lx0/a$c;

    const-string v12, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v12, v11, v14}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x1

    aput-object v8, v6, v11

    new-array v8, v11, [Lx0/a$c;

    .line 25
    new-instance v12, Lx0/a$c;

    const-string v14, "AspectFrame"

    const/16 v11, 0x1113

    move-object/from16 v21, v13

    const/4 v13, 0x3

    invoke-direct {v12, v14, v11, v13}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v11, 0x0

    aput-object v12, v8, v11

    const/4 v12, 0x1

    new-array v14, v12, [Lx0/a$c;

    .line 26
    new-instance v12, Lx0/a$c;

    const-string v11, "ColorSpace"

    move-object/from16 v22, v7

    const/16 v7, 0x37

    invoke-direct {v12, v11, v7, v13}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v12, v14, v7

    const/16 v11, 0xa

    new-array v12, v11, [[Lx0/a$c;

    aput-object v1, v12, v7

    const/4 v7, 0x1

    aput-object v2, v12, v7

    const/4 v2, 0x2

    aput-object v4, v12, v2

    aput-object v5, v12, v13

    const/4 v2, 0x4

    aput-object v10, v12, v2

    const/4 v4, 0x5

    aput-object v1, v12, v4

    const/4 v1, 0x6

    aput-object v0, v12, v1

    const/4 v0, 0x7

    aput-object v6, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v14, v12, v0

    .line 27
    sput-object v12, Lx0/a;->v:[[Lx0/a$c;

    new-array v0, v1, [Lx0/a$c;

    .line 28
    new-instance v1, Lx0/a$c;

    const-string v4, "SubIFDPointer"

    const/16 v5, 0x14a

    invoke-direct {v1, v4, v5, v2}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lx0/a$c;

    const-string v4, "ExifIFDPointer"

    const v5, 0x8769

    invoke-direct {v1, v4, v5, v2}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lx0/a$c;

    const-string v4, "GPSInfoIFDPointer"

    const v5, 0x8825

    invoke-direct {v1, v4, v5, v2}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lx0/a$c;

    const-string v4, "InteroperabilityIFDPointer"

    const v5, 0xa005

    invoke-direct {v1, v4, v5, v2}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lx0/a$c;

    const-string v4, "CameraSettingsIFDPointer"

    const/16 v5, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lx0/a$c;

    const-string v2, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v2, v4, v6}, Lx0/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lx0/a;->w:[Lx0/a$c;

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/util/HashMap;

    .line 29
    sput-object v1, Lx0/a;->x:[Ljava/util/HashMap;

    new-array v0, v0, [Ljava/util/HashMap;

    .line 30
    sput-object v0, Lx0/a;->y:[Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lx0/a;->z:Ljava/util/HashSet;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lx0/a;->A:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 33
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lx0/a;->B:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lx0/a;->C:[B

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 36
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v12, 0x0

    .line 37
    :goto_0
    sget-object v0, Lx0/a;->v:[[Lx0/a$c;

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 38
    sget-object v1, Lx0/a;->x:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v12

    .line 39
    sget-object v1, Lx0/a;->y:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v12

    .line 40
    aget-object v0, v0, v12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 41
    sget-object v5, Lx0/a;->x:[Ljava/util/HashMap;

    aget-object v5, v5, v12

    iget v6, v4, Lx0/a$c;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v5, Lx0/a;->y:[Ljava/util/HashMap;

    aget-object v5, v5, v12

    iget-object v6, v4, Lx0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lx0/a;->A:Ljava/util/HashMap;

    sget-object v1, Lx0/a;->w:[Lx0/a$c;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Lx0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 44
    aget-object v2, v1, v2

    iget v2, v2, Lx0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 45
    aget-object v2, v1, v2

    iget v2, v2, Lx0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 46
    aget-object v2, v1, v2

    iget v2, v2, Lx0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 47
    aget-object v2, v1, v2

    iget v2, v2, Lx0/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 48
    aget-object v1, v1, v2

    iget v1, v1, Lx0/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lx0/a;->v:[[Lx0/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lx0/a;->d:Ljava/util/Set;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    iput-object p1, p0, Lx0/a;->a:Ljava/lang/String;

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p0, v1}, Lx0/a;->m(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p1

    .line 9
    throw p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 10
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception p1

    .line 11
    throw p1

    .line 12
    :catch_3
    :cond_0
    :goto_1
    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Ljava/lang/Object;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, [I

    .line 3
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 1
    invoke-virtual {p0, v0}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 2
    invoke-virtual {p0, v2}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 4
    invoke-static {v0}, Lx0/a$b;->a(Ljava/lang/String;)Lx0/a$b;

    move-result-object v0

    .line 5
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 6
    invoke-virtual {p0, v0}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 8
    invoke-static {v3, v4, v5}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 10
    invoke-virtual {p0, v0}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v3, v4, v5}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 14
    invoke-virtual {p0, v0}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v3, v4, v2}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 18
    invoke-virtual {p0, v0}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {v3, v4, v2}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lx0/a;->d(Ljava/lang/String;)Lx0/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget-object v2, Lx0/a;->z:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lx0/a$b;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget p1, v0, Lx0/a$b;->a:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const-string p1, "GPS Timestamp format is not rational. format="

    .line 6
    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v0, Lx0/a$b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 7
    :cond_1
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lx0/a$d;

    if-eqz p1, :cond_3

    .line 8
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    aget-object v2, p1, v1

    iget-wide v2, v2, Lx0/a$d;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lx0/a$d;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Lx0/a$d;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lx0/a$d;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Lx0/a$d;->a:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Lx0/a$d;->b:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 13
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string v0, "Invalid GPS Timestamp array. array="

    .line 14
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 15
    :cond_4
    :try_start_0
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lx0/a$b;->e(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method public final d(Ljava/lang/String;)Lx0/a$b;
    .locals 2

    const-string v0, "ISOSpeedRatings"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lx0/a;->v:[[Lx0/a$c;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lx0/a$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    iput-object v0, p1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    int-to-long v0, p2

    .line 3
    invoke-virtual {p1, v0, v1}, Lx0/a$a;->k(J)V

    .line 4
    invoke-virtual {p1}, Lx0/a$a;->readByte()B

    move-result v0

    const-string v1, "Invalid marker: "

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 5
    invoke-virtual {p1}, Lx0/a$a;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_10

    add-int/2addr p2, v3

    .line 6
    :goto_0
    invoke-virtual {p1}, Lx0/a$a;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_f

    add-int/2addr p2, v3

    .line 7
    invoke-virtual {p1}, Lx0/a$a;->readByte()B

    move-result v0

    add-int/2addr p2, v3

    const/16 v1, -0x27

    if-eq v0, v1, :cond_e

    const/16 v1, -0x26

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 p2, p2, 0x2

    const-string v4, "Invalid length"

    if-ltz v1, :cond_d

    const/16 v5, -0x1f

    const-string v6, "Invalid exif"

    if-eq v0, v5, :cond_4

    const/4 v5, -0x2

    if-eq v0, v5, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 9
    :pswitch_0
    invoke-virtual {p1, v3}, Lx0/a$a;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 10
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    .line 11
    invoke-virtual {p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v5, v6, v7}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v5

    const-string v6, "ImageLength"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    .line 14
    invoke-virtual {p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 15
    invoke-static {v5, v6, v7}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v5

    const-string v6, "ImageWidth"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x5

    goto :goto_2

    .line 16
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SOFx"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-array v0, v1, [B

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v1, :cond_3

    const-string v1, "UserComment"

    .line 19
    invoke-virtual {p0, v1}, Lx0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 20
    iget-object v5, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lx0/a;->B:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lx0/a$b;->a(Ljava/lang/String;)Lx0/a$b;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x6

    if-ge v1, v0, :cond_5

    goto :goto_2

    :cond_5
    new-array v5, v0, [B

    .line 22
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v0, :cond_c

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v1, v1, -0x6

    .line 23
    sget-object v0, Lx0/a;->C:[B

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    if-lez v1, :cond_b

    .line 24
    iput p2, p0, Lx0/a;->f:I

    .line 25
    new-array v0, v1, [B

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v1, :cond_a

    add-int/2addr p2, v1

    .line 27
    new-instance v5, Lx0/a$a;

    invoke-direct {v5, v0}, Lx0/a$a;-><init>([B)V

    .line 28
    invoke-virtual {p0, v5, v1}, Lx0/a;->n(Lx0/a$a;I)V

    .line 29
    invoke-virtual {p0, v5, p3}, Lx0/a;->p(Lx0/a$a;I)V

    :cond_7
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ltz v1, :cond_9

    .line 30
    invoke-virtual {p1, v1}, Lx0/a$a;->skipBytes(I)I

    move-result v0

    if-ne v0, v1, :cond_8

    add-int/2addr p2, v1

    goto/16 :goto_0

    .line 31
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid JPEG segment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_e
    :goto_3
    iget-object p2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 38
    iput-object p2, p1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    return-void

    .line 39
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid marker:"

    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_10
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_11
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/io/BufferedInputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lx0/a;->o:[B

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 5
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 p1, 0x4

    return p1

    .line 6
    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "FUJIFILMCCD-RAW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 8
    aget-byte v3, v0, v2

    aget-byte v5, v1, v2

    if-eq v3, v5, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_5

    const/16 p1, 0x9

    return p1

    .line 9
    :cond_5
    new-instance v1, Lx0/a$a;

    invoke-direct {v1, v0}, Lx0/a$a;-><init>([B)V

    .line 10
    invoke-virtual {p0, v1}, Lx0/a;->o(Lx0/a$a;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 11
    iput-object v2, v1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    .line 12
    invoke-virtual {v1}, Lx0/a$a;->readShort()S

    move-result v2

    .line 13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/16 v1, 0x4f52

    if-eq v2, v1, :cond_7

    const/16 v1, 0x5352

    if-ne v2, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_8

    const/4 p1, 0x7

    return p1

    .line 14
    :cond_8
    new-instance v1, Lx0/a$a;

    invoke-direct {v1, v0}, Lx0/a$a;-><init>([B)V

    .line 15
    invoke-virtual {p0, v1}, Lx0/a;->o(Lx0/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 16
    iput-object v0, v1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    .line 17
    invoke-virtual {v1}, Lx0/a$a;->readShort()S

    move-result v0

    .line 18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/16 v1, 0x55

    if-ne v0, v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_a

    const/16 p1, 0xa

    :cond_a
    return p1
.end method

.method public final g(Lx0/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lx0/a;->i(Lx0/a$a;)V

    .line 2
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    if-eqz p1, :cond_6

    .line 4
    new-instance v1, Lx0/a$a;

    iget-object p1, p1, Lx0/a$b;->c:[B

    invoke-direct {v1, p1}, Lx0/a$a;-><init>([B)V

    .line 5
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 6
    iput-object p1, v1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    .line 7
    sget-object p1, Lx0/a;->p:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 8
    invoke-virtual {v1, v2}, Lx0/a$a;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 9
    invoke-virtual {v1, v3, v4}, Lx0/a$a;->k(J)V

    .line 10
    sget-object v3, Lx0/a;->q:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 11
    invoke-virtual {v1, v4}, Lx0/a$a;->readFully([B)V

    .line 12
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 13
    invoke-virtual {v1, v2, v3}, Lx0/a$a;->k(J)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 15
    invoke-virtual {v1, v2, v3}, Lx0/a$a;->k(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, v1, p1}, Lx0/a;->p(Lx0/a$a;I)V

    .line 17
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 18
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    .line 19
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 21
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    if-eqz p1, :cond_6

    .line 25
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 26
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 27
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 28
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 29
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 30
    :cond_4
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 31
    invoke-static {v1, p1}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 33
    invoke-static {v2, v0}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "Invalid aspect frame values. frame="

    .line 36
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public final h(Lx0/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 1
    invoke-virtual {p1, v0}, Lx0/a$a;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 3
    invoke-virtual {p1, v0}, Lx0/a$a;->skipBytes(I)I

    .line 4
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 7
    invoke-virtual {p0, p1, v0, v2}, Lx0/a;->e(Lx0/a$a;II)V

    int-to-long v0, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Lx0/a$a;->k(J)V

    .line 9
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    iput-object v0, p1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    .line 11
    invoke-virtual {p1}, Lx0/a$a;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v3

    .line 13
    invoke-virtual {p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v4

    .line 14
    sget-object v5, Lx0/a;->u:Lx0/a$c;

    iget v5, v5, Lx0/a$c;->a:I

    if-ne v3, v5, :cond_0

    .line 15
    invoke-virtual {p1}, Lx0/a$a;->readShort()S

    move-result v0

    .line 16
    invoke-virtual {p1}, Lx0/a$a;->readShort()S

    move-result p1

    .line 17
    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 18
    invoke-static {v0, v2}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {p1, v2}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object p1

    .line 21
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 23
    :cond_0
    invoke-virtual {p1, v4}, Lx0/a$a;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Lx0/a$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lx0/a$a;->available()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lx0/a;->n(Lx0/a$a;I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lx0/a;->p(Lx0/a$a;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lx0/a;->s(Lx0/a$a;I)V

    const/4 v1, 0x5

    .line 4
    invoke-virtual {p0, p1, v1}, Lx0/a;->s(Lx0/a$a;I)V

    const/4 v2, 0x4

    .line 5
    invoke-virtual {p0, p1, v2}, Lx0/a;->s(Lx0/a$a;I)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lx0/a;->r(II)V

    .line 7
    invoke-virtual {p0, v0, v2}, Lx0/a;->r(II)V

    .line 8
    invoke-virtual {p0, v1, v2}, Lx0/a;->r(II)V

    .line 9
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    const-string v4, "PixelXDimension"

    .line 10
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    .line 11
    iget-object v4, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    const-string v5, "PixelYDimension"

    .line 12
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx0/a$b;

    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    .line 13
    iget-object v5, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lx0/a;->l(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, p1, v1

    aput-object v0, p1, v2

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, p1, v1

    .line 19
    :cond_1
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lx0/a;->l(Ljava/util/HashMap;)Z

    .line 20
    iget p1, p0, Lx0/a;->b:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 21
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v0, "MakerNote"

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    if-eqz p1, :cond_2

    .line 23
    new-instance v0, Lx0/a$a;

    iget-object p1, p1, Lx0/a$b;->c:[B

    invoke-direct {v0, p1}, Lx0/a$a;-><init>([B)V

    .line 24
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 25
    iput-object p1, v0, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    const-wide/16 v1, 0x6

    .line 26
    invoke-virtual {v0, v1, v2}, Lx0/a$a;->k(J)V

    const/16 p1, 0x9

    .line 27
    invoke-virtual {p0, v0, p1}, Lx0/a;->p(Lx0/a$a;I)V

    .line 28
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, v0, p1

    const-string v0, "ColorSpace"

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    if-eqz p1, :cond_2

    .line 30
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final j(Lx0/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lx0/a;->i(Lx0/a$a;)V

    .line 2
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lx0/a;->j:I

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v0, v2}, Lx0/a;->e(Lx0/a$a;II)V

    .line 5
    :cond_0
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    .line 7
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final k(Lx0/a$a;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx0/a$b;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 3
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lx0/a$a;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 6
    iget v1, p0, Lx0/a;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 7
    iget v1, p0, Lx0/a;->g:I

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget v1, p0, Lx0/a;->f:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    .line 9
    iget-object v1, p0, Lx0/a;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 10
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 11
    invoke-virtual {p1, v0, v1}, Lx0/a$a;->k(J)V

    .line 12
    invoke-virtual {p1, p2}, Lx0/a$a;->readFully([B)V

    :cond_3
    return-void
.end method

.method public final l(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    const-string v1, "ImageWidth"

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a$b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final m(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    sget-object v2, Lx0/a;->v:[[Lx0/a$c;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {p0, v1}, Lx0/a;->f(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lx0/a;->b:I

    .line 5
    new-instance p1, Lx0/a$a;

    invoke-direct {p1, v1}, Lx0/a$a;-><init>(Ljava/io/InputStream;)V

    .line 6
    iget v1, p0, Lx0/a;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1}, Lx0/a;->j(Lx0/a$a;)V

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0, p1}, Lx0/a;->h(Lx0/a$a;)V

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0, p1}, Lx0/a;->g(Lx0/a$a;)V

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0, p1, v0, v0}, Lx0/a;->e(Lx0/a$a;II)V

    goto :goto_1

    .line 11
    :pswitch_4
    invoke-virtual {p0, p1}, Lx0/a;->i(Lx0/a$a;)V

    .line 12
    :goto_1
    invoke-virtual {p0, p1}, Lx0/a;->q(Lx0/a$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p0}, Lx0/a;->a()V

    throw p1

    :catch_0
    :goto_2
    invoke-virtual {p0}, Lx0/a;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final n(Lx0/a$a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lx0/a;->o(Lx0/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 2
    iput-object v0, p1, Lx0/a$a;->b:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v0

    .line 4
    iget v1, p0, Lx0/a;->b:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid start code: "

    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lx0/a$a;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Lx0/a$a;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t jump to first Ifd: "

    invoke-static {p2, v0}, La6/h;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 9
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid first Ifd offset: "

    invoke-static {p2, v0}, La6/h;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lx0/a$a;)Ljava/nio/ByteOrder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lx0/a$a;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method public final p(Lx0/a$a;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lx0/a;->d:Ljava/util/Set;

    iget v4, v1, Lx0/a$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget v3, v1, Lx0/a$a;->d:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lx0/a$a;->c:I

    if-le v3, v4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readShort()S

    move-result v3

    .line 4
    iget v4, v1, Lx0/a$a;->d:I

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v5, v4

    iget v4, v1, Lx0/a$a;->c:I

    if-gt v5, v4, :cond_2a

    if-gtz v3, :cond_1

    goto/16 :goto_10

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "ExifInterface"

    const/4 v6, 0x4

    if-ge v4, v3, :cond_26

    .line 5
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v7

    .line 6
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readInt()I

    move-result v9

    .line 8
    iget v10, v1, Lx0/a$a;->d:I

    int-to-long v10, v10

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    .line 9
    sget-object v12, Lx0/a;->x:[Ljava/util/HashMap;

    aget-object v12, v12, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lx0/a$c;

    const/4 v13, 0x7

    if-nez v12, :cond_2

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    if-lez v8, :cond_11

    .line 11
    sget-object v15, Lx0/a;->s:[I

    array-length v14, v15

    if-lt v8, v14, :cond_3

    goto/16 :goto_5

    .line 12
    :cond_3
    iget v14, v12, Lx0/a$c;->c:I

    if-eq v14, v13, :cond_c

    if-ne v8, v13, :cond_4

    goto :goto_1

    :cond_4
    if-eq v14, v8, :cond_c

    .line 13
    iget v13, v12, Lx0/a$c;->d:I

    if-ne v13, v8, :cond_5

    goto :goto_1

    :cond_5
    if-eq v14, v6, :cond_6

    if-ne v13, v6, :cond_7

    :cond_6
    const/4 v6, 0x3

    if-ne v8, v6, :cond_7

    goto :goto_1

    :cond_7
    const/16 v6, 0x9

    if-eq v14, v6, :cond_8

    if-ne v13, v6, :cond_9

    :cond_8
    const/16 v6, 0x8

    if-ne v8, v6, :cond_9

    goto :goto_1

    :cond_9
    const/16 v6, 0xc

    if-eq v14, v6, :cond_a

    if-ne v13, v6, :cond_b

    :cond_a
    const/16 v6, 0xb

    if-ne v8, v6, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_d

    const-string v6, "Skip the tag entry since data format ("

    .line 14
    invoke-static {v6}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Lx0/a;->r:[Ljava/lang/String;

    aget-object v13, v13, v8

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") is unexpected for tag: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lx0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v15, v3

    move/from16 v17, v4

    goto :goto_6

    :cond_d
    const/4 v6, 0x7

    if-ne v8, v6, :cond_e

    move v8, v14

    :cond_e
    int-to-long v13, v9

    .line 15
    aget v6, v15, v8

    move v15, v3

    move/from16 v17, v4

    int-to-long v3, v6

    mul-long v3, v3, v13

    const-wide/16 v13, 0x0

    cmp-long v6, v3, v13

    if-ltz v6, :cond_10

    const-wide/32 v13, 0x7fffffff

    cmp-long v6, v3, v13

    if-lez v6, :cond_f

    goto :goto_4

    :cond_f
    const/4 v14, 0x1

    goto :goto_8

    .line 16
    :cond_10
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    :goto_5
    move v15, v3

    move/from16 v17, v4

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-wide/16 v3, 0x0

    :goto_7
    const/4 v14, 0x0

    :goto_8
    if-nez v14, :cond_12

    .line 18
    invoke-virtual {v1, v10, v11}, Lx0/a$a;->k(J)V

    move/from16 v16, v15

    goto/16 :goto_f

    :cond_12
    const-string v6, "Compression"

    const-wide/16 v13, 0x4

    cmp-long v16, v3, v13

    if-lez v16, :cond_18

    .line 19
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readInt()I

    move-result v13

    .line 20
    iget v14, v0, Lx0/a;->b:I

    move/from16 v16, v15

    const/4 v15, 0x7

    if-ne v14, v15, :cond_15

    .line 21
    iget-object v14, v12, Lx0/a$c;->b:Ljava/lang/String;

    const-string v15, "MakerNote"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 22
    iput v13, v0, Lx0/a;->g:I

    goto :goto_9

    :cond_13
    const/4 v14, 0x6

    if-ne v2, v14, :cond_14

    .line 23
    iget-object v14, v12, Lx0/a$c;->b:Ljava/lang/String;

    const-string v15, "ThumbnailImage"

    .line 24
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 25
    iput v13, v0, Lx0/a;->h:I

    .line 26
    iput v9, v0, Lx0/a;->i:I

    .line 27
    iget-object v14, v0, Lx0/a;->e:Ljava/nio/ByteOrder;

    const/4 v15, 0x6

    .line 28
    invoke-static {v15, v14}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v14

    .line 29
    iget v15, v0, Lx0/a;->h:I

    move/from16 v19, v8

    move/from16 v18, v9

    int-to-long v8, v15

    iget-object v15, v0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 30
    invoke-static {v8, v9, v15}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v8

    .line 31
    iget v9, v0, Lx0/a;->i:I

    move-wide/from16 v20, v10

    int-to-long v9, v9

    iget-object v11, v0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 32
    invoke-static {v9, v10, v11}, Lx0/a$b;->b(JLjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v9

    .line 33
    iget-object v10, v0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v10, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v10, v0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v10, v10, v11

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v10, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v8, v0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    const-string v10, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    :goto_9
    move/from16 v19, v8

    move/from16 v18, v9

    move-wide/from16 v20, v10

    goto :goto_a

    :cond_15
    move/from16 v19, v8

    move/from16 v18, v9

    move-wide/from16 v20, v10

    const/16 v8, 0xa

    if-ne v14, v8, :cond_16

    .line 36
    iget-object v8, v12, Lx0/a$c;->b:Ljava/lang/String;

    const-string v9, "JpgFromRaw"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 37
    iput v13, v0, Lx0/a;->j:I

    :cond_16
    :goto_a
    int-to-long v8, v13

    add-long v10, v8, v3

    .line 38
    iget v14, v1, Lx0/a$a;->c:I

    int-to-long v14, v14

    cmp-long v22, v10, v14

    if-gtz v22, :cond_17

    .line 39
    invoke-virtual {v1, v8, v9}, Lx0/a$a;->k(J)V

    move-wide/from16 v10, v20

    goto :goto_b

    .line 40
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v10, v20

    .line 41
    invoke-virtual {v1, v10, v11}, Lx0/a$a;->k(J)V

    goto/16 :goto_f

    :cond_18
    move/from16 v19, v8

    move/from16 v18, v9

    move/from16 v16, v15

    .line 42
    :goto_b
    sget-object v8, Lx0/a;->A:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_1f

    const-wide/16 v3, -0x1

    const/4 v6, 0x3

    move/from16 v8, v19

    if-eq v8, v6, :cond_1c

    const/4 v6, 0x4

    if-eq v8, v6, :cond_1b

    const/16 v6, 0x8

    if-eq v8, v6, :cond_1a

    const/16 v6, 0x9

    if-eq v8, v6, :cond_19

    const/16 v6, 0xd

    if-eq v8, v6, :cond_19

    goto :goto_d

    .line 43
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readInt()I

    move-result v3

    goto :goto_c

    .line 44
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readShort()S

    move-result v3

    goto :goto_c

    .line 45
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->d()J

    move-result-wide v3

    goto :goto_d

    .line 46
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readUnsignedShort()I

    move-result v3

    :goto_c
    int-to-long v3, v3

    :goto_d
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-lez v6, :cond_1e

    .line 47
    iget v6, v1, Lx0/a$a;->c:I

    int-to-long v8, v6

    cmp-long v6, v3, v8

    if-gez v6, :cond_1e

    .line 48
    iget-object v6, v0, Lx0/a;->d:Ljava/util/Set;

    long-to-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 49
    invoke-virtual {v1, v3, v4}, Lx0/a$a;->k(J)V

    .line 50
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lx0/a;->p(Lx0/a$a;I)V

    goto :goto_e

    .line 51
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 52
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_e
    invoke-virtual {v1, v10, v11}, Lx0/a$a;->k(J)V

    goto :goto_f

    :cond_1f
    move/from16 v8, v19

    long-to-int v4, v3

    .line 54
    new-array v3, v4, [B

    .line 55
    invoke-virtual {v1, v3}, Lx0/a$a;->readFully([B)V

    .line 56
    new-instance v4, Lx0/a$b;

    move/from16 v5, v18

    invoke-direct {v4, v8, v5, v3}, Lx0/a$b;-><init>(II[B)V

    .line 57
    iget-object v3, v0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    iget-object v5, v12, Lx0/a$c;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v3, v12, Lx0/a$c;->b:Ljava/lang/String;

    const-string v5, "DNGVersion"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x3

    .line 59
    iput v3, v0, Lx0/a;->b:I

    .line 60
    :cond_20
    iget-object v3, v12, Lx0/a$c;->b:Ljava/lang/String;

    const-string v5, "Make"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v12, Lx0/a$c;->b:Ljava/lang/String;

    const-string v5, "Model"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    iget-object v3, v0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 61
    invoke-virtual {v4, v3}, Lx0/a$b;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PENTAX"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    iget-object v3, v12, Lx0/a$c;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 63
    invoke-virtual {v4, v3}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_24

    :cond_23
    const/16 v3, 0x8

    .line 64
    iput v3, v0, Lx0/a;->b:I

    .line 65
    :cond_24
    iget v3, v1, Lx0/a$a;->d:I

    int-to-long v3, v3

    cmp-long v5, v3, v10

    if-eqz v5, :cond_25

    .line 66
    invoke-virtual {v1, v10, v11}, Lx0/a$a;->k(J)V

    :cond_25
    :goto_f
    add-int/lit8 v4, v17, 0x1

    int-to-short v4, v4

    move/from16 v3, v16

    goto/16 :goto_0

    .line 67
    :cond_26
    iget v2, v1, Lx0/a$a;->d:I

    add-int/lit8 v2, v2, 0x4

    .line 68
    iget v3, v1, Lx0/a$a;->c:I

    if-gt v2, v3, :cond_2a

    .line 69
    invoke-virtual/range {p1 .. p1}, Lx0/a$a;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_29

    .line 70
    iget v6, v1, Lx0/a$a;->c:I

    if-ge v2, v6, :cond_29

    .line 71
    iget-object v6, v0, Lx0/a;->d:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 72
    invoke-virtual {v1, v3, v4}, Lx0/a$a;->k(J)V

    .line 73
    iget-object v2, v0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 74
    invoke-virtual {v0, v1, v3}, Lx0/a;->p(Lx0/a$a;I)V

    goto :goto_10

    .line 75
    :cond_27
    iget-object v2, v0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 76
    invoke-virtual {v0, v1, v3}, Lx0/a;->p(Lx0/a$a;I)V

    goto :goto_10

    .line 77
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 78
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_10
    return-void
.end method

.method public final q(Lx0/a$a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    if-eqz v1, :cond_9

    .line 3
    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Lx0/a;->k(Lx0/a$a;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "BitsPerSample"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 6
    iget-object v5, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 7
    sget-object v5, Lx0/a;->m:[I

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget v6, p0, Lx0/a;->b:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    const-string v6, "PhotometricInterpretation"

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx0/a$b;

    if-eqz v6, :cond_4

    .line 10
    iget-object v7, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 11
    invoke-virtual {v6, v7}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 12
    sget-object v7, Lx0/a;->n:[I

    .line 13
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-ne v6, v3, :cond_4

    .line 14
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    if-eqz v2, :cond_a

    const-string v1, "StripOffsets"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    const-string v2, "StripByteCounts"

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 17
    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 18
    invoke-virtual {v1, v2}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lx0/a;->b(Ljava/lang/Object;)[J

    move-result-object v1

    .line 19
    iget-object v2, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 20
    invoke-virtual {v0, v2}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lx0/a;->b(Ljava/lang/Object;)[J

    move-result-object v0

    const-string v2, "ExifInterface"

    if-nez v1, :cond_6

    const-string p1, "stripOffsets should not be null."

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    const-string p1, "stripByteCounts should not be null."

    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-wide/16 v2, 0x0

    .line 23
    array-length v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_8

    aget-wide v7, v0, v6

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    long-to-int v3, v2

    .line 24
    new-array v2, v3, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 25
    :goto_2
    array-length v7, v1

    if-ge v3, v7, :cond_a

    .line 26
    aget-wide v7, v1, v3

    long-to-int v8, v7

    .line 27
    aget-wide v9, v0, v3

    long-to-int v7, v9

    sub-int/2addr v8, v5

    int-to-long v9, v8

    .line 28
    invoke-virtual {p1, v9, v10}, Lx0/a$a;->k(J)V

    add-int/2addr v5, v8

    .line 29
    new-array v8, v7, [B

    .line 30
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    add-int/2addr v5, v7

    .line 31
    invoke-static {v8, v4, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 32
    :cond_9
    invoke-virtual {p0, p1, v0}, Lx0/a;->k(Lx0/a$a;Ljava/util/HashMap;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final r(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    .line 4
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, p1

    const-string v3, "ImageWidth"

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx0/a$b;

    .line 6
    iget-object v4, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 7
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    .line 8
    iget-object v4, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 9
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx0/a$b;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v4, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 11
    iget-object v4, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 12
    iget-object v4, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 13
    iget-object v4, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_3

    if-ge v2, v3, :cond_3

    .line 14
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 15
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 16
    aput-object v1, v0, p2

    :cond_3
    :goto_0
    return-void
.end method

.method public final s(Lx0/a$a;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    .line 3
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    .line 5
    iget-object v2, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx0/a$b;

    .line 7
    iget-object v3, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx0/a$b;

    .line 9
    iget-object v4, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx0/a$b;

    const-string v5, "ImageWidth"

    const-string v6, "ImageLength"

    if-eqz v0, :cond_5

    .line 11
    iget p1, v0, Lx0/a$b;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_2

    .line 12
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 13
    invoke-virtual {v0, p1}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lx0/a$d;

    if-eqz p1, :cond_1

    .line 14
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v0, v1}, Lx0/a$b;->c(Lx0/a$d;Ljava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v0

    .line 17
    aget-object p1, p1, v2

    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 18
    invoke-static {p1, v1}, Lx0/a$b;->c(Lx0/a$d;Ljava/nio/ByteOrder;)Lx0/a$b;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-static {v7}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v0, p1}, Lx0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 24
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 26
    invoke-static {v0, v1}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v0

    .line 27
    aget p1, p1, v2

    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 28
    invoke-static {p1, v1}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object p1

    .line 29
    :goto_1
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 31
    :cond_4
    :goto_2
    invoke-static {v7}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 34
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 35
    iget-object v0, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 36
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 37
    iget-object v3, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_8

    if-le v1, v2, :cond_8

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 38
    iget-object p1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 39
    invoke-static {v0, p1}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 41
    invoke-static {v1, v0}, Lx0/a$b;->d(ILjava/nio/ByteOrder;)Lx0/a$b;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 44
    :cond_6
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 45
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    .line 46
    iget-object v1, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/a$b;

    if-eqz v0, :cond_7

    if-nez v1, :cond_8

    .line 48
    :cond_7
    iget-object v0, p0, Lx0/a;->c:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/a$b;

    if-eqz v0, :cond_8

    .line 50
    iget-object v1, p0, Lx0/a;->e:Ljava/nio/ByteOrder;

    .line 51
    invoke-virtual {v0, v1}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 52
    invoke-virtual {p0, p1, v0, p2}, Lx0/a;->e(Lx0/a$a;II)V

    :cond_8
    :goto_3
    return-void
.end method
