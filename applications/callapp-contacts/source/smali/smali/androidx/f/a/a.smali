.class public final Landroidx/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/f/a/a$a;,
        Landroidx/f/a/a$c;,
        Landroidx/f/a/a$b;,
        Landroidx/f/a/a$d;
    }
.end annotation


# static fields
.field private static final A:[B

.field private static final B:[B

.field private static final C:[B

.field private static final D:[B

.field private static final E:[B

.field private static final F:[B

.field private static G:Ljava/text/SimpleDateFormat;

.field private static final H:[Landroidx/f/a/a$c;

.field private static final I:[Landroidx/f/a/a$c;

.field private static final J:[Landroidx/f/a/a$c;

.field private static final K:[Landroidx/f/a/a$c;

.field private static final L:[Landroidx/f/a/a$c;

.field private static final M:Landroidx/f/a/a$c;

.field private static final N:[Landroidx/f/a/a$c;

.field private static final O:[Landroidx/f/a/a$c;

.field private static final P:[Landroidx/f/a/a$c;

.field private static final Q:[Landroidx/f/a/a$c;

.field private static final R:[Landroidx/f/a/a$c;

.field private static final S:Landroidx/f/a/a$c;

.field private static final T:Landroidx/f/a/a$c;

.field private static final U:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/f/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final V:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/f/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final W:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final Y:[B

.field public static final a:[I

.field private static final av:Ljava/util/regex/Pattern;

.field private static final aw:Ljava/util/regex/Pattern;

.field public static final b:[I

.field public static final c:[I

.field static final d:[B

.field static final e:[Ljava/lang/String;

.field static final f:[I

.field static final g:[B

.field static final h:[[Landroidx/f/a/a$c;

.field static final i:Ljava/nio/charset/Charset;

.field static final j:[B

.field private static final k:Z

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:[B

.field private static final o:[B

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:[B

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B

.field private static final x:[B

.field private static final y:[B

.field private static final z:[B


# instance fields
.field private Z:Ljava/lang/String;

.field private aa:Ljava/io/FileDescriptor;

.field private ab:Landroid/content/res/AssetManager$AssetInputStream;

.field private ac:I

.field private ad:Z

.field private final ae:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/f/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private af:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/nio/ByteOrder;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:I

.field private al:I

.field private am:[B

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:Z

.field private au:Z


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/f/a/a;->k:Z

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 2230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 2231
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 2233
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v2, v3, v8

    const/16 v10, 0x8

    .line 2231
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    .line 2230
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->l:Ljava/util/List;

    new-array v3, v0, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 2233
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 2234
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v1

    .line 2232
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->m:Ljava/util/List;

    new-array v3, v1, [I

    .line 2873
    fill-array-data v3, :array_0

    sput-object v3, Landroidx/f/a/a;->a:[I

    new-array v3, v4, [I

    aput v0, v3, v6

    .line 2878
    sput-object v3, Landroidx/f/a/a;->b:[I

    new-array v3, v4, [I

    aput v10, v3, v6

    .line 2883
    sput-object v3, Landroidx/f/a/a;->c:[I

    new-array v3, v1, [B

    .line 2935
    fill-array-data v3, :array_1

    sput-object v3, Landroidx/f/a/a;->d:[B

    new-array v3, v0, [B

    .line 2940
    fill-array-data v3, :array_2

    sput-object v3, Landroidx/f/a/a;->n:[B

    new-array v3, v0, [B

    .line 2941
    fill-array-data v3, :array_3

    sput-object v3, Landroidx/f/a/a;->o:[B

    new-array v3, v0, [B

    .line 2942
    fill-array-data v3, :array_4

    sput-object v3, Landroidx/f/a/a;->p:[B

    new-array v3, v7, [B

    .line 2950
    fill-array-data v3, :array_5

    sput-object v3, Landroidx/f/a/a;->q:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    .line 2952
    fill-array-data v12, :array_6

    sput-object v12, Landroidx/f/a/a;->r:[B

    new-array v12, v10, [B

    .line 2968
    fill-array-data v12, :array_7

    sput-object v12, Landroidx/f/a/a;->s:[B

    new-array v12, v0, [B

    .line 2972
    fill-array-data v12, :array_8

    sput-object v12, Landroidx/f/a/a;->t:[B

    new-array v12, v0, [B

    .line 2974
    fill-array-data v12, :array_9

    sput-object v12, Landroidx/f/a/a;->u:[B

    new-array v12, v0, [B

    .line 2976
    fill-array-data v12, :array_a

    sput-object v12, Landroidx/f/a/a;->v:[B

    new-array v12, v0, [B

    .line 2982
    fill-array-data v12, :array_b

    sput-object v12, Landroidx/f/a/a;->w:[B

    new-array v12, v0, [B

    .line 2983
    fill-array-data v12, :array_c

    sput-object v12, Landroidx/f/a/a;->x:[B

    new-array v12, v0, [B

    .line 2985
    fill-array-data v12, :array_d

    sput-object v12, Landroidx/f/a/a;->y:[B

    new-array v12, v1, [B

    .line 2988
    fill-array-data v12, :array_e

    sput-object v12, Landroidx/f/a/a;->z:[B

    .line 2992
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    const-string v3, "VP8X"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->A:[B

    .line 2993
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8L"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->B:[B

    .line 2994
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8 "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->C:[B

    .line 2995
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANIM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->D:[B

    .line 2996
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANMF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->E:[B

    .line 2998
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "XMP "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->F:[B

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

    const-string v29, "IFD"

    .line 3035
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroidx/f/a/a;->e:[Ljava/lang/String;

    const/16 v3, 0xe

    new-array v12, v3, [I

    .line 3040
    fill-array-data v12, :array_f

    sput-object v12, Landroidx/f/a/a;->f:[I

    new-array v12, v10, [B

    .line 3045
    fill-array-data v12, :array_10

    sput-object v12, Landroidx/f/a/a;->g:[B

    const/16 v12, 0x2a

    new-array v12, v12, [Landroidx/f/a/a$c;

    .line 3500
    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v3, v10, v7, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v3, v7, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v4

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v3, v7, v10, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v8

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v3, v7, v10, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v1

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v3, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v0

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "Compression"

    const/16 v10, 0x103

    invoke-direct {v3, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v14

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v3, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v3, v7, v10, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "Make"

    const/16 v10, 0x10f

    invoke-direct {v3, v7, v10, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "Model"

    const/16 v10, 0x110

    invoke-direct {v3, v7, v10, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v10, v7, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xa

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v3, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "SamplesPerPixel"

    const/16 v7, 0x115

    invoke-direct {v3, v10, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "RowsPerStrip"

    const/16 v7, 0x116

    invoke-direct {v3, v10, v7, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xd

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "StripByteCounts"

    const/16 v7, 0x117

    invoke-direct {v3, v10, v7, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xe

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v3, v7, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "YResolution"

    const/16 v7, 0x11b

    invoke-direct {v3, v10, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "PlanarConfiguration"

    const/16 v7, 0x11c

    invoke-direct {v3, v10, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "ResolutionUnit"

    const/16 v7, 0x128

    invoke-direct {v3, v10, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "TransferFunction"

    const/16 v7, 0x12d

    invoke-direct {v3, v10, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "Software"

    const/16 v7, 0x131

    invoke-direct {v3, v10, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "DateTime"

    const/16 v7, 0x132

    invoke-direct {v3, v10, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v3, v7, v10, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v7, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v3, v7, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x17

    aput-object v3, v12, v7

    new-instance v3, Landroidx/f/a/a$c;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v3, v10, v6, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "SubIFDPointer"

    const/16 v10, 0x14a

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v3, v6, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v3, v6, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v3, v6, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v3, v6, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "Copyright"

    const v10, 0x8298

    invoke-direct {v3, v6, v10, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "SensorTopBorder"

    invoke-direct {v3, v6, v0, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v3, v6, v14, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "SensorBottomBorder"

    const/4 v10, 0x6

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "SensorRightBorder"

    const/4 v10, 0x7

    invoke-direct {v3, v6, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "ISO"

    invoke-direct {v3, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "JpgFromRaw"

    const/16 v7, 0x2e

    invoke-direct {v3, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v3, v12, v6

    new-instance v3, Landroidx/f/a/a$c;

    const-string v6, "Xmp"

    const/16 v7, 0x2bc

    invoke-direct {v3, v6, v7, v4}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v3, v12, v6

    sput-object v12, Landroidx/f/a/a;->H:[Landroidx/f/a/a$c;

    const/16 v3, 0x4a

    new-array v3, v3, [Landroidx/f/a/a$c;

    .line 3550
    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v6, v7, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "FNumber"

    const v10, 0x829d

    invoke-direct {v6, v7, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v6, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v8

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v6, v7, v10, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v1

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v6, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v0

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "OECF"

    const v10, 0x8828

    const/4 v4, 0x7

    invoke-direct {v6, v7, v10, v4}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v14

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v6, v7, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v6, v7, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "RecommendedExposureIndex"

    const v7, 0x8832

    invoke-direct {v4, v6, v7, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ISOSpeed"

    const v7, 0x8833

    invoke-direct {v4, v6, v7, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v7, 0x8834

    invoke-direct {v4, v6, v7, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ISOSpeedLatitudezzz"

    const v7, 0x8835

    invoke-direct {v4, v6, v7, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ExifVersion"

    const v7, 0x9000

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "DateTimeOriginal"

    const v7, 0x9003

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "DateTimeDigitized"

    const v7, 0x9004

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "OffsetTime"

    const v7, 0x9010

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "OffsetTimeOriginal"

    const v7, 0x9011

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "OffsetTimeDigitized"

    const v7, 0x9012

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ComponentsConfiguration"

    const v7, 0x9101

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "CompressedBitsPerPixel"

    const v7, 0x9102

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ShutterSpeedValue"

    const v7, 0x9201

    const/16 v10, 0xa

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ApertureValue"

    const v7, 0x9202

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "BrightnessValue"

    const v7, 0x9203

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ExposureBiasValue"

    const v7, 0x9204

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "MaxApertureValue"

    const v7, 0x9205

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubjectDistance"

    const v7, 0x9206

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "MeteringMode"

    const v7, 0x9207

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "LightSource"

    const v7, 0x9208

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "Flash"

    const v7, 0x9209

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FocalLength"

    const v7, 0x920a

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubjectArea"

    const v7, 0x9214

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "MakerNote"

    const v7, 0x927c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "UserComment"

    const v7, 0x9286

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubSecTime"

    const v7, 0x9290

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubSecTimeOriginal"

    const v7, 0x9291

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubSecTimeDigitized"

    const v7, 0x9292

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FlashpixVersion"

    const v7, 0xa000

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ColorSpace"

    const v7, 0xa001

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "PixelXDimension"

    const v7, 0xa002

    invoke-direct {v4, v6, v7, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "PixelYDimension"

    const v7, 0xa003

    invoke-direct {v4, v6, v7, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "RelatedSoundFile"

    const v7, 0xa004

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v4, v6, v7, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FlashEnergy"

    const v7, 0xa20b

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SpatialFrequencyResponse"

    const v7, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FocalPlaneXResolution"

    const v7, 0xa20e

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FocalPlaneYResolution"

    const v7, 0xa20f

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FocalPlaneResolutionUnit"

    const v7, 0xa210

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubjectLocation"

    const v7, 0xa214

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ExposureIndex"

    const v7, 0xa215

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SensingMethod"

    const v7, 0xa217

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FileSource"

    const v7, 0xa300

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SceneType"

    const v7, 0xa301

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "CFAPattern"

    const v7, 0xa302

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "CustomRendered"

    const v7, 0xa401

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ExposureMode"

    const v7, 0xa402

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "WhiteBalance"

    const v7, 0xa403

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "DigitalZoomRatio"

    const v7, 0xa404

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "FocalLengthIn35mmFilm"

    const v7, 0xa405

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SceneCaptureType"

    const v7, 0xa406

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "GainControl"

    const v7, 0xa407

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "Contrast"

    const v7, 0xa408

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "Saturation"

    const v7, 0xa409

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "Sharpness"

    const v7, 0xa40a

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "DeviceSettingDescription"

    const v7, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "SubjectDistanceRange"

    const v7, 0xa40c

    invoke-direct {v4, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "ImageUniqueID"

    const v7, 0xa420

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "CameraOwnerName"

    const v7, 0xa430

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "BodySerialNumber"

    const v7, 0xa431

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "LensSpecification"

    const v7, 0xa432

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "LensMake"

    const v7, 0xa433

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "LensModel"

    const v7, 0xa434

    invoke-direct {v4, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "Gamma"

    const v7, 0xa500

    invoke-direct {v4, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "DNGVersion"

    const v7, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-instance v4, Landroidx/f/a/a$c;

    const-string v6, "DefaultCropSize"

    const v7, 0xc620

    invoke-direct {v4, v6, v7, v1, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v3, v6

    sput-object v3, Landroidx/f/a/a;->I:[Landroidx/f/a/a$c;

    const/16 v4, 0x20

    new-array v4, v4, [Landroidx/f/a/a$c;

    .line 3628
    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v0}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Landroidx/f/a/a$c;

    const-string v7, "GPSLatitudeRef"

    invoke-direct {v6, v7, v0, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v0

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSLatitude"

    invoke-direct {v0, v6, v8, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v8

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v0, v6, v1, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSLongitude"

    const/4 v7, 0x4

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSAltitudeRef"

    const/4 v7, 0x1

    invoke-direct {v0, v6, v14, v7}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSAltitude"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSTimeStamp"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSSatellites"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSStatus"

    const/16 v7, 0x9

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSMeasureMode"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDOP"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSSpeedRef"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSSpeed"

    const/16 v7, 0xd

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSTrack"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSImgDirectionRef"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSImgDirection"

    const/16 v7, 0x11

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSMapDatum"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v7, 0x13

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestLatitude"

    const/16 v7, 0x14

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v7, 0x15

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestLongitude"

    const/16 v7, 0x16

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestBearingRef"

    const/16 v7, 0x17

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestBearing"

    const/16 v7, 0x18

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDestDistance"

    const/16 v7, 0x1a

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSProcessingMethod"

    const/16 v7, 0x1b

    const/4 v10, 0x7

    invoke-direct {v0, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSAreaInformation"

    const/16 v7, 0x1c

    invoke-direct {v0, v6, v7, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDateStamp"

    const/16 v7, 0x1d

    invoke-direct {v0, v6, v7, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSDifferential"

    const/16 v7, 0x1e

    invoke-direct {v0, v6, v7, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v4, v6

    new-instance v0, Landroidx/f/a/a$c;

    const-string v6, "GPSHPositioningError"

    const/16 v7, 0x1f

    invoke-direct {v0, v6, v7, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v4, v6

    sput-object v4, Landroidx/f/a/a;->J:[Landroidx/f/a/a$c;

    const/4 v0, 0x1

    new-array v6, v0, [Landroidx/f/a/a$c;

    .line 3663
    new-instance v7, Landroidx/f/a/a$c;

    const-string v10, "InteroperabilityIndex"

    invoke-direct {v7, v10, v0, v8}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    sput-object v6, Landroidx/f/a/a;->K:[Landroidx/f/a/a$c;

    const/16 v7, 0x25

    new-array v7, v7, [Landroidx/f/a/a$c;

    .line 3667
    new-instance v10, Landroidx/f/a/a$c;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v1, 0x4

    invoke-direct {v10, v14, v8, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v0

    new-instance v0, Landroidx/f/a/a$c;

    const-string v8, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v0, v8, v10, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v7, v8

    new-instance v0, Landroidx/f/a/a$c;

    const-string v8, "ThumbnailImageWidth"

    const/16 v10, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v10, v14, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-instance v0, Landroidx/f/a/a$c;

    const-string v8, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v0, v8, v10, v14, v1}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    aput-object v0, v7, v14

    new-instance v0, Landroidx/f/a/a$c;

    const-string v8, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v0, v8, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v1, v8, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v1, v8, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v1, v8, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v1, v8, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x12

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x13

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "Software"

    const/16 v8, 0x131

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x15

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x17

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x19

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1d

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1e

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1f

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "Copyright"

    const v8, 0x8298

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x21

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x22

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v0, v1, v8, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    aput-object v0, v7, v1

    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x24

    aput-object v0, v7, v1

    sput-object v7, Landroidx/f/a/a;->L:[Landroidx/f/a/a$c;

    .line 3710
    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v1, v8, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/f/a/a;->M:Landroidx/f/a/a$c;

    new-array v0, v14, [Landroidx/f/a/a$c;

    .line 3714
    new-instance v1, Landroidx/f/a/a$c;

    const-string v8, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v14, 0x7

    invoke-direct {v1, v8, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v1, v0, v8

    new-instance v1, Landroidx/f/a/a$c;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v8, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Landroidx/f/a/a$c;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v8, v10, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    sput-object v0, Landroidx/f/a/a;->N:[Landroidx/f/a/a$c;

    new-array v1, v8, [Landroidx/f/a/a$c;

    .line 3719
    new-instance v8, Landroidx/f/a/a$c;

    const-string v10, "PreviewImageStart"

    move-object/from16 v16, v11

    const/16 v11, 0x101

    invoke-direct {v8, v10, v11, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v8, v1, v10

    new-instance v8, Landroidx/f/a/a$c;

    const-string v10, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v10, v11, v14}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v8, v1, v10

    sput-object v1, Landroidx/f/a/a;->O:[Landroidx/f/a/a$c;

    new-array v8, v10, [Landroidx/f/a/a$c;

    .line 3723
    new-instance v11, Landroidx/f/a/a$c;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v20, v13

    const/4 v13, 0x3

    invoke-direct {v11, v14, v10, v13}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v11, v8, v10

    sput-object v8, Landroidx/f/a/a;->P:[Landroidx/f/a/a$c;

    const/4 v11, 0x1

    new-array v14, v11, [Landroidx/f/a/a$c;

    .line 3727
    new-instance v11, Landroidx/f/a/a$c;

    const-string v10, "ColorSpace"

    move-object/from16 v21, v2

    const/16 v2, 0x37

    invoke-direct {v11, v10, v2, v13}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v11, v14, v2

    sput-object v14, Landroidx/f/a/a;->Q:[Landroidx/f/a/a$c;

    const/16 v10, 0xa

    new-array v10, v10, [[Landroidx/f/a/a$c;

    aput-object v12, v10, v2

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    aput-object v6, v10, v13

    const/4 v2, 0x4

    aput-object v7, v10, v2

    const/4 v3, 0x5

    aput-object v12, v10, v3

    const/4 v3, 0x6

    aput-object v0, v10, v3

    const/4 v0, 0x7

    aput-object v1, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    .line 3755
    sput-object v10, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    new-array v0, v3, [Landroidx/f/a/a$c;

    .line 3761
    new-instance v1, Landroidx/f/a/a$c;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v1, v3, v4, v2}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroidx/f/a/a$c;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v3, v4, v2}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroidx/f/a/a$c;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v3, v4, v2}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroidx/f/a/a$c;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v3, v4, v2}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroidx/f/a/a$c;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Landroidx/f/a/a$c;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v3, v4, v6}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sput-object v0, Landroidx/f/a/a;->R:[Landroidx/f/a/a$c;

    .line 3771
    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v0, v1, v3, v2}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/f/a/a;->S:Landroidx/f/a/a$c;

    .line 3773
    new-instance v0, Landroidx/f/a/a$c;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v0, v1, v3, v2}, Landroidx/f/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/f/a/a;->T:Landroidx/f/a/a$c;

    .line 3778
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/f/a/a;->U:[Ljava/util/HashMap;

    .line 3782
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/f/a/a;->V:[Ljava/util/HashMap;

    .line 3784
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v3, "ExposureTime"

    const-string v4, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/f/a/a;->W:Ljava/util/HashSet;

    .line 3789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/f/a/a;->X:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 3796
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/f/a/a;->i:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3798
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/f/a/a;->j:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3801
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/f/a/a;->Y:[B

    .line 3843
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3844
    sput-object v0, Landroidx/f/a/a;->G:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    .line 3847
    :goto_0
    sget-object v0, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    .line 3848
    sget-object v1, Landroidx/f/a/a;->U:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 3849
    sget-object v1, Landroidx/f/a/a;->V:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 3850
    aget-object v0, v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3851
    sget-object v4, Landroidx/f/a/a;->U:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget v6, v3, Landroidx/f/a/a$c;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3852
    sget-object v4, Landroidx/f/a/a;->V:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget-object v6, v3, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3857
    :cond_1
    sget-object v0, Landroidx/f/a/a;->X:Ljava/util/HashMap;

    sget-object v1, Landroidx/f/a/a;->R:[Landroidx/f/a/a$c;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/f/a/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 3858
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/f/a/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 3859
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/f/a/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 3860
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/f/a/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 3861
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/f/a/a$c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 3862
    aget-object v1, v1, v2

    iget v1, v1, Landroidx/f/a/a$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 3894
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/f/a/a;->av:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3897
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/f/a/a;->aw:Ljava/util/regex/Pattern;

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
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_3
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_6
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

    :array_7
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_8
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_b
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_d
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_e
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_f
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

    :array_10
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

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    sget-object v0, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    .line 3872
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/f/a/a;->af:Ljava/util/Set;

    .line 3873
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    const-string v0, "file cannot be null"

    .line 3909
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3911
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/f/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    sget-object v0, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    .line 3872
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/f/a/a;->af:Ljava/util/Set;

    .line 3873
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    const-string v0, "fileDescriptor cannot be null"

    .line 3941
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3943
    iput-object v0, p0, Landroidx/f/a/a;->ab:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3944
    iput-object v0, p0, Landroidx/f/a/a;->Z:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3947
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroidx/f/a/a;->a(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3948
    iput-object p1, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    .line 3953
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3956
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to duplicate file descriptor"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3959
    :cond_0
    iput-object v0, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    .line 3963
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3964
    :try_start_2
    invoke-direct {p0, v2}, Landroidx/f/a/a;->a(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3966
    invoke-static {v2}, Landroidx/f/a/a;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 3968
    invoke-static {p1}, Landroidx/f/a/a;->b(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 3966
    :goto_1
    invoke-static {v2}, Landroidx/f/a/a;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    .line 3968
    invoke-static {p1}, Landroidx/f/a/a;->b(Ljava/io/FileDescriptor;)V

    .line 3970
    :cond_2
    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3983
    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4000
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    sget-object v0, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    .line 3872
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/f/a/a;->af:Ljava/util/Set;

    .line 3873
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    const-string v0, "inputStream cannot be null"

    .line 4006
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4008
    iput-object v0, p0, Landroidx/f/a/a;->Z:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4011
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1388

    invoke-direct {p2, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4012
    move-object p1, p2

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Landroidx/f/a/a;->a(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    .line 4013
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4016
    iput-boolean p1, p0, Landroidx/f/a/a;->ad:Z

    move-object p1, p2

    goto :goto_0

    .line 4020
    :cond_1
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_2

    .line 4021
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroidx/f/a/a;->ab:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4022
    iput-object v0, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4023
    :cond_2
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 4024
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/f/a/a;->a(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4025
    iput-object v0, p0, Landroidx/f/a/a;->ab:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4026
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4028
    :cond_3
    :goto_0
    iput-object v0, p0, Landroidx/f/a/a;->ab:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4029
    iput-object v0, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    .line 4032
    :goto_1
    invoke-direct {p0, p1}, Landroidx/f/a/a;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3870
    sget-object v0, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    .line 3872
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/f/a/a;->af:Ljava/util/Set;

    .line 3873
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    const-string v0, "filename cannot be null"

    .line 3924
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3926
    invoke-direct {p0, p1}, Landroidx/f/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x0

    .line 4631
    :goto_0
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The size of tag group["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4633
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4634
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$b;

    .line 4635
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tagName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tagType: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/f/a/a$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tagValue: \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 4636
    invoke-virtual {v3, v2}, Landroidx/f/a/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7793
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 7800
    :cond_0
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 7801
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    .line 7802
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, p1

    const-string v3, "ImageWidth"

    .line 7803
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/f/a/a$b;

    .line 7804
    iget-object v4, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 7805
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/f/a/a$b;

    .line 7806
    iget-object v4, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 7807
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$b;

    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 7818
    :cond_2
    iget-object v4, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7819
    iget-object v4, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 7820
    iget-object v4, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7821
    iget-object v4, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_5

    if-ge v2, v3, :cond_5

    .line 7825
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 7826
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 7827
    aput-object v1, v0, p2

    goto :goto_2

    .line 7814
    :cond_3
    :goto_0
    sget-boolean p1, Landroidx/f/a/a;->k:Z

    if-eqz p1, :cond_5

    return-void

    .line 7810
    :cond_4
    :goto_1
    sget-boolean p1, Landroidx/f/a/a;->k:Z

    if-eqz p1, :cond_5

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroidx/f/a/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5617
    invoke-virtual {p1}, Landroidx/f/a/a$a;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;I)V

    const/4 v0, 0x0

    .line 5620
    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;I)V

    .line 5623
    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;->d(Landroidx/f/a/a$a;I)V

    const/4 v0, 0x5

    .line 5624
    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;->d(Landroidx/f/a/a$a;I)V

    const/4 v0, 0x4

    .line 5625
    invoke-direct {p0, p1, v0}, Landroidx/f/a/a;->d(Landroidx/f/a/a$a;I)V

    .line 5628
    invoke-direct {p0}, Landroidx/f/a/a;->c()V

    .line 5630
    iget p1, p0, Landroidx/f/a/a;->ac:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 5633
    iget-object p1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5634
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/f/a/a$b;

    if-eqz p1, :cond_0

    .line 5637
    new-instance v1, Landroidx/f/a/a$a;

    iget-object p1, p1, Landroidx/f/a/a$b;->d:[B

    invoke-direct {v1, p1}, Landroidx/f/a/a$a;-><init>([B)V

    .line 5639
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 17504
    iput-object p1, v1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    const-wide/16 v2, 0x6

    .line 5642
    invoke-virtual {v1, v2, v3}, Landroidx/f/a/a$a;->a(J)V

    const/16 p1, 0x9

    .line 5645
    invoke-direct {p0, v1, p1}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;I)V

    .line 5648
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 5649
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/f/a/a$b;

    if-eqz p1, :cond_0

    .line 5651
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Landroidx/f/a/a$a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6588
    invoke-static {p1}, Landroidx/f/a/a;->e(Landroidx/f/a/a$a;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 21504
    iput-object v0, p1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 6593
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v0

    .line 6594
    iget v1, p0, Landroidx/f/a/a;->ac:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6595
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid start code: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6599
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 6605
    invoke-virtual {p1, v0}, Landroidx/f/a/a$a;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 6606
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 6601
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid first Ifd offset: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroidx/f/a/a$a;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 5485
    sget-boolean v4, Landroidx/f/a/a;->k:Z

    if-eqz v4, :cond_0

    .line 5486
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getJpegAttributes starting with: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5490
    :cond_0
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 15504
    iput-object v4, v1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    int-to-long v4, v2

    .line 5493
    invoke-virtual {v1, v4, v5}, Landroidx/f/a/a$a;->a(J)V

    .line 5497
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readByte()B

    move-result v4

    const-string v5, "Invalid marker: "

    const/4 v6, -0x1

    if-ne v4, v6, :cond_10

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .line 5501
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readByte()B

    move-result v8

    const/16 v9, -0x28

    if-ne v8, v9, :cond_f

    add-int/2addr v2, v7

    .line 5506
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readByte()B

    move-result v4

    if-ne v4, v6, :cond_e

    add-int/2addr v2, v7

    .line 5511
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readByte()B

    move-result v4

    .line 5512
    sget-boolean v5, Landroidx/f/a/a;->k:Z

    if-eqz v5, :cond_1

    .line 5513
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found JPEG segment indicator: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v9, v4, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/2addr v2, v7

    const/16 v8, -0x27

    if-eq v4, v8, :cond_d

    const/16 v8, -0x26

    if-eq v4, v8, :cond_d

    .line 5522
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v2, v2, 0x2

    if-eqz v5, :cond_2

    .line 5525
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "JPEG segment: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v9, v4, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (length: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v5, "Invalid length"

    if-ltz v8, :cond_c

    const/16 v9, -0x1f

    const/4 v10, 0x0

    if-eq v4, v9, :cond_8

    const/4 v9, -0x2

    if-eq v4, v9, :cond_4

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    :goto_1
    move v9, v2

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 5588
    :pswitch_0
    invoke-virtual {v1, v7}, Landroidx/f/a/a$a;->skipBytes(I)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 5591
    iget-object v4, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    .line 5592
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 5591
    invoke-static {v9, v10, v11}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v9

    const-string v10, "ImageLength"

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5593
    iget-object v4, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    .line 5594
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 5593
    invoke-static {v9, v10, v11}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v9

    const-string v10, "ImageWidth"

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x5

    goto :goto_1

    .line 5589
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid SOFx"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5563
    :cond_4
    new-array v4, v8, [B

    .line 5564
    invoke-virtual {v1, v4}, Landroidx/f/a/a$a;->read([B)I

    move-result v9

    if-ne v9, v8, :cond_7

    const-string v8, "UserComment"

    .line 5568
    invoke-direct {v0, v8}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 5569
    iget-object v9, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    new-instance v11, Ljava/lang/String;

    sget-object v12, Landroidx/f/a/a;->i:Ljava/nio/charset/Charset;

    invoke-direct {v11, v4, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v11}, Landroidx/f/a/a$b;->a(Ljava/lang/String;)Landroidx/f/a/a$b;

    move-result-object v4

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v9, v2

    :cond_6
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    .line 5565
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5534
    :cond_8
    new-array v4, v8, [B

    .line 5535
    invoke-virtual {v1, v4}, Landroidx/f/a/a$a;->readFully([B)V

    add-int v9, v2, v8

    .line 5539
    sget-object v11, Landroidx/f/a/a;->j:[B

    invoke-static {v4, v11}, Landroidx/f/a/a;->a([B[B)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 5540
    array-length v12, v11

    add-int/2addr v2, v12

    .line 5541
    array-length v11, v11

    invoke-static {v4, v11, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 5544
    iput v2, v0, Landroidx/f/a/a;->ao:I

    .line 5545
    invoke-direct {v0, v4, v3}, Landroidx/f/a/a;->a([BI)V

    goto :goto_2

    .line 5546
    :cond_9
    sget-object v11, Landroidx/f/a/a;->Y:[B

    invoke-static {v4, v11}, Landroidx/f/a/a;->a([B[B)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 5548
    array-length v12, v11

    add-int/2addr v2, v12

    .line 5549
    array-length v11, v11

    invoke-static {v4, v11, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    const-string v8, "Xmp"

    .line 5553
    invoke-direct {v0, v8}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    .line 5554
    iget-object v11, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v11, v11, v10

    new-instance v15, Landroidx/f/a/a$b;

    const/4 v13, 0x1

    array-length v14, v4

    int-to-long v6, v2

    move-object v12, v15

    move-object v2, v15

    move-wide v15, v6

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Landroidx/f/a/a$b;-><init>(IIJ[B)V

    invoke-virtual {v11, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 5556
    iput-boolean v2, v0, Landroidx/f/a/a;->au:Z

    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-ltz v8, :cond_b

    .line 5606
    invoke-virtual {v1, v8}, Landroidx/f/a/a$a;->skipBytes(I)I

    move-result v4

    if-ne v4, v8, :cond_a

    add-int v4, v9, v8

    move v2, v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 5607
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid JPEG segment"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5604
    :cond_b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5529
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5612
    :cond_d
    iget-object v2, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 16504
    iput-object v2, v1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    return-void

    .line 5508
    :cond_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5502
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5498
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

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

.method private a(Landroidx/f/a/a$a;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 6913
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 6915
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/f/a/a$b;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 6918
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6919
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 6921
    iget v1, p0, Landroidx/f/a/a;->ac:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 6923
    iget v1, p0, Landroidx/f/a/a;->ap:I

    add-int/2addr v0, v1

    .line 24723
    :cond_0
    iget v1, p1, Landroidx/f/a/a$a;->b:I

    sub-int/2addr v1, v0

    .line 6926
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez v0, :cond_1

    if-lez p2, :cond_1

    const/4 v1, 0x1

    .line 6929
    iput-boolean v1, p0, Landroidx/f/a/a;->ah:Z

    .line 6931
    iget v1, p0, Landroidx/f/a/a;->ao:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/f/a/a;->ak:I

    .line 6932
    iput p2, p0, Landroidx/f/a/a;->al:I

    .line 6933
    iget-object v2, p0, Landroidx/f/a/a;->Z:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/f/a/a;->ab:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    if-nez v2, :cond_1

    .line 6937
    new-array v2, p2, [B

    int-to-long v3, v1

    .line 6938
    invoke-virtual {p1, v3, v4}, Landroidx/f/a/a$a;->a(J)V

    .line 6939
    invoke-virtual {p1, v2}, Landroidx/f/a/a$a;->readFully([B)V

    .line 6940
    iput-object v2, p0, Landroidx/f/a/a;->am:[B

    .line 6943
    :cond_1
    sget-boolean p1, Landroidx/f/a/a;->k:Z

    if-eqz p1, :cond_2

    .line 6944
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 7838
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 7840
    throw p0

    :catch_1
    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "PhotographicSensitivity"

    const-string v3, "yes"

    const-string v4, "ExifInterface"

    const-string v5, "inputstream shouldn\'t be null"

    .line 4528
    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4532
    :goto_0
    :try_start_0
    sget-object v7, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 4533
    iget-object v7, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4537
    :cond_0
    iget-boolean v6, v1, Landroidx/f/a/a;->ad:Z

    if-nez v6, :cond_8

    .line 4538
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1388

    invoke-direct {v6, v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4539
    move-object v0, v6

    check-cast v0, Ljava/io/BufferedInputStream;

    .line 9245
    invoke-virtual {v0, v9}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v9, v9, [B

    .line 9247
    invoke-virtual {v0, v9}, Ljava/io/BufferedInputStream;->read([B)I

    .line 9248
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 9249
    invoke-static {v9}, Landroidx/f/a/a;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    .line 9251
    :cond_1
    invoke-static {v9}, Landroidx/f/a/a;->b([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    .line 9253
    :cond_2
    invoke-static {v9}, Landroidx/f/a/a;->c([B)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    goto :goto_1

    .line 9255
    :cond_3
    invoke-direct {v1, v9}, Landroidx/f/a/a;->d([B)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_1

    .line 9257
    :cond_4
    invoke-direct {v1, v9}, Landroidx/f/a/a;->e([B)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    goto :goto_1

    .line 9259
    :cond_5
    invoke-static {v9}, Landroidx/f/a/a;->f([B)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xd

    goto :goto_1

    .line 9261
    :cond_6
    invoke-static {v9}, Landroidx/f/a/a;->g([B)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 4539
    :goto_1
    iput v0, v1, Landroidx/f/a/a;->ac:I

    move-object v0, v6

    .line 4543
    :cond_8
    new-instance v6, Landroidx/f/a/a$a;

    invoke-direct {v6, v0}, Landroidx/f/a/a$a;-><init>(Ljava/io/InputStream;)V

    .line 4545
    iget-boolean v0, v1, Landroidx/f/a/a;->ad:Z

    const/4 v10, 0x6

    if-nez v0, :cond_20

    .line 4546
    iget v0, v1, Landroidx/f/a/a;->ac:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "ImageLength"

    const-string v14, "ImageWidth"

    const/4 v15, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 4572
    :pswitch_0
    :try_start_1
    invoke-direct {v1, v6}, Landroidx/f/a/a;->d(Landroidx/f/a/a$a;)V

    goto/16 :goto_9

    .line 4568
    :pswitch_1
    invoke-direct {v1, v6}, Landroidx/f/a/a;->c(Landroidx/f/a/a$a;)V

    goto/16 :goto_9

    .line 9715
    :pswitch_2
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9717
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v0, v15, :cond_9

    .line 9718
    new-instance v0, Landroidx/f/a/a$1;

    invoke-direct {v0, v1, v6}, Landroidx/f/a/a$1;-><init>(Landroidx/f/a/a;Landroidx/f/a/a$a;)V

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    goto :goto_2

    .line 9771
    :cond_9
    iget-object v0, v1, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_a

    .line 9772
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_2

    .line 9773
    :cond_a
    iget-object v0, v1, Landroidx/f/a/a;->Z:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 9774
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_2
    const/16 v0, 0x21

    .line 9780
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x22

    .line 9782
    invoke-virtual {v2, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    const/16 v9, 0x1a

    .line 9784
    invoke-virtual {v2, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    const/16 v7, 0x11

    .line 9786
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 9796
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v16, 0x0

    if-eqz v9, :cond_b

    const/16 v3, 0x1d

    .line 9797
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x1e

    .line 9799
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1f

    .line 9801
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object v9, v7

    move-object v7, v3

    move-object/from16 v3, v16

    goto :goto_4

    .line 9803
    :cond_b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x12

    .line 9804
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x13

    .line 9806
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x18

    .line 9808
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_c
    move-object/from16 v3, v16

    move-object v7, v3

    move-object v9, v7

    :goto_4
    if-eqz v3, :cond_d

    .line 9813
    iget-object v12, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v12, v12, v5

    .line 9814
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v11, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-static {v8, v11}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v8

    .line 9813
    invoke-virtual {v12, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v7, :cond_e

    .line 9818
    iget-object v8, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    .line 9819
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-static {v11, v12}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v11

    .line 9818
    invoke-virtual {v8, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v9, :cond_12

    .line 9826
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v11, 0x5a

    if-eq v8, v11, :cond_11

    const/16 v11, 0xb4

    if-eq v8, v11, :cond_10

    const/16 v11, 0x10e

    if-eq v8, v11, :cond_f

    const/4 v12, 0x1

    goto :goto_5

    :cond_f
    const/16 v12, 0x8

    goto :goto_5

    :cond_10
    const/4 v12, 0x3

    goto :goto_5

    :cond_11
    const/4 v12, 0x6

    .line 9838
    :goto_5
    iget-object v8, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    const-string v11, "Orientation"

    iget-object v13, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 9839
    invoke-static {v12, v13}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v12

    .line 9838
    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz v0, :cond_17

    if-eqz v15, :cond_17

    .line 9843
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 9844
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v10, :cond_16

    int-to-long v11, v0

    .line 9848
    invoke-virtual {v6, v11, v12}, Landroidx/f/a/a$a;->a(J)V

    new-array v11, v10, [B

    .line 9850
    invoke-virtual {v6, v11}, Landroidx/f/a/a$a;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_15

    add-int/2addr v0, v10

    add-int/lit8 v8, v8, -0x6

    .line 9855
    sget-object v12, Landroidx/f/a/a;->j:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 9860
    new-array v11, v8, [B

    .line 9861
    invoke-virtual {v6, v11}, Landroidx/f/a/a$a;->read([B)I

    move-result v12

    if-ne v12, v8, :cond_13

    .line 9865
    iput v0, v1, Landroidx/f/a/a;->ao:I

    .line 9866
    invoke-direct {v1, v11, v5}, Landroidx/f/a/a;->a([BI)V

    goto :goto_6

    .line 9862
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Can\'t read exif"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9856
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid identifier"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9851
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Can\'t read identifier"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9846
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid exif length"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9869
    :cond_17
    :goto_6
    sget-boolean v0, Landroidx/f/a/a;->k:Z

    if-eqz v0, :cond_18

    .line 9870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Heif meta: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rotation "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9873
    :cond_18
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 9874
    throw v0

    .line 10982
    :pswitch_3
    invoke-direct {v1, v6}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;)V

    .line 10985
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v5

    const-string v3, "JpgFromRaw"

    .line 10986
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    if-eqz v0, :cond_19

    .line 10988
    iget v0, v1, Landroidx/f/a/a;->as:I

    invoke-direct {v1, v6, v0, v15}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;II)V

    .line 10992
    :cond_19
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v5

    const-string v3, "ISO"

    .line 10993
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    .line 10994
    iget-object v3, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    .line 10995
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$b;

    if-eqz v0, :cond_21

    if-nez v3, :cond_21

    .line 10998
    iget-object v3, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 4552
    :pswitch_4
    invoke-direct {v1, v6}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;)V

    goto/16 :goto_9

    .line 9900
    :pswitch_5
    invoke-direct {v1, v6}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;)V

    .line 9905
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "MakerNote"

    .line 9906
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    if-eqz v0, :cond_21

    .line 9909
    new-instance v2, Landroidx/f/a/a$a;

    iget-object v0, v0, Landroidx/f/a/a$b;->d:[B

    invoke-direct {v2, v0}, Landroidx/f/a/a$a;-><init>([B)V

    .line 9911
    iget-object v0, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 10504
    iput-object v0, v2, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 9915
    sget-object v0, Landroidx/f/a/a;->q:[B

    array-length v3, v0

    new-array v3, v3, [B

    .line 9916
    invoke-virtual {v2, v3}, Landroidx/f/a/a$a;->readFully([B)V

    const-wide/16 v7, 0x0

    .line 9917
    invoke-virtual {v2, v7, v8}, Landroidx/f/a/a$a;->a(J)V

    .line 9918
    sget-object v7, Landroidx/f/a/a;->r:[B

    array-length v8, v7

    new-array v8, v8, [B

    .line 9919
    invoke-virtual {v2, v8}, Landroidx/f/a/a$a;->readFully([B)V

    .line 9921
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v7, 0x8

    .line 9922
    invoke-virtual {v2, v7, v8}, Landroidx/f/a/a$a;->a(J)V

    goto :goto_7

    .line 9923
    :cond_1a
    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v7, 0xc

    .line 9924
    invoke-virtual {v2, v7, v8}, Landroidx/f/a/a$a;->a(J)V

    .line 9928
    :cond_1b
    :goto_7
    invoke-direct {v1, v2, v10}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;I)V

    .line 9931
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const-string v3, "PreviewImageStart"

    .line 9932
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    .line 9933
    iget-object v3, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    const-string v2, "PreviewImageLength"

    .line 9934
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/f/a/a$b;

    if-eqz v0, :cond_1c

    if-eqz v2, :cond_1c

    .line 9937
    iget-object v3, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    const-string v7, "JPEGInterchangeFormat"

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9939
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v15

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9946
    :cond_1c
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    const-string v2, "AspectFrame"

    .line 9947
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    if-eqz v0, :cond_21

    .line 9949
    iget-object v2, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1f

    .line 9950
    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v2, 0x2

    .line 9955
    aget v3, v0, v2

    aget v7, v0, v5

    if-le v3, v7, :cond_21

    const/4 v3, 0x3

    aget v7, v0, v3

    const/4 v8, 0x1

    aget v9, v0, v8

    if-le v7, v9, :cond_21

    .line 9957
    aget v2, v0, v2

    aget v7, v0, v5

    sub-int/2addr v2, v7

    add-int/2addr v2, v8

    .line 9958
    aget v7, v0, v3

    aget v0, v0, v8

    sub-int/2addr v7, v0

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_1e

    add-int/2addr v2, v7

    sub-int v7, v2, v7

    sub-int/2addr v2, v7

    .line 9965
    :cond_1e
    iget-object v0, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 9966
    invoke-static {v2, v0}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v0

    .line 9967
    iget-object v2, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 9968
    invoke-static {v7, v2}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v2

    .line 9970
    iget-object v3, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9971
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v5

    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 9951
    :cond_1f
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid aspect frame values. frame="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9952
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9951
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4548
    :pswitch_6
    invoke-direct {v1, v6, v5, v5}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;II)V

    goto :goto_9

    .line 4583
    :pswitch_7
    invoke-direct {v1, v6}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;)V

    goto :goto_9

    .line 11878
    :cond_20
    sget-object v0, Landroidx/f/a/a;->j:[B

    array-length v2, v0

    invoke-virtual {v6, v2}, Landroidx/f/a/a$a;->skipBytes(I)I

    .line 11880
    invoke-virtual {v6}, Landroidx/f/a/a$a;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 11881
    invoke-virtual {v6, v2}, Landroidx/f/a/a$a;->readFully([B)V

    .line 11883
    array-length v0, v0

    iput v0, v1, Landroidx/f/a/a;->ao:I

    .line 11884
    invoke-direct {v1, v2, v5}, Landroidx/f/a/a;->a([BI)V

    .line 12882
    :cond_21
    :goto_9
    iget-object v0, v1, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const-string v2, "Compression"

    .line 12885
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/f/a/a$b;

    if-eqz v2, :cond_28

    .line 12887
    iget-object v3, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, v1, Landroidx/f/a/a;->an:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    if-eq v2, v10, :cond_22

    const/4 v3, 0x7

    if-eq v2, v3, :cond_23

    goto :goto_c

    .line 12890
    :cond_22
    invoke-direct {v1, v6, v0}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;Ljava/util/HashMap;)V

    goto :goto_c

    :cond_23
    const-string v2, "BitsPerSample"

    .line 13032
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/f/a/a$b;

    if-eqz v2, :cond_27

    .line 13034
    iget-object v3, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 13036
    sget-object v3, Landroidx/f/a/a;->a:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-eqz v7, :cond_25

    :cond_24
    :goto_a
    const/4 v7, 0x1

    goto :goto_b

    .line 13041
    :cond_25
    iget v7, v1, Landroidx/f/a/a;->ac:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_27

    const-string v7, "PhotometricInterpretation"

    .line 13043
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/f/a/a$b;

    if-eqz v7, :cond_27

    .line 13045
    iget-object v8, v1, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 13046
    invoke-virtual {v7, v8}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_26

    .line 13047
    sget-object v8, Landroidx/f/a/a;->c:[I

    .line 13048
    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_24

    :cond_26
    if-ne v7, v10, :cond_27

    .line 13050
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_a

    :cond_27
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_29

    .line 12896
    invoke-direct {v1, v6, v0}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;Ljava/util/HashMap;)V

    goto :goto_c

    .line 12903
    :cond_28
    iput v10, v1, Landroidx/f/a/a;->an:I

    .line 12904
    invoke-direct {v1, v6, v0}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;Ljava/util/HashMap;)V

    :cond_29
    :goto_c
    const/4 v0, 0x1

    .line 4595
    iput-boolean v0, v1, Landroidx/f/a/a;->at:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4606
    invoke-direct/range {p0 .. p0}, Landroidx/f/a/a;->b()V

    .line 4608
    sget-boolean v0, Landroidx/f/a/a;->k:Z

    if-eqz v0, :cond_2b

    .line 4609
    invoke-direct/range {p0 .. p0}, Landroidx/f/a/a;->a()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_0
    move-exception v0

    .line 4599
    :try_start_4
    iput-boolean v5, v1, Landroidx/f/a/a;->at:Z

    .line 4600
    sget-boolean v2, Landroidx/f/a/a;->k:Z

    if-eqz v2, :cond_2a

    const-string v3, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 4601
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4606
    :cond_2a
    invoke-direct/range {p0 .. p0}, Landroidx/f/a/a;->b()V

    if-eqz v2, :cond_2b

    .line 4609
    invoke-direct/range {p0 .. p0}, Landroidx/f/a/a;->a()V

    :cond_2b
    return-void

    .line 4606
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroidx/f/a/a;->b()V

    .line 4608
    sget-boolean v2, Landroidx/f/a/a;->k:Z

    if-eqz v2, :cond_2c

    .line 4609
    invoke-direct/range {p0 .. p0}, Landroidx/f/a/a;->a()V

    .line 4611
    :cond_2c
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6528
    new-instance v0, Landroidx/f/a/a$a;

    invoke-direct {v0, p1}, Landroidx/f/a/a$a;-><init>([B)V

    .line 6532
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;I)V

    .line 6535
    invoke-direct {p0, v0, p2}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;I)V

    return-void
.end method

.method private static a(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5460
    sget-object v0, Landroidx/f/a/a;->j:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5461
    array-length v0, v0

    new-array v0, v0, [B

    .line 5462
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5463
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 5464
    :goto_0
    sget-object v2, Landroidx/f/a/a;->j:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5465
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/io/FileDescriptor;)Z
    .locals 4

    .line 4615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const-wide/16 v2, 0x0

    .line 4617
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 7067
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    const-string v1, "ImageWidth"

    .line 7068
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/f/a/a$b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7071
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7072
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

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

.method private static a([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5273
    :goto_0
    sget-object v2, Landroidx/f/a/a;->d:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5274
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static a([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7920
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 7923
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 7924
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/Object;)[J
    .locals 4

    .line 7903
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 7904
    check-cast p0, [I

    .line 7905
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 7906
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 7907
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7910
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 7911
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Landroidx/f/a/a$b;
    .locals 2

    const-string v0, "tag shouldn\'t be null"

    .line 4078
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ISOSpeedRatings"

    .line 4081
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 4090
    :goto_0
    sget-object v1, Landroidx/f/a/a;->h:[[Landroidx/f/a/a$c;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4091
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/f/a/a$b;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 6540
    invoke-direct {p0, v0}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 6541
    invoke-direct {p0, v2}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6542
    iget-object v3, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 6543
    invoke-static {v0}, Landroidx/f/a/a$b;->a(Ljava/lang/String;)Landroidx/f/a/a$b;

    move-result-object v0

    .line 6542
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 6547
    invoke-direct {p0, v0}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 6548
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6549
    invoke-static {v3, v4, v5}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v5

    .line 6548
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 6551
    invoke-direct {p0, v0}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6552
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6553
    invoke-static {v3, v4, v5}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v5

    .line 6552
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 6555
    invoke-direct {p0, v0}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6556
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6557
    invoke-static {v3, v4, v2}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v2

    .line 6556
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 6559
    invoke-direct {p0, v0}, Landroidx/f/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 6560
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6561
    invoke-static {v3, v4, v2}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v2

    .line 6560
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private b(Landroidx/f/a/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 5668
    invoke-virtual {p1, v0}, Landroidx/f/a/a$a;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 5671
    invoke-virtual {p1, v1}, Landroidx/f/a/a$a;->read([B)I

    .line 5673
    invoke-virtual {p1, v0}, Landroidx/f/a/a$a;->skipBytes(I)I

    .line 5674
    invoke-virtual {p1, v2}, Landroidx/f/a/a$a;->read([B)I

    .line 5675
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 5676
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 5679
    invoke-direct {p0, p1, v0, v2}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;II)V

    int-to-long v0, v1

    .line 5682
    invoke-virtual {p1, v0, v1}, Landroidx/f/a/a$a;->a(J)V

    .line 5685
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 18504
    iput-object v0, p1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 5686
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5694
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v3

    .line 5695
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v4

    .line 5696
    sget-object v5, Landroidx/f/a/a;->M:Landroidx/f/a/a$c;

    iget v5, v5, Landroidx/f/a/a$c;->a:I

    if-ne v3, v5, :cond_1

    .line 5697
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readShort()S

    move-result v0

    .line 5698
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readShort()S

    move-result p1

    .line 5699
    iget-object v2, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 5700
    invoke-static {v0, v2}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v2

    .line 5701
    iget-object v3, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 5702
    invoke-static {p1, v3}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v3

    .line 5703
    iget-object v4, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v4, v1

    const-string v5, "ImageLength"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5704
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5705
    sget-boolean v1, Landroidx/f/a/a;->k:Z

    if-eqz v1, :cond_0

    .line 5706
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated to length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    .line 5710
    :cond_1
    invoke-virtual {p1, v4}, Landroidx/f/a/a$a;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroidx/f/a/a$a;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    move/from16 v4, p2

    .line 6615
    :goto_0
    iget-object v5, v0, Landroidx/f/a/a;->af:Ljava/util/Set;

    iget v6, v1, Landroidx/f/a/a$a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6617
    iget v5, v1, Landroidx/f/a/a$a;->c:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    iget v7, v1, Landroidx/f/a/a$a;->b:I

    if-le v5, v7, :cond_0

    return-void

    .line 6622
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readShort()S

    move-result v5

    .line 6626
    iget v7, v1, Landroidx/f/a/a$a;->c:I

    mul-int/lit8 v8, v5, 0xc

    add-int/2addr v7, v8

    iget v8, v1, Landroidx/f/a/a$a;->b:I

    if-gt v7, v8, :cond_25

    if-gtz v5, :cond_1

    goto/16 :goto_e

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v8, v5, :cond_21

    .line 6634
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v12

    .line 6635
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v13

    .line 6636
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v15

    .line 21523
    iget v14, v1, Landroidx/f/a/a$a;->c:I

    int-to-long v9, v14

    const-wide/16 v18, 0x4

    add-long v9, v9, v18

    .line 6641
    sget-object v14, Landroidx/f/a/a;->U:[Ljava/util/HashMap;

    aget-object v14, v14, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$c;

    .line 6643
    sget-boolean v14, Landroidx/f/a/a;->k:Z

    if-eqz v14, :cond_3

    new-array v6, v2, [Ljava/lang/Object;

    .line 6645
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v11

    if-eqz v3, :cond_2

    iget-object v2, v3, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/16 v23, 0x2

    aput-object v2, v6, v23

    .line 6646
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v21, 0x3

    aput-object v2, v6, v21

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v20, 0x4

    aput-object v2, v6, v20

    const-string v2, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 6644
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    const/4 v2, 0x7

    if-nez v3, :cond_5

    :cond_4
    :goto_3
    move/from16 v24, v8

    move/from16 v25, v12

    goto :goto_4

    :cond_5
    if-lez v13, :cond_4

    .line 6655
    sget-object v6, Landroidx/f/a/a;->f:[I

    array-length v11, v6

    if-lt v13, v11, :cond_6

    goto :goto_3

    .line 6659
    :cond_6
    invoke-virtual {v3, v13}, Landroidx/f/a/a$c;->a(I)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v14, :cond_4

    .line 6661
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Skip the tag entry since data format ("

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroidx/f/a/a;->e:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is unexpected for tag: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-ne v13, v2, :cond_8

    .line 6667
    iget v13, v3, Landroidx/f/a/a$c;->c:I

    :cond_8
    move/from16 v24, v8

    int-to-long v7, v15

    .line 6669
    aget v6, v6, v13

    move/from16 v25, v12

    int-to-long v11, v6

    mul-long v6, v7, v11

    const-wide/16 v11, 0x0

    cmp-long v8, v6, v11

    if-ltz v8, :cond_a

    const-wide/32 v11, 0x7fffffff

    cmp-long v8, v6, v11

    if-lez v8, :cond_9

    goto :goto_5

    :cond_9
    const/4 v8, 0x1

    goto :goto_6

    :goto_4
    const-wide/16 v6, 0x0

    :cond_a
    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_b

    .line 6680
    invoke-virtual {v1, v9, v10}, Landroidx/f/a/a$a;->a(J)V

    move/from16 v26, v4

    move/from16 v27, v5

    goto/16 :goto_d

    :cond_b
    const-string v8, "Compression"

    cmp-long v11, v6, v18

    if-lez v11, :cond_11

    .line 6687
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v11

    .line 6691
    iget v12, v0, Landroidx/f/a/a;->ac:I

    if-ne v12, v2, :cond_e

    .line 6692
    iget-object v2, v3, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const-string v12, "MakerNote"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6694
    iput v11, v0, Landroidx/f/a/a;->ap:I

    goto :goto_7

    :cond_c
    const/4 v2, 0x6

    if-ne v4, v2, :cond_d

    .line 6695
    iget-object v12, v3, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const-string v2, "ThumbnailImage"

    .line 6696
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6698
    iput v11, v0, Landroidx/f/a/a;->aq:I

    .line 6699
    iput v15, v0, Landroidx/f/a/a;->ar:I

    .line 6701
    iget-object v2, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    const/4 v12, 0x6

    .line 6702
    invoke-static {v12, v2}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v2

    .line 6703
    iget v12, v0, Landroidx/f/a/a;->aq:I

    move/from16 v26, v4

    move/from16 v27, v5

    int-to-long v4, v12

    iget-object v12, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6704
    invoke-static {v4, v5, v12}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v4

    .line 6705
    iget v5, v0, Landroidx/f/a/a;->ar:I

    move/from16 v18, v13

    int-to-long v12, v5

    iget-object v5, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6706
    invoke-static {v12, v13, v5}, Landroidx/f/a/a$b;->a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v5

    .line 6708
    iget-object v12, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-virtual {v12, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6709
    iget-object v2, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, v13

    const-string v12, "JPEGInterchangeFormat"

    invoke-virtual {v2, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6711
    iget-object v2, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, v13

    const-string v4, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    :goto_7
    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v18, v13

    goto :goto_8

    :cond_e
    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v18, v13

    const/16 v2, 0xa

    if-ne v12, v2, :cond_f

    .line 6715
    iget-object v2, v3, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const-string v4, "JpgFromRaw"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6716
    iput v11, v0, Landroidx/f/a/a;->as:I

    :cond_f
    :goto_8
    int-to-long v4, v11

    add-long v11, v4, v6

    .line 6719
    iget v2, v1, Landroidx/f/a/a$a;->b:I

    move-object v13, v3

    int-to-long v2, v2

    cmp-long v19, v11, v2

    if-gtz v19, :cond_10

    .line 6720
    invoke-virtual {v1, v4, v5}, Landroidx/f/a/a$a;->a(J)V

    goto :goto_9

    .line 6726
    :cond_10
    invoke-virtual {v1, v9, v10}, Landroidx/f/a/a$a;->a(J)V

    goto/16 :goto_d

    :cond_11
    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v18, v13

    move-object v13, v3

    .line 6732
    :goto_9
    sget-object v2, Landroidx/f/a/a;->X:Ljava/util/HashMap;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v14, :cond_12

    .line 6734
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nextIfdType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_12
    const/16 v3, 0x8

    if-eqz v2, :cond_1a

    const-wide/16 v4, -0x1

    move/from16 v12, v18

    const/4 v6, 0x3

    if-eq v12, v6, :cond_16

    const/4 v6, 0x4

    if-eq v12, v6, :cond_15

    if-eq v12, v3, :cond_14

    const/16 v3, 0x9

    if-eq v12, v3, :cond_13

    const/16 v3, 0xd

    if-eq v12, v3, :cond_13

    goto :goto_b

    .line 6755
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v3

    goto :goto_a

    .line 6746
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readShort()S

    move-result v3

    goto :goto_a

    .line 6750
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->a()J

    move-result-wide v4

    goto :goto_b

    .line 6742
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v3

    :goto_a
    int-to-long v4, v3

    :goto_b
    const/4 v3, 0x2

    if-eqz v14, :cond_17

    new-array v6, v3, [Ljava/lang/Object;

    .line 6764
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v13, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "Offset: %d, tagName: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_17
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_19

    .line 6770
    iget v6, v1, Landroidx/f/a/a$a;->b:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_19

    .line 6771
    iget-object v6, v0, Landroidx/f/a/a;->af:Ljava/util/Set;

    long-to-int v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 6772
    invoke-virtual {v1, v4, v5}, Landroidx/f/a/a$a;->a(J)V

    .line 6773
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/f/a/a;->b(Landroidx/f/a/a$a;I)V

    goto :goto_c

    :cond_18
    if-eqz v14, :cond_19

    .line 6776
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6786
    :cond_19
    :goto_c
    invoke-virtual {v1, v9, v10}, Landroidx/f/a/a$a;->a(J)V

    goto/16 :goto_d

    :cond_1a
    move/from16 v12, v18

    const/4 v2, 0x2

    .line 22523
    iget v4, v1, Landroidx/f/a/a$a;->c:I

    .line 6790
    iget v5, v0, Landroidx/f/a/a;->ao:I

    add-int/2addr v4, v5

    long-to-int v5, v6

    .line 6791
    new-array v5, v5, [B

    .line 6792
    invoke-virtual {v1, v5}, Landroidx/f/a/a$a;->readFully([B)V

    .line 6793
    new-instance v6, Landroidx/f/a/a$b;

    int-to-long v2, v4

    move-object v14, v6

    move v4, v15

    move v15, v12

    move/from16 v16, v4

    move-wide/from16 v17, v2

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v19}, Landroidx/f/a/a$b;-><init>(IIJ[B)V

    .line 6795
    iget-object v2, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, v26

    iget-object v3, v13, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6800
    iget-object v2, v13, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const-string v3, "DNGVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x3

    .line 6801
    iput v2, v0, Landroidx/f/a/a;->ac:I

    .line 6807
    :cond_1b
    iget-object v2, v13, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const-string v3, "Make"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v13, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    const-string v3, "Model"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    iget-object v2, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6808
    invoke-virtual {v6, v2}, Landroidx/f/a/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PENTAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    iget-object v2, v13, Landroidx/f/a/a$c;->b:Ljava/lang/String;

    .line 6809
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6810
    invoke-virtual {v6, v2}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_1f

    :cond_1e
    const/16 v2, 0x8

    .line 6811
    iput v2, v0, Landroidx/f/a/a;->ac:I

    .line 23523
    :cond_1f
    iget v2, v1, Landroidx/f/a/a$a;->c:I

    int-to-long v2, v2

    cmp-long v4, v2, v9

    if-eqz v4, :cond_20

    .line 6816
    invoke-virtual {v1, v9, v10}, Landroidx/f/a/a$a;->a(J)V

    :cond_20
    :goto_d
    add-int/lit8 v8, v24, 0x1

    int-to-short v8, v8

    move/from16 v4, v26

    move/from16 v5, v27

    const/4 v2, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 24523
    :cond_21
    iget v2, v1, Landroidx/f/a/a$a;->c:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 6820
    iget v3, v1, Landroidx/f/a/a$a;->b:I

    if-gt v2, v3, :cond_25

    .line 6821
    invoke-virtual/range {p1 .. p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v2

    .line 6822
    sget-boolean v3, Landroidx/f/a/a;->k:Z

    if-eqz v3, :cond_22

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 6823
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_22
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_25

    .line 6828
    iget v6, v1, Landroidx/f/a/a$a;->b:I

    if-ge v2, v6, :cond_25

    .line 6829
    iget-object v6, v0, Landroidx/f/a/a;->af:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 6830
    invoke-virtual {v1, v4, v5}, Landroidx/f/a/a$a;->a(J)V

    .line 6831
    iget-object v2, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x5

    const/4 v4, 0x4

    goto/16 :goto_0

    .line 6834
    :cond_23
    iget-object v2, v0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x5

    goto/16 :goto_0

    :cond_24
    if-eqz v3, :cond_25

    :cond_25
    :goto_e
    return-void
.end method

.method private b(Landroidx/f/a/a$a;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    .line 6954
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$b;

    const-string v4, "StripByteCounts"

    .line 6956
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/f/a/a$b;

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 6959
    iget-object v4, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6960
    invoke-virtual {v3, v4}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/f/a/a;->a(Ljava/lang/Object;)[J

    move-result-object v3

    .line 6961
    iget-object v4, v0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6962
    invoke-virtual {v2, v4}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/f/a/a;->a(Ljava/lang/Object;)[J

    move-result-object v2

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_7

    .line 6964
    array-length v5, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_6

    .line 6968
    array-length v5, v2

    if-nez v5, :cond_1

    goto :goto_2

    .line 6972
    :cond_1
    array-length v5, v3

    array-length v6, v2

    if-eq v5, v6, :cond_2

    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 6973
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-wide/16 v4, 0x0

    .line 6978
    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    aget-wide v9, v2, v8

    add-long/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    long-to-int v5, v4

    .line 6984
    new-array v4, v5, [B

    const/4 v6, 0x1

    .line 6988
    iput-boolean v6, v0, Landroidx/f/a/a;->aj:Z

    iput-boolean v6, v0, Landroidx/f/a/a;->ai:Z

    iput-boolean v6, v0, Landroidx/f/a/a;->ah:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6989
    :goto_1
    array-length v11, v3

    if-ge v8, v11, :cond_5

    .line 6990
    aget-wide v11, v3, v8

    long-to-int v12, v11

    .line 6991
    aget-wide v13, v2, v8

    long-to-int v11, v13

    .line 6995
    array-length v13, v3

    sub-int/2addr v13, v6

    if-ge v8, v13, :cond_4

    add-int v13, v12, v11

    int-to-long v13, v13

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, v3, v15

    cmp-long v17, v13, v15

    if-eqz v17, :cond_4

    .line 6997
    iput-boolean v7, v0, Landroidx/f/a/a;->aj:Z

    :cond_4
    sub-int/2addr v12, v9

    int-to-long v13, v12

    .line 7005
    invoke-virtual {v1, v13, v14}, Landroidx/f/a/a$a;->a(J)V

    add-int/2addr v9, v12

    .line 7010
    new-array v12, v11, [B

    .line 7011
    invoke-virtual {v1, v12}, Landroidx/f/a/a$a;->read([B)I

    add-int/2addr v9, v11

    .line 7015
    invoke-static {v12, v7, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7019
    :cond_5
    iput-object v4, v0, Landroidx/f/a/a;->am:[B

    .line 7021
    iget-boolean v1, v0, Landroidx/f/a/a;->aj:Z

    if-eqz v1, :cond_8

    .line 7023
    aget-wide v1, v3, v7

    long-to-int v2, v1

    iget v1, v0, Landroidx/f/a/a;->ao:I

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/f/a/a;->ak:I

    .line 7024
    iput v5, v0, Landroidx/f/a/a;->al:I

    goto :goto_4

    :cond_6
    :goto_2
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 6969
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_3
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 6965
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method

.method private static b(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 7852
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ExifInterface"

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 7854
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Error closing fd."

    .line 7857
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "closeFileDescriptor is called in API < 21, which must be wrong."

    .line 7860
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5288
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "FUJIFILMCCD-RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5289
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5290
    aget-byte v3, p0, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 4110
    invoke-direct {p0, p1}, Landroidx/f/a/a;->b(Ljava/lang/String;)Landroidx/f/a/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 4112
    sget-object v2, Landroidx/f/a/a;->W:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4113
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/f/a/a$b;->c(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4115
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 4117
    iget p1, v0, Landroidx/f/a/a$b;->a:I

    const/4 v4, 0x5

    const-string v5, "ExifInterface"

    if-eq p1, v4, :cond_1

    iget p1, v0, Landroidx/f/a/a$b;->a:I

    const/16 v4, 0xa

    if-eq p1, v4, :cond_1

    .line 4119
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroidx/f/a/a$b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4122
    :cond_1
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/f/a/a$d;

    if-eqz p1, :cond_3

    .line 4123
    array-length v0, p1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 4127
    aget-object v1, p1, v3

    iget-wide v4, v1, Landroidx/f/a/a$d;->a:J

    long-to-float v1, v4

    aget-object v4, p1, v3

    iget-wide v4, v4, Landroidx/f/a/a$d;->b:J

    long-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 4128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, p1, v2

    iget-wide v3, v1, Landroidx/f/a/a$d;->a:J

    long-to-float v1, v3

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroidx/f/a/a$d;->b:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 4129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Landroidx/f/a/a$d;->a:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Landroidx/f/a/a$d;->b:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 4130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 4127
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4124
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4133
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 8333
    invoke-virtual {v0, p1}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 8337
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 8338
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_1

    .line 8340
    :cond_5
    instance-of v0, p1, [J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "There are more than one component"

    if-eqz v0, :cond_7

    .line 8341
    :try_start_1
    check-cast p1, [J

    .line 8342
    array-length v0, p1

    if-ne v0, v2, :cond_6

    .line 8343
    aget-wide v2, p1, v3

    long-to-double v2, v2

    goto :goto_1

    .line 8345
    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8347
    :cond_7
    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    .line 8348
    check-cast p1, [I

    .line 8349
    array-length v0, p1

    if-ne v0, v2, :cond_8

    .line 8350
    aget p1, p1, v3

    int-to-double v2, p1

    goto :goto_1

    .line 8352
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8354
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_b

    .line 8355
    check-cast p1, [D

    .line 8356
    array-length v0, p1

    if-ne v0, v2, :cond_a

    .line 8357
    aget-wide v2, p1, v3

    goto :goto_1

    .line 8359
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8361
    :cond_b
    instance-of v0, p1, [Landroidx/f/a/a$d;

    if-eqz v0, :cond_d

    .line 8362
    check-cast p1, [Landroidx/f/a/a$d;

    .line 8363
    array-length v0, p1

    if-ne v0, v2, :cond_c

    .line 8364
    aget-object p1, p1, v3

    .line 9077
    iget-wide v2, p1, Landroidx/f/a/a$d;->a:J

    long-to-double v2, v2

    iget-wide v4, p1, Landroidx/f/a/a$d;->b:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 4133
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8366
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8368
    :cond_d
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8335
    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_f
    return-object v1
.end method

.method private c()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 7083
    invoke-direct {p0, v0, v1}, Landroidx/f/a/a;->a(II)V

    const/4 v2, 0x4

    .line 7084
    invoke-direct {p0, v0, v2}, Landroidx/f/a/a;->a(II)V

    .line 7085
    invoke-direct {p0, v1, v2}, Landroidx/f/a/a;->a(II)V

    .line 7091
    iget-object v3, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 7092
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$b;

    .line 7093
    iget-object v5, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 7094
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/f/a/a$b;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 7096
    iget-object v5, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7097
    iget-object v3, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7102
    :cond_0
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7103
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroidx/f/a/a;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7104
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v0, v1

    aput-object v3, v0, v2

    .line 7105
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 7110
    :cond_1
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Landroidx/f/a/a;->a(Ljava/util/HashMap;)Z

    return-void
.end method

.method private c(Landroidx/f/a/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6004
    sget-boolean v0, Landroidx/f/a/a;->k:Z

    if-eqz v0, :cond_0

    .line 6005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPngAttributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6011
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 19504
    iput-object v0, p1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 6016
    sget-object v0, Landroidx/f/a/a;->s:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroidx/f/a/a$a;->skipBytes(I)I

    .line 6017
    array-length v0, v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 6031
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v0, v3

    new-array v4, v3, [B

    .line 6035
    invoke-virtual {p1, v4}, Landroidx/f/a/a$a;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v0, v3

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    .line 6042
    sget-object v3, Landroidx/f/a/a;->u:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6043
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6047
    :cond_2
    :goto_1
    sget-object v3, Landroidx/f/a/a;->v:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6050
    sget-object v3, Landroidx/f/a/a;->t:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6052
    new-array v3, v2, [B

    .line 6053
    invoke-virtual {p1, v3}, Landroidx/f/a/a$a;->read([B)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 6059
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readInt()I

    move-result p1

    .line 6061
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 6062
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 6063
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 6064
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v5, v4

    if-ne v5, p1, :cond_3

    .line 6070
    iput v0, p0, Landroidx/f/a/a;->ao:I

    .line 6071
    invoke-direct {p0, v3, v1}, Landroidx/f/a/a;->a([BI)V

    .line 6073
    invoke-direct {p0}, Landroidx/f/a/a;->c()V

    return-void

    .line 6065
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6067
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6054
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6055
    invoke-static {v4}, Landroidx/f/a/a;->h([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/lit8 v2, v2, 0x4

    .line 6077
    invoke-virtual {p1, v2}, Landroidx/f/a/a$a;->skipBytes(I)I

    add-int/2addr v0, v2

    goto/16 :goto_0

    :cond_6
    return-void

    .line 6036
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6084
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Landroidx/f/a/a$a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6861
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 6862
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    .line 6863
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 6864
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/f/a/a$b;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 6868
    :cond_0
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 6869
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    if-eqz v0, :cond_1

    .line 6871
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 6872
    invoke-virtual {v0, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6875
    invoke-direct {p0, p1, v0, p2}, Landroidx/f/a/a;->a(Landroidx/f/a/a$a;II)V

    :cond_1
    return-void
.end method

.method private static c([B)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5300
    :try_start_0
    new-instance v2, Landroidx/f/a/a$a;

    invoke-direct {v2, p0}, Landroidx/f/a/a$a;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5302
    :try_start_1
    invoke-virtual {v2}, Landroidx/f/a/a$a;->readInt()I

    move-result p0

    int-to-long v3, p0

    const/4 p0, 0x4

    new-array v1, p0, [B

    .line 5304
    invoke-virtual {v2, v1}, Landroidx/f/a/a$a;->read([B)I

    .line 5306
    sget-object v5, Landroidx/f/a/a;->n:[B

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 5361
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x10

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x1

    cmp-long v1, v3, v9

    if-nez v1, :cond_1

    .line 5314
    :try_start_2
    invoke-virtual {v2}, Landroidx/f/a/a$a;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 5361
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v0

    :cond_1
    move-wide v5, v7

    :cond_2
    const-wide/16 v11, 0x1388

    cmp-long v1, v3, v11

    if-lez v1, :cond_3

    move-wide v3, v11

    :cond_3
    sub-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-gez v1, :cond_4

    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v0

    :cond_4
    :try_start_3
    new-array v1, p0, [B

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v11, 0x4

    .line 5338
    div-long v11, v3, v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_9

    .line 5339
    invoke-virtual {v2, v1}, Landroidx/f/a/a$a;->read([B)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v11, p0, :cond_5

    .line 5361
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v0

    :cond_5
    cmp-long v11, v5, v9

    if-eqz v11, :cond_8

    .line 5346
    :try_start_4
    sget-object v11, Landroidx/f/a/a;->o:[B

    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    .line 5348
    :cond_6
    sget-object v11, Landroidx/f/a/a;->p:[B

    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_7

    const/4 v8, 0x1

    :cond_7
    :goto_1
    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    .line 5361
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v12

    :cond_8
    add-long/2addr v5, v9

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/f/a/a$a;->close()V

    .line 5364
    :cond_a
    throw p0

    :catch_1
    nop

    :goto_3
    if-eqz v1, :cond_b

    .line 5361
    invoke-virtual {v1}, Landroidx/f/a/a$a;->close()V

    :cond_b
    :goto_4
    return v0
.end method

.method private d(Landroidx/f/a/a$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6092
    sget-boolean v0, Landroidx/f/a/a;->k:Z

    if-eqz v0, :cond_0

    .line 6093
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWebpAttributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6098
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 20504
    iput-object v0, p1, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 6100
    sget-object v0, Landroidx/f/a/a;->w:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroidx/f/a/a$a;->skipBytes(I)I

    .line 6103
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 6105
    sget-object v1, Landroidx/f/a/a;->x:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroidx/f/a/a$a;->skipBytes(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v3, v2, [B

    .line 6120
    invoke-virtual {p1, v3}, Landroidx/f/a/a$a;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_7

    add-int/2addr v1, v2

    .line 6126
    invoke-virtual {p1}, Landroidx/f/a/a$a;->readInt()I

    move-result v4

    add-int/2addr v1, v2

    .line 6129
    sget-object v2, Landroidx/f/a/a;->y:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6131
    new-array v0, v4, [B

    .line 6132
    invoke-virtual {p1, v0}, Landroidx/f/a/a$a;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_1

    .line 6137
    iput v1, p0, Landroidx/f/a/a;->ao:I

    const/4 p1, 0x0

    .line 6138
    invoke-direct {p0, v0, p1}, Landroidx/f/a/a;->a([BI)V

    .line 6141
    iput v1, p0, Landroidx/f/a/a;->ao:I

    return-void

    .line 6133
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6134
    invoke-static {v3}, Landroidx/f/a/a;->h([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6145
    :cond_2
    rem-int/lit8 v2, v4, 0x2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int v2, v1, v4

    if-eq v2, v0, :cond_6

    const-string v3, "Encountered WebP file with invalid chunk size"

    if-gt v2, v0, :cond_5

    .line 6156
    :try_start_1
    invoke-virtual {p1, v4}, Landroidx/f/a/a$a;->skipBytes(I)I

    move-result v2

    if-ne v2, v4, :cond_4

    add-int/2addr v1, v2

    goto :goto_0

    .line 6158
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6152
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void

    .line 6121
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6166
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Landroidx/f/a/a$a;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7128
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 7129
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/f/a/a$b;

    .line 7131
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 7132
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/f/a/a$b;

    .line 7133
    iget-object v2, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 7134
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/f/a/a$b;

    .line 7135
    iget-object v3, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 7136
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/f/a/a$b;

    .line 7137
    iget-object v4, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 7138
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/f/a/a$b;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 7143
    iget p1, v0, Landroidx/f/a/a$b;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_2

    .line 7144
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7145
    invoke-virtual {v0, p1}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/f/a/a$d;

    if-eqz p1, :cond_1

    .line 7146
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 7151
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7152
    invoke-static {v0, v1}, Landroidx/f/a/a$b;->a(Landroidx/f/a/a$d;Ljava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v0

    .line 7153
    aget-object p1, p1, v2

    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7154
    invoke-static {p1, v1}, Landroidx/f/a/a$b;->a(Landroidx/f/a/a$d;Ljava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object p1

    goto :goto_1

    .line 7147
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7148
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7147
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7156
    :cond_2
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7157
    invoke-virtual {v0, p1}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 7158
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 7163
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7164
    invoke-static {v0, v1}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v0

    .line 7165
    aget p1, p1, v2

    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7166
    invoke-static {p1, v1}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object p1

    .line 7168
    :goto_1
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7169
    iget-object v0, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7159
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7160
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7159
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 7173
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 7174
    iget-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7175
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7176
    iget-object v3, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_6

    if-le v1, v2, :cond_6

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 7180
    iget-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7181
    invoke-static {v0, p1}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object p1

    .line 7182
    iget-object v0, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 7183
    invoke-static {v1, v0}, Landroidx/f/a/a$b;->a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object v0

    .line 7184
    iget-object v1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7185
    iget-object p1, p0, Landroidx/f/a/a;->ae:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    .line 7188
    :cond_7
    invoke-direct {p0, p1, p2}, Landroidx/f/a/a;->c(Landroidx/f/a/a$a;I)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "filename cannot be null"

    .line 5185
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5188
    iput-object v0, p0, Landroidx/f/a/a;->ab:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5189
    iput-object p1, p0, Landroidx/f/a/a;->Z:Ljava/lang/String;

    .line 5191
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5192
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroidx/f/a/a;->a(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5193
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 5195
    :cond_0
    iput-object v0, p0, Landroidx/f/a/a;->aa:Ljava/io/FileDescriptor;

    .line 5197
    :goto_0
    invoke-direct {p0, v1}, Landroidx/f/a/a;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5199
    invoke-static {v1}, Landroidx/f/a/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Landroidx/f/a/a;->a(Ljava/io/Closeable;)V

    .line 5200
    throw p1
.end method

.method private d([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5380
    :try_start_0
    new-instance v2, Landroidx/f/a/a$a;

    invoke-direct {v2, p1}, Landroidx/f/a/a$a;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5383
    :try_start_1
    invoke-static {v2}, Landroidx/f/a/a;->e(Landroidx/f/a/a$a;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 13504
    iput-object p1, v2, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 5387
    invoke-virtual {v2}, Landroidx/f/a/a$a;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5393
    :cond_1
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/f/a/a$a;->close()V

    .line 5395
    :cond_2
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_3

    .line 5393
    invoke-virtual {v1}, Landroidx/f/a/a$a;->close()V

    :cond_3
    return v0
.end method

.method private static e(Landroidx/f/a/a$a;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6568
    invoke-virtual {p0}, Landroidx/f/a/a$a;->readShort()S

    move-result p0

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p0, v0, :cond_0

    .line 6579
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    .line 6581
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6574
    :cond_1
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method private e([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5407
    :try_start_0
    new-instance v2, Landroidx/f/a/a$a;

    invoke-direct {v2, p1}, Landroidx/f/a/a$a;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5410
    :try_start_1
    invoke-static {v2}, Landroidx/f/a/a;->e(Landroidx/f/a/a$a;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    .line 14504
    iput-object p1, v2, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 5414
    invoke-virtual {v2}, Landroidx/f/a/a$a;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 5420
    :cond_0
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/f/a/a$a;->close()V

    .line 5422
    :cond_1
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_2

    .line 5420
    invoke-virtual {v1}, Landroidx/f/a/a$a;->close()V

    :cond_2
    return v0
.end method

.method private static f([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5431
    :goto_0
    sget-object v2, Landroidx/f/a/a;->s:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5432
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static g([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5445
    :goto_0
    sget-object v2, Landroidx/f/a/a;->w:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5446
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5450
    :goto_1
    sget-object v2, Landroidx/f/a/a;->x:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 5451
    sget-object v3, Landroidx/f/a/a;->w:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p0, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static h([B)Ljava/lang/String;
    .locals 5

    .line 7932
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 7934
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7936
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    .line 4153
    invoke-direct {p0, p1}, Landroidx/f/a/a;->b(Ljava/lang/String;)Landroidx/f/a/a$b;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 4159
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/f/a/a;->ag:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/f/a/a$b;->b(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
