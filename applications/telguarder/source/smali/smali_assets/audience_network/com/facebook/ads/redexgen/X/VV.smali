.class public final Lcom/facebook/ads/redexgen/X/VV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cc;,
        Lcom/facebook/ads/redexgen/X/Cd;,
        Lcom/facebook/ads/redexgen/X/VW;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0p:[B

.field public static A0q:[Ljava/lang/String;

.field public static final A0r:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0s:Ljava/util/UUID;

.field public static final A0t:[B

.field public static final A0u:[B

.field public static final A0v:[B

.field public static final A0w:[B

.field public static final A0x:[B


# instance fields
.field public A00:B

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:J

.field public A0D:J

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:Lcom/facebook/ads/redexgen/X/CI;

.field public A0O:Lcom/facebook/ads/redexgen/X/Cc;

.field public A0P:Lcom/facebook/ads/redexgen/X/IC;

.field public A0Q:Lcom/facebook/ads/redexgen/X/IC;

.field public A0R:Ljava/nio/ByteBuffer;

.field public A0S:Z

.field public A0T:Z

.field public A0U:Z

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:[I

.field public final A0c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cc;",
            ">;"
        }
    .end annotation
.end field

.field public final A0d:Lcom/facebook/ads/redexgen/X/CY;

.field public final A0e:Lcom/facebook/ads/redexgen/X/Cf;

.field public final A0f:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0g:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0h:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0i:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0j:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0k:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0l:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0m:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0n:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 60403
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VV;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VV;->A06()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VX;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0r:Lcom/facebook/ads/redexgen/X/CJ;

    .line 60404
    const/16 v3, 0x20

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0w:[B

    .line 60405
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0x:[B

    .line 60406
    const/16 v2, 0x21b

    const/16 v1, 0x5a

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0t:[B

    .line 60407
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0u:[B

    .line 60408
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0v:[B

    .line 60409
    const-wide v3, 0x100000000001000L

    const-wide v1, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0s:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 60410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VV;-><init>(I)V

    .line 60411
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 60412
    new-instance v0, Lcom/facebook/ads/redexgen/X/VY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VY;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/VV;-><init>(Lcom/facebook/ads/redexgen/X/CY;I)V

    .line 60413
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CY;I)V
    .locals 4

    .line 60414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60415
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    .line 60416
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0M:J

    .line 60417
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0G:J

    .line 60418
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    .line 60419
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0F:J

    .line 60420
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0J:J

    .line 60421
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0E:J

    .line 60422
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    .line 60423
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/VW;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/VW;-><init>(Lcom/facebook/ads/redexgen/X/VV;Lcom/facebook/ads/redexgen/X/VX;)V

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CY;->A7t(Lcom/facebook/ads/redexgen/X/Ca;)V

    .line 60424
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0o:Z

    .line 60425
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Cf;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    .line 60426
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    .line 60427
    const/4 v2, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    .line 60428
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0n:Lcom/facebook/ads/redexgen/X/IM;

    .line 60429
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    .line 60430
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0i:Lcom/facebook/ads/redexgen/X/IM;

    .line 60431
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    .line 60432
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    .line 60433
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    .line 60434
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    .line 60435
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0g:Lcom/facebook/ads/redexgen/X/IM;

    .line 60436
    return-void

    .line 60437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CS;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    .line 60439
    .local p0, "strippedBytesLeft":I
    if-lez v0, :cond_0

    .line 60440
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60441
    .local p1, "bytesRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {p2, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60442
    .restart local p1    # "bytesRead":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60443
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60444
    return v1

    .line 60445
    .end local p1    # "bytesRead":I
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v1

    goto :goto_0
.end method

.method private A01(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 60446
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 60447
    const-wide/16 v5, 0x3e8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 60448
    :cond_0
    const/16 v2, 0xbd

    const/16 v1, 0x36

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/CP;
    .locals 11

    .line 60449
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    const/4 v8, 0x0

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "yWvgcBSgPtCIgjLs3mOtUOlVnMNoiA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    if-eqz v0, :cond_1

    .line 60450
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    if-eqz v0, :cond_1

    .line 60451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 60452
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/VV;
    .end local v3
    .end local v8
    .end local v1
    .end local v5
    :cond_1
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    .line 60453
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/VV;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    .line 60454
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    return-object v0

    .line 60455
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v7

    .line 60456
    .local p0, "cuePointsSize":I
    new-array v9, v7, [I

    .line 60457
    .local v3, "sizes":[I
    new-array v6, v7, [J

    .line 60458
    .local v8, "offsets":[J
    new-array v5, v7, [J

    .line 60459
    .local v1, "durationsUs":[J
    new-array v4, v7, [J

    .line 60460
    .local v5, "timesUs":[J
    const/4 v10, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v10, v7, :cond_3

    .line 60461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/IC;->A03(I)J

    move-result-wide v0

    aput-wide v0, v4, v10

    .line 60462
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/IC;->A03(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    aput-wide v0, v6, v10

    .line 60463
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 60464
    .end local v0    # "i":I
    :cond_3
    const/4 v10, 0x0

    .restart local v0    # "i":I
    :goto_1
    add-int/lit8 v0, v7, -0x1

    if-ge v10, v0, :cond_4

    .line 60465
    add-int/lit8 v0, v10, 0x1

    aget-wide v0, v6, v0

    aget-wide v2, v6, v10

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, v9, v10

    .line 60466
    add-int/lit8 v0, v10, 0x1

    aget-wide v2, v4, v0

    aget-wide v0, v4, v10

    sub-long/2addr v2, v0

    aput-wide v2, v5, v10

    .line 60467
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 60468
    .end local v0    # "i":I
    :cond_4
    add-int/lit8 v10, v7, -0x1

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0L:J

    add-long/2addr v2, v0

    add-int/lit8 v0, v7, -0x1

    aget-wide v0, v6, v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    aput v0, v9, v10

    .line 60469
    add-int/lit8 v10, v7, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    add-int/lit8 v2, v7, -0x1

    aget-wide v2, v4, v2

    sub-long/2addr v0, v2

    aput-wide v0, v5, v10

    .line 60470
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    .line 60471
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/VV;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    .line 60472
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0, v9, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Vm;-><init>([I[J[J[J)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0p:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04()Ljava/util/UUID;
    .locals 4

    .line 60473
    sget-object v3, Lcom/facebook/ads/redexgen/X/VV;->A0s:Ljava/util/UUID;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "aOi2hXXcfFd8Ve7vo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 1

    .line 60474
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60475
    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60476
    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A09:I

    .line 60477
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0S:Z

    .line 60478
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0X:Z

    .line 60479
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0U:Z

    .line 60480
    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0A:I

    .line 60481
    iput-byte v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:B

    .line 60482
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0T:Z

    .line 60483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 60484
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x40e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0p:[B

    return-void

    :array_0
    .array-data 1
        -0x37t
        0x17t
        0x18t
        0x1dt
        -0x37t
        0x1ct
        0x1et
        0x19t
        0x19t
        0x18t
        0x1bt
        0x1dt
        0xet
        0xdt
        -0x67t
        -0x5ct
        -0x5bt
        -0x28t
        -0x52t
        -0x67t
        -0x5ct
        -0x5at
        -0x28t
        -0x52t
        -0x67t
        -0x5ct
        -0x5at
        -0x28t
        -0x52t
        -0x67t
        -0x5ct
        -0x5at
        -0x28t
        -0x6dt
        -0x62t
        -0x60t
        -0x2et
        -0x58t
        -0x6dt
        -0x62t
        -0x60t
        -0x2et
        -0x58t
        -0x6dt
        -0x62t
        -0x60t
        -0x2et
        -0x66t
        -0x6dt
        -0x62t
        -0x5ft
        -0x2et
        -0x3ct
        -0x38t
        -0x2at
        -0x2at
        -0x18t
        -0x9t
        -0x9t
        -0x14t
        -0xft
        -0x16t
        -0xat
        -0x3at
        -0x14t
        -0xdt
        -0x15t
        -0x18t
        -0xbt
        -0x30t
        -0xet
        -0x19t
        -0x18t
        -0x5dt
        -0x46t
        -0x28t
        -0x46t
        -0x46t
        -0x44t
        -0x20t
        -0x2t
        -0x20t
        -0x1et
        -0x2et
        -0x9t
        0x15t
        -0x6t
        0xat
        0x9t
        -0x46t
        -0x28t
        -0x43t
        -0x33t
        -0x34t
        -0x58t
        -0x42t
        -0x2ft
        -0x37t
        -0x35t
        -0x42t
        -0x34t
        -0x34t
        -0x18t
        0x6t
        -0x15t
        -0x5t
        -0x6t
        -0x2at
        -0xdt
        -0xat
        -0x6t
        -0x6t
        -0xdt
        -0x14t
        -0x6t
        -0x6t
        0x4t
        0x22t
        0x8t
        0x4t
        0x6t
        -0xat
        -0x4ct
        -0x2et
        -0x47t
        -0x41t
        -0x4ct
        -0x4at
        -0x32t
        -0x14t
        -0x26t
        -0x23t
        -0x2et
        -0x2ct
        -0x44t
        -0x27t
        -0x41t
        -0x1dt
        0x1t
        -0x11t
        -0xet
        -0x19t
        -0x17t
        -0x2ft
        -0x12t
        -0x2bt
        -0x5t
        0x19t
        0x7t
        0xdt
        -0x17t
        -0x5t
        -0x3t
        0x7t
        -0x43t
        -0x25t
        -0x35t
        -0x34t
        -0x2ft
        -0x31t
        -0x2et
        -0x10t
        -0x1ft
        -0x2ct
        -0x22t
        -0x40t
        -0x26t
        -0x21t
        -0x1bt
        -0x40t
        -0x23t
        -0x26t
        -0x1bt
        0x6t
        0x24t
        0x19t
        0x17t
        0x1at
        0xat
        0xdt
        0x9t
        0x8t
        0x26t
        0x1dt
        0x16t
        0x19t
        0x9t
        0x10t
        0x1at
        -0x2at
        -0xct
        0x1t
        -0x46t
        0x7t
        -0x4dt
        0x6t
        -0xat
        -0xct
        -0x1t
        -0x8t
        -0x4dt
        0x7t
        -0x4t
        0x0t
        -0x8t
        -0xat
        0x2t
        -0x9t
        -0x8t
        -0x4dt
        0x3t
        0x5t
        -0x4t
        0x2t
        0x5t
        -0x4dt
        0x7t
        0x2t
        -0x4dt
        0x7t
        -0x4t
        0x0t
        -0x8t
        -0xat
        0x2t
        -0x9t
        -0x8t
        -0x1at
        -0xat
        -0xct
        -0x1t
        -0x8t
        -0x4dt
        -0xbt
        -0x8t
        -0x4t
        0x1t
        -0x6t
        -0x4dt
        0x6t
        -0x8t
        0x7t
        -0x3ft
        0x1dt
        0x49t
        0x47t
        0x3ct
        0x43t
        0x48t
        0x43t
        0x48t
        0x41t
        -0x6t
        0x3ft
        0x48t
        0x3dt
        0x4ct
        0x53t
        0x4at
        0x4et
        0x43t
        0x49t
        0x48t
        -0x6t
        0x3bt
        0x48t
        0x3et
        -0x6t
        0x3dt
        0x49t
        0x47t
        0x4at
        0x4ct
        0x3ft
        0x4dt
        0x4dt
        0x43t
        0x49t
        0x48t
        -0x6t
        0x43t
        0x4dt
        -0x6t
        0x48t
        0x49t
        0x4et
        -0x6t
        0x4dt
        0x4ft
        0x4at
        0x4at
        0x49t
        0x4ct
        0x4et
        0x3ft
        0x3et
        0x20t
        0x4ct
        0x4bt
        0x51t
        0x42t
        0x4bt
        0x51t
        0x20t
        0x4ct
        0x4at
        0x4dt
        0x1et
        0x49t
        0x44t
        0x4ct
        -0x3t
        -0x4bt
        -0x1ft
        -0x20t
        -0x1at
        -0x29t
        -0x20t
        -0x1at
        -0x49t
        -0x20t
        -0x2bt
        -0x4dt
        -0x22t
        -0x27t
        -0x1ft
        -0x6et
        -0x3dt
        -0x11t
        -0x12t
        -0xct
        -0x1bt
        -0x12t
        -0xct
        -0x3bt
        -0x12t
        -0x1dt
        -0x11t
        -0x1ct
        -0x17t
        -0x12t
        -0x19t
        -0x31t
        -0xet
        -0x1ct
        -0x1bt
        -0xet
        -0x60t
        -0x4ct
        -0x20t
        -0x21t
        -0x1bt
        -0x2at
        -0x21t
        -0x1bt
        -0x4at
        -0x21t
        -0x2ct
        -0x20t
        -0x2bt
        -0x26t
        -0x21t
        -0x28t
        -0x3ct
        -0x2ct
        -0x20t
        -0x1ft
        -0x2at
        -0x6ft
        0x1at
        0x45t
        0x39t
        0x2at
        0x4ft
        0x46t
        0x3bt
        -0xat
        0x8t
        0x33t
        0x27t
        0x18t
        0x3dt
        0x34t
        0x29t
        0x16t
        0x29t
        0x25t
        0x28t
        0x1at
        0x29t
        0x36t
        0x37t
        0x2dt
        0x33t
        0x32t
        -0x1ct
        -0x37t
        -0x3at
        -0x2ft
        -0x30t
        -0x5ct
        -0x10t
        -0x1bt
        -0x19t
        -0x13t
        -0xet
        -0x15t
        -0x5ct
        -0x9t
        -0x1bt
        -0xft
        -0xct
        -0x10t
        -0x17t
        -0x5ct
        -0x9t
        -0x13t
        -0x2t
        -0x17t
        -0x5ct
        -0xdt
        -0x7t
        -0x8t
        -0x5ct
        -0xdt
        -0x16t
        -0x5ct
        -0xat
        -0x1bt
        -0xet
        -0x15t
        -0x17t
        -0x4et
        -0x17t
        -0x1at
        -0xft
        -0x10t
        -0xat
        0x9t
        0x5t
        0x8t
        -0x6t
        0x9t
        0x16t
        0x17t
        0xdt
        0x13t
        0x12t
        -0x3ct
        0x1bt
        0x44t
        0x39t
        0x48t
        0x4ft
        0x46t
        0x4at
        0x3bt
        0x3at
        -0xat
        0x2at
        0x48t
        0x37t
        0x39t
        0x41t
        -0xat
        0x3ct
        0x45t
        0x4bt
        0x44t
        0x3at
        -0xat
        0x38t
        0x4bt
        0x4at
        -0xat
        0x19t
        0x45t
        0x44t
        0x4at
        0x3bt
        0x44t
        0x4at
        0x1bt
        0x44t
        0x39t
        0x21t
        0x3bt
        0x4ft
        0x1ft
        0x1at
        -0xat
        0x4dt
        0x37t
        0x49t
        -0xat
        0x44t
        0x45t
        0x4at
        -0xat
        0x3ct
        0x45t
        0x4bt
        0x44t
        0x3at
        -0x20t
        0x13t
        0xft
        0x0t
        0x9t
        0xet
        0x4t
        0xat
        0x9t
        -0x45t
        -0x3t
        0x4t
        0xft
        -0x45t
        0x4t
        0xet
        -0x45t
        0xet
        0x0t
        0xft
        -0x45t
        0x4t
        0x9t
        -0x45t
        0xet
        0x4t
        0x2t
        0x9t
        -0x4t
        0x7t
        -0x45t
        -0x3t
        0x14t
        0xft
        0x0t
        0x6t
        0x2ft
        0x32t
        0x2dt
        0x21t
        0x34t
        -0x6t
        -0x20t
        0x13t
        0x34t
        0x21t
        0x32t
        0x34t
        -0x14t
        -0x20t
        0x5t
        0x2et
        0x24t
        -0x14t
        -0x20t
        0x12t
        0x25t
        0x21t
        0x24t
        0xft
        0x32t
        0x24t
        0x25t
        0x32t
        -0x14t
        -0x20t
        0xct
        0x21t
        0x39t
        0x25t
        0x32t
        -0x14t
        -0x20t
        0x13t
        0x34t
        0x39t
        0x2ct
        0x25t
        -0x14t
        -0x20t
        0xet
        0x21t
        0x2dt
        0x25t
        -0x14t
        -0x20t
        0xdt
        0x21t
        0x32t
        0x27t
        0x29t
        0x2et
        0xct
        -0x14t
        -0x20t
        0xdt
        0x21t
        0x32t
        0x27t
        0x29t
        0x2et
        0x12t
        -0x14t
        -0x20t
        0xdt
        0x21t
        0x32t
        0x27t
        0x29t
        0x2et
        0x16t
        -0x14t
        -0x20t
        0x5t
        0x26t
        0x26t
        0x25t
        0x23t
        0x34t
        -0x14t
        -0x20t
        0x14t
        0x25t
        0x38t
        0x34t
        0x2at
        0x3ft
        0x41t
        0x47t
        0x4ct
        0x45t
        -0x2t
        0x4dt
        0x4ct
        0x4at
        0x57t
        -0x2t
        0x51t
        0x53t
        0x4et
        0x4et
        0x4dt
        0x50t
        0x52t
        0x43t
        0x42t
        -0x2t
        0x47t
        0x4ct
        -0x2t
        0x31t
        0x47t
        0x4bt
        0x4et
        0x4at
        0x43t
        0x20t
        0x4at
        0x4dt
        0x41t
        0x49t
        0x51t
        0xct
        0x16t
        0x2at
        0x37t
        0x2dt
        0x2at
        0x3dt
        0x38t
        0x3bt
        0x42t
        -0x17t
        0x2et
        0x35t
        0x2et
        0x36t
        0x2et
        0x37t
        0x3dt
        -0x17t
        0x1ct
        0x2et
        0x2et
        0x34t
        0x12t
        0xdt
        -0x17t
        0x38t
        0x3bt
        -0x17t
        0x1ct
        0x2et
        0x2et
        0x34t
        0x19t
        0x38t
        0x3ct
        0x32t
        0x3dt
        0x32t
        0x38t
        0x37t
        -0x17t
        0x37t
        0x38t
        0x3dt
        -0x17t
        0x2ft
        0x38t
        0x3et
        0x37t
        0x2dt
        -0x49t
        -0x21t
        -0x2at
        -0x22t
        -0x2dt
        -0x26t
        -0x2at
        -0x31t
        -0x76t
        -0x43t
        -0x31t
        -0x2ft
        -0x29t
        -0x31t
        -0x28t
        -0x22t
        -0x76t
        -0x31t
        -0x2at
        -0x31t
        -0x29t
        -0x31t
        -0x28t
        -0x22t
        -0x23t
        -0x76t
        -0x28t
        -0x27t
        -0x22t
        -0x76t
        -0x23t
        -0x21t
        -0x26t
        -0x26t
        -0x27t
        -0x24t
        -0x22t
        -0x31t
        -0x32t
        -0x13t
        0xet
        -0x41t
        0x15t
        0x0t
        0xbt
        0x8t
        0x3t
        -0x41t
        0x13t
        0x11t
        0x0t
        0x2t
        0xat
        0x12t
        -0x41t
        0x16t
        0x4t
        0x11t
        0x4t
        -0x41t
        0x5t
        0xet
        0x14t
        0xdt
        0x3t
        -0x45t
        -0x24t
        -0x73t
        -0x1dt
        -0x32t
        -0x27t
        -0x2at
        -0x2ft
        -0x73t
        -0x1dt
        -0x32t
        -0x21t
        -0x2at
        -0x25t
        -0x1ft
        -0x73t
        -0x27t
        -0x2et
        -0x25t
        -0x2ct
        -0x1ft
        -0x2bt
        -0x73t
        -0x26t
        -0x32t
        -0x20t
        -0x28t
        -0x73t
        -0x2dt
        -0x24t
        -0x1et
        -0x25t
        -0x2ft
        -0x32t
        -0x26t
        -0x41t
        -0x2ft
        -0x43t
        -0x32t
        -0x30t
        -0x43t
        -0x1dt
        -0x11t
        -0x28t
        -0x2ct
        -0x23t
        -0x1at
        -0x41t
        -0x20t
        -0x29t
        -0x1dt
        -0x22t
        -0x16t
        -0x21t
        -0x30t
        -0x1dt
        -0x21t
        -0x46t
        -0x34t
        -0x22t
        -0x22t
        -0x2dt
        -0x21t
        -0x2ct
        -0x3bt
        -0x28t
        -0x2ct
        -0x51t
        -0x2bt
        -0x2ct
        -0x3at
        -0x48t
        -0x18t
        -0xct
        -0x15t
        -0x1ct
        -0x29t
        -0x18t
        -0x16t
        -0x29t
        0x2at
        0x43t
        0x3at
        0x4dt
        0x45t
        0x3at
        0x38t
        0x49t
        0x3at
        0x39t
        -0xbt
        0x3et
        0x39t
        0xft
        -0xbt
        -0x20t
        -0x7t
        -0x10t
        0x3t
        -0x5t
        -0x10t
        -0x12t
        -0x1t
        -0x10t
        -0x11t
        -0x55t
        -0x9t
        -0x14t
        -0x12t
        -0xct
        -0x7t
        -0xet
        -0x55t
        0x1t
        -0x14t
        -0x9t
        0x0t
        -0x10t
        -0x3bt
        -0x55t
        -0x34t
        -0x2bt
        -0x3dt
        -0x3at
        -0x45t
        -0x43t
        -0x58t
        0x34t
        0x3dt
        0x2bt
        0x2et
        0x23t
        0x25t
        0x12t
        0xdt
        0x27t
        0x31t
        0x2dt
        0xdt
        0x1ft
        0x2et
        -0x1at
        -0x11t
        -0x23t
        -0x20t
        -0x2bt
        -0x29t
        -0x3ct
        -0x41t
        -0x27t
        -0x1dt
        -0x21t
        -0x41t
        -0x2ft
        -0x1dt
        -0x20t
        0x31t
        0x3at
        0x28t
        0x2bt
        0x20t
        0x22t
        0xft
        0xat
        0x24t
        0x2et
        0x2at
        0xat
        0x1ct
        0x31t
        0x1et
        0x1t
        0xat
        -0x8t
        -0x5t
        -0x10t
        -0xet
        -0x21t
        -0x26t
        -0xct
        -0x2t
        -0x6t
        -0x26t
        -0x2t
        -0x5t
        -0xct
        -0x3t
        -0x15t
        -0x12t
        -0x1dt
        -0x1bt
        -0x1at
        -0x33t
        -0x19t
        -0xft
        -0x13t
        -0x33t
        -0x1at
        -0x1dt
        -0xct
        -0x1ft
        -0x37t
        -0x2et
        -0x40t
        -0x3at
        -0x5et
        -0x37t
        -0x47t
        -0x36t
        -0x5et
        -0x47t
        -0x3et
        -0x38t
        -0x3bt
        -0x4at
        -0x4at
        0x9t
        0x12t
        0x7t
        -0x5t
        -0x8t
        0x2t
        0x5t
        -0xct
        0x23t
        0x2ct
        0x23t
        0x1dt
        0x5t
        0x2at
        0x33t
        0x2at
        0x24t
        0xdt
        0x45t
        0x39t
        0x4ct
        0x4at
        0x47t
        0x4bt
        0x43t
        0x39t
        0x4bt
        0x3et
        0x39t
        0x3at
        0x44t
        0x4t
        0x4ct
        0x3at
        0x37t
        0x42t
        0x42t
        0x30t
        0x2dt
        0x38t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yd8zBPkfUppfKykv9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nmfYCymoxKedIhgboJY16TCST0zYxU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yHHhospfePmAFniZdkn0mmqXY4x1uwso"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ouYsjPHtlXmhlZaCfdwmH3AYr5QWmB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KANeMlJuaItnqC1v"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/CH;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 60486
    return-void

    .line 60487
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 60488
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 60489
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    .line 60490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    .line 60491
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 60492
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    sub-int v0, p2, v0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 60494
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Cc;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60495
    move-object v4, p0

    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x34b

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60496
    sget-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0w:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/VV;->A0A(Lcom/facebook/ads/redexgen/X/CH;[BI)V

    .line 60497
    return-void

    .line 60498
    :cond_0
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x341

    const/16 v1, 0xa

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60499
    sget-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0u:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/VV;->A0A(Lcom/facebook/ads/redexgen/X/CH;[BI)V

    .line 60500
    return-void

    .line 60501
    :cond_1
    iget-object v5, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    .line 60502
    .local v4, "output":Lcom/facebook/ads/redexgen/X/CS;
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0S:Z

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_14

    .line 60503
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    if-eqz v0, :cond_f

    .line 60504
    iget v8, v4, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr v8, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "bXCDBuKIFvXRfcwuQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput v8, v4, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    .line 60505
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0X:Z

    const/16 v9, 0x80

    if-nez v0, :cond_3

    .line 60506
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v6, v3}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60507
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60508
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v6

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_15

    .line 60509
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v6

    iput-byte v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A00:B

    .line 60510
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/VV;->A0X:Z

    .line 60511
    :cond_3
    iget-byte v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A00:B

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_b

    const/4 v0, 0x1

    .line 60512
    .local p1, "isEncrypted":Z
    :goto_1
    if-eqz v0, :cond_11

    .line 60513
    iget-byte v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A00:B

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_a

    const/4 v8, 0x1

    .line 60514
    .local v0, "hasSubsampleEncryption":Z
    :goto_2
    iget v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    .line 60515
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0T:Z

    if-nez v0, :cond_4

    .line 60516
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v6, v2}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60517
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    add-int/2addr v0, v2

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60518
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/VV;->A0T:Z

    .line 60519
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-eqz v8, :cond_9

    :goto_3
    or-int/2addr v9, v2

    int-to-byte v0, v9

    aput-byte v0, v1, v6

    .line 60520
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60521
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60522
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60523
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60524
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v5, v0, v2}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60525
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    add-int/2addr v0, v2

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60526
    :cond_4
    if-eqz v8, :cond_11

    .line 60527
    iget-boolean v8, v4, Lcom/facebook/ads/redexgen/X/VV;->A0U:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "nS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "cz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v8, :cond_5

    .line 60528
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v6, v3}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60529
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60530
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60531
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0A:I

    .line 60532
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/VV;->A0U:Z

    .line 60533
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0A:I

    mul-int/lit8 v1, v0, 0x4

    .line 60534
    .local v1, "samplePartitionDataSize":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 60535
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60536
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60537
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0A:I

    div-int/2addr v0, v7

    add-int/2addr v0, v3

    int-to-short v1, v0

    .line 60538
    .local v0, "subsampleCount":S
    mul-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v7

    .line 60539
    .local v0, "subsampleDataSize":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 60540
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 60541
    :cond_6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    .line 60542
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60543
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "qUiin1iUdltuUwVl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "10uCFeOer02PBnpcWDkbrNbL8yK0xB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v8, :cond_5

    goto :goto_4

    .line 60544
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 60545
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 60546
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 60547
    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "c4JLt10qR9kdrrYp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "0zY9GB4q95LGiQk1fLBG0MNTiKziwZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v10, 0x0

    .line 60548
    .local v0, "partitionOffset":I
    const/4 v8, 0x0

    .local v3, "i":I
    :goto_5
    iget v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A0A:I

    if-ge v8, v1, :cond_10

    .line 60549
    move v9, v10

    .line 60550
    .local p2, "previousPartitionOffset":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v10

    .line 60551
    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_d

    .line 60552
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    sub-int v0, v10, v9

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 60553
    .end local p2    # "previousPartitionOffset":I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 60554
    :cond_d
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "J2TgNcscXreU7gUqwf74sPv9CfE6Gw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int v0, v10, v9

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "NBHfCudPrQRQC8S5a"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sub-int v0, v10, v9

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 60555
    .end local p1    # "isEncrypted":Z
    .end local v3    # "i":I
    .end local v1    # "samplePartitionDataSize":I
    .end local v0    # "partitionOffset":I
    .end local v0
    .end local v0
    .end local v0
    :cond_f
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    if-eqz v0, :cond_11

    .line 60556
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    array-length v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    goto :goto_8

    .line 60557
    .end local v3
    :cond_10
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    sub-int v2, p3, v0

    sub-int/2addr v2, v10

    .line 60558
    .local v3, "finalPartitionSize":I
    rem-int/2addr v1, v7

    const/4 v0, 0x1

    if-ne v1, v0, :cond_12

    .line 60559
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60560
    :goto_7
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A0g:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 60561
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0g:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60562
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60563
    :cond_11
    :goto_8
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60564
    :cond_12
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    int-to-short v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 60565
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A0R:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "dRViNjD9vbHqjmOx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XUEP4eLEFu5DtbXLM2cvZ3OljIH60U"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/VV;->A0S:Z

    .line 60566
    :cond_14
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr p3, v0

    .line 60567
    .end local v0
    .local p3, "size":I
    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x3aa

    const/16 v1, 0xf

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_16

    goto/16 :goto_0

    .line 60568
    :cond_15
    const/16 v2, 0x1f8

    const/16 v1, 0x23

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "4yLwR29SFClZQFCQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "LhkjBXDDeJWMr30NELZmTBpX9MFUoR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 60569
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x3c7

    const/16 v1, 0x10

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 60570
    :cond_17
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 60571
    .local p1, "nalLengthData":[B
    const/4 v1, 0x0

    aput-byte v1, v6, v1

    .line 60572
    const/4 v0, 0x1

    aput-byte v1, v6, v0

    .line 60573
    aput-byte v1, v6, v7

    .line 60574
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0M:I

    .line 60575
    .local p2, "nalUnitLengthFieldLength":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0M:I

    rsub-int/lit8 v2, v0, 0x4

    .line 60576
    .local p3, "nalUnitLengthFieldLengthDiff":I
    :goto_9
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    if-ge v0, p3, :cond_1c

    .line 60577
    iget v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A09:I

    if-nez v1, :cond_18

    .line 60578
    invoke-direct {v4, p1, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/VV;->A0B(Lcom/facebook/ads/redexgen/X/CH;[BII)V

    .line 60579
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60580
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A09:I

    .line 60581
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0i:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60582
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0i:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x4

    invoke-interface {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60583
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    goto :goto_9

    .line 60584
    :cond_18
    invoke-direct {v4, p1, v5, v1}, Lcom/facebook/ads/redexgen/X/VV;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CS;I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A09:I

    goto :goto_9

    .line 60585
    :cond_19
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    if-eqz v0, :cond_1a

    .line 60586
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 60587
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    invoke-virtual {v1, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Cd;->A02(Lcom/facebook/ads/redexgen/X/CH;II)V

    .line 60588
    :cond_1a
    :goto_b
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    if-ge v0, p3, :cond_1c

    .line 60589
    sub-int v0, p3, v0

    invoke-direct {v4, p1, v5, v0}, Lcom/facebook/ads/redexgen/X/VV;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CS;I)I

    goto :goto_b

    .line 60590
    :cond_1b
    const/4 v0, 0x0

    goto :goto_a

    .line 60591
    :cond_1c
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0xb5

    const/16 v1, 0x8

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 60592
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VV;->A0n:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60593
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A0n:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x4

    invoke-interface {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60594
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60595
    :cond_1d
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/CH;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60596
    array-length v3, p2

    add-int/2addr v3, p3

    .line 60597
    .local p0, "sizeWithPrefix":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 60598
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "W5RZJpVY2rusdVLZQiczZQovuSZ9bwhy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int v0, v3, p3

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 60599
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, p2

    invoke-interface {p1, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 60601
    return-void

    .line 60602
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/CH;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60604
    .local p0, "pendingStrippedBytes":I
    add-int v1, p3, v2

    sub-int v0, p4, v2

    invoke-interface {p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60605
    if-lez v2, :cond_0

    .line 60606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p2, p3, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 60607
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A07:I

    .line 60608
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V
    .locals 14

    .line 60609
    move-object v0, p0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    move-wide/from16 v8, p2

    if-eqz v1, :cond_0

    .line 60610
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    invoke-virtual {v1, p1, v8, v9}, Lcom/facebook/ads/redexgen/X/Cd;->A04(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 60611
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/VV;->A0V:Z

    .line 60612
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VV;->A05()V

    .line 60613
    return-void

    .line 60614
    :cond_0
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v3, 0x34b

    const/16 v2, 0xb

    const/16 v1, 0x1e

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60615
    const/16 v4, 0x13

    const-wide/16 v5, 0x3e8

    sget-object v7, Lcom/facebook/ads/redexgen/X/VV;->A0x:[B

    const/16 v3, 0x21

    const/16 v2, 0x13

    const/16 v1, 0xc

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/VV;->A0D(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;IJ[B)V

    .line 60616
    :cond_1
    :goto_1
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    iget v11, v0, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    const/4 v12, 0x0

    iget-object v13, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    goto :goto_0

    .line 60617
    :cond_2
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v3, 0x341

    const/16 v2, 0xa

    const/16 v1, 0x29

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60618
    const/16 v4, 0x15

    const-wide/16 v5, 0x2710

    sget-object v7, Lcom/facebook/ads/redexgen/X/VV;->A0v:[B

    const/16 v3, 0xe

    const/16 v2, 0x13

    const/16 v1, 0x12

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/VV;->A0D(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;IJ[B)V

    goto :goto_1
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;IJ[B)V
    .locals 8

    .line 60619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0C:J

    move-object v7, p6

    move-wide v5, p4

    move v4, p3

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/VV;->A0E([BJLjava/lang/String;IJ[B)V

    .line 60620
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60621
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A08:I

    .line 60622
    return-void
.end method

.method public static A0E([BJLjava/lang/String;IJ[B)V
    .locals 10

    .line 60623
    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    move-object/from16 v5, p7

    if-nez v0, :cond_0

    .line 60624
    move-object v1, v5

    .line 60625
    .local p1, "timeCodeData":[B
    .end local v2
    .end local v6
    .end local v2
    .local p1, "timeCodeData":[B
    :goto_0
    array-length v0, v5

    invoke-static {v1, v2, p0, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60626
    return-void

    .line 60627
    .end local p1    # "timeCodeData":[B
    :cond_0
    const-wide v0, 0xd693a400L

    div-long v0, p1, v0

    long-to-int v4, v0

    .line 60628
    .local v2, "hours":I
    mul-int/lit16 v0, v4, 0xe10

    int-to-long v0, v0

    const-wide/32 v7, 0xf4240

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    .line 60629
    .end local v1
    .local p3, "durationUs":J
    const-wide/32 v0, 0x3938700

    div-long v0, p1, v0

    long-to-int v3, v0

    .line 60630
    .local p1, "minutes":I
    mul-int/lit8 v0, v3, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    .line 60631
    div-long v0, p1, v7

    long-to-int v6, v0

    .line 60632
    .local v2, "seconds":I
    int-to-long v0, v6

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    .line 60633
    div-long/2addr p1, p5

    long-to-int v8, p1

    .line 60634
    .local v6, "lastValue":I
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/Object;

    .line 60635
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v1, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v9, p3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60636
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0j(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/CN;J)Z
    .locals 7

    .line 60637
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Y:Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 60638
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0J:J

    .line 60639
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0F:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 60640
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Y:Z

    .line 60641
    return v6

    .line 60642
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0a:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0J:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 60643
    iput-wide v3, p1, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 60644
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0J:J

    .line 60645
    return v6

    .line 60646
    :cond_1
    return v5
.end method

.method public static A0G(Ljava/lang/String;)Z
    .locals 5

    .line 60647
    const/16 v2, 0x3ee

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60648
    const/16 v2, 0x3f3

    const/4 v1, 0x5

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60649
    const/16 v2, 0x386

    const/4 v1, 0x7

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60650
    const/16 v2, 0x3b9

    const/16 v1, 0xe

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60651
    const/16 v2, 0x39b

    const/16 v1, 0xf

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60652
    const/16 v4, 0x38d

    const/16 v3, 0xe

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "a6j7hub8EjbADJko"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "HpghlON8glexv4dggJHgduQqxT162T"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x7c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60653
    const/16 v2, 0x3aa

    const/16 v1, 0xf

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60654
    const/16 v2, 0x3c7

    const/16 v1, 0x10

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60655
    const/16 v2, 0x3d7

    const/16 v1, 0xf

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60656
    const/16 v2, 0x3e6

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60657
    const/16 v2, 0x9a

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60658
    const/16 v2, 0xb5

    const/16 v1, 0x8

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60659
    const/16 v2, 0x4a

    const/4 v1, 0x5

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60660
    const/16 v2, 0x80

    const/16 v1, 0x9

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60661
    const/16 v2, 0x89

    const/16 v1, 0x9

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60662
    :goto_1
    const/16 v2, 0x4f

    const/4 v1, 0x5

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60663
    const/16 v2, 0x74

    const/4 v1, 0x6

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60664
    const/16 v2, 0xad

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60665
    const/16 v2, 0x54

    const/4 v1, 0x5

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "oDE8LA3gZjgNVq8ZAcVQLmuZYXDlAq72"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "qR1C37e4FT67LxKZk3JscbqBgzf3wGXF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 60666
    const/16 v2, 0x59

    const/16 v1, 0xd

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60667
    const/16 v2, 0x66

    const/16 v1, 0xe

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60668
    const/16 v4, 0x7a

    const/4 v3, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "XXXXWV6iR7socOJww"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x11

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60669
    const/16 v2, 0x92

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60670
    const/16 v2, 0xa0

    const/16 v1, 0xd

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60671
    const/16 v2, 0x34b

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60672
    const/16 v4, 0x341

    const/16 v3, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "6b8GfszXTcaZR1pUokjIWJoihiCMUG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x29

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60673
    :goto_2
    const/16 v2, 0x356

    const/16 v1, 0x8

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60674
    const/16 v2, 0x337

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60675
    const/16 v2, 0x32f

    const/16 v1, 0x8

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 60676
    :goto_3
    return v0

    .line 60677
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "9TrRvGQBBw9mAmKH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "MoCkmsuK3Bblu2xWorjxTqwWKyzSEh"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2
.end method

.method public static synthetic A0H()[B
    .locals 1

    .line 60678
    sget-object v0, Lcom/facebook/ads/redexgen/X/VV;->A0t:[B

    return-object v0
.end method

.method public static A0I([II)[I
    .locals 1

    .line 60679
    if-nez p0, :cond_0

    .line 60680
    new-array v0, p1, [I

    return-object v0

    .line 60681
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 60682
    return-object p0

    .line 60683
    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public final A0J(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 60684
    const/16 v0, 0xa0

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    const v6, 0x1c53bb6b

    if-eq p1, v0, :cond_9

    const/16 v5, 0x6240

    sget-object v4, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v4, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "kaCtQ6q7VOBKqU9o"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "veoVMGh4phSdxuG8k8NT0cqkyGxIAO"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-eq p1, v5, :cond_8

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_7

    const v0, 0x1549a966

    if-eq p1, v0, :cond_4

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_3

    if-eq p1, v6, :cond_1

    .line 60685
    :cond_0
    :goto_0
    return-void

    .line 60686
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0a:Z

    if-nez v0, :cond_0

    .line 60687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VV;->A02()Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    .line 60688
    sget-object v3, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "RRGzExaN4PKr8kgom"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v3, v0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0a:Z

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "MN98iTIa1ehYgMnZ1"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v3, v0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0a:Z

    goto :goto_0

    .line 60689
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_f

    .line 60690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 60691
    goto :goto_0

    .line 60692
    :cond_4
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0M:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_5

    .line 60693
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0M:J

    .line 60694
    :cond_5
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0G:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 60695
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/VV;->A01(J)J

    move-result-wide v2

    sget-object v4, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "aJk6ALqbhdRQ7HTex"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "4b"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "GQ"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    goto/16 :goto_0

    .line 60696
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    if-nez v0, :cond_10

    goto/16 :goto_0

    .line 60697
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    if-eqz v0, :cond_0

    .line 60698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    if-eqz v0, :cond_11

    .line 60699
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v6, v2, [Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v5, Lcom/facebook/ads/redexgen/X/9u;->A04:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/CR;->A03:[B

    const/16 v2, 0x400

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v0, v5, v1, v4}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v0, v6, v3

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v6}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;-><init>([Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Cc;->A0U:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    goto/16 :goto_0

    .line 60700
    :cond_9
    iget v5, p0, Lcom/facebook/ads/redexgen/X/VV;->A0B:I

    const/4 v0, -0x1

    if-eq v5, v0, :cond_13

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0I:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_13

    .line 60701
    if-ne v5, v6, :cond_0

    .line 60702
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0F:J

    goto/16 :goto_0

    .line 60703
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VV;->A0G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60704
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0N:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cc;->A0A(Lcom/facebook/ads/redexgen/X/CI;I)V

    .line 60705
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0N:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60706
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    .line 60707
    goto/16 :goto_0

    .line 60708
    :cond_c
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_d

    .line 60709
    return-void

    .line 60710
    :cond_d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0W:Z

    if-nez v0, :cond_e

    .line 60711
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    .line 60712
    :cond_e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A05:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Cc;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0D:J

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VV;->A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 60713
    iput v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    .line 60714
    goto/16 :goto_0

    .line 60715
    :cond_f
    const/16 v2, 0x2f4

    const/16 v1, 0x1a

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60716
    :cond_10
    const/16 v2, 0xf3

    const/16 v1, 0x35

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60717
    :cond_11
    const/16 v2, 0x1c1

    const/16 v1, 0x37

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60718
    :cond_13
    const/16 v2, 0x29b

    const/16 v1, 0x32

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0K(ID)V
    .locals 4

    .line 60719
    const/16 v0, 0xb5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 60720
    :goto_0
    return-void

    .line 60721
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A06:F

    .line 60722
    goto :goto_0

    .line 60723
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A07:F

    .line 60724
    goto :goto_0

    .line 60725
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A04:F

    .line 60726
    goto :goto_0

    .line 60727
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A05:F

    .line 60728
    goto :goto_0

    .line 60729
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A02:F

    .line 60730
    goto :goto_0

    .line 60731
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A03:F

    .line 60732
    goto :goto_0

    .line 60733
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A08:F

    .line 60734
    goto :goto_0

    .line 60735
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A09:F

    .line 60736
    goto :goto_0

    .line 60737
    :pswitch_8
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "zLdG5BOl6iXDyj7V"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "L7De9g78ry4XJFOE9BE3J2K5LYqkQT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    double-to-float v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Cc;->A00:F

    .line 60738
    goto :goto_0

    .line 60739
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A01:F

    .line 60740
    goto :goto_0

    .line 60741
    :cond_1
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0G:J

    .line 60742
    goto :goto_0

    .line 60743
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0O:I

    .line 60744
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final A0L(IILcom/facebook/ads/redexgen/X/CH;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v11, p2

    .line 60745
    move-object/from16 v6, p0

    const/16 v0, 0xa1

    const/4 v3, 0x4

    const/16 v12, 0xa3

    const/4 v2, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p3

    move/from16 v5, p1

    if-eq v5, v0, :cond_4

    if-eq v5, v12, :cond_4

    const/16 v0, 0x4255

    if-eq v5, v0, :cond_3

    const/16 v0, 0x47e2

    if-eq v5, v0, :cond_2

    const/16 v0, 0x53ab

    if-eq v5, v0, :cond_1

    const/16 v0, 0x63a2

    if-eq v5, v0, :cond_0

    const/16 v0, 0x7672

    if-ne v5, v0, :cond_1f

    .line 60746
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v0, v11, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0e:[B

    .line 60747
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0e:[B

    invoke-interface {v7, v0, v2, v11}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60748
    .end local v6
    :goto_0
    return-void

    .line 60749
    :cond_0
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v0, v11, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0d:[B

    .line 60750
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0d:[B

    invoke-interface {v7, v0, v2, v11}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60751
    goto :goto_0

    .line 60752
    :cond_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 60753
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sub-int/2addr v3, v11

    invoke-interface {v7, v0, v3, v11}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60754
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60755
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v1

    long-to-int v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0B:I

    .line 60756
    goto :goto_0

    .line 60757
    :cond_2
    new-array v3, v11, [B

    .line 60758
    .local v6, "encryptionKey":[B
    invoke-interface {v7, v3, v2, v11}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60759
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CR;

    invoke-direct {v0, v13, v3, v2, v2}, Lcom/facebook/ads/redexgen/X/CR;-><init>(I[BII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    .line 60760
    goto :goto_0

    .line 60761
    .end local v6    # "encryptionKey":[B
    :cond_3
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v0, v11, [B

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    sget-object v3, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v3, v0

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_20

    .line 60762
    sget-object v3, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "XiNhAF1FSANJju5ZKhILd8muC3kFTPn0"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    invoke-interface {v7, v0, v2, v11}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60763
    goto :goto_0

    .line 60764
    :cond_4
    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    const/16 v8, 0x8

    if-nez v0, :cond_5

    .line 60765
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, v7, v2, v13, v8}, Lcom/facebook/ads/redexgen/X/Cf;->A06(Lcom/facebook/ads/redexgen/X/CH;ZZI)J

    move-result-wide v0

    long-to-int v4, v0

    iput v4, v6, Lcom/facebook/ads/redexgen/X/VV;->A05:I

    .line 60766
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A05()I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A06:I

    .line 60767
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0C:J

    .line 60768
    iput v13, v6, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    .line 60769
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 60770
    :cond_5
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A05:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Cc;

    .line 60771
    .local v6, "track":Lcom/facebook/ads/redexgen/X/Cc;
    if-nez v4, :cond_6

    .line 60772
    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A06:I

    sub-int/2addr v11, v0

    invoke-interface {v7, v11}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60773
    iput v2, v6, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    .line 60774
    return-void

    .line 60775
    :cond_6
    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    if-ne v0, v13, :cond_8

    .line 60776
    const/4 v14, 0x3

    invoke-direct {v6, v7, v14}, Lcom/facebook/ads/redexgen/X/VV;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 60777
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v9, v0, 0x6

    shr-int/2addr v9, v13

    .line 60778
    .local v2, "lacing":I
    const/16 v10, 0xff

    if-nez v9, :cond_10

    .line 60779
    iput v13, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    .line 60780
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    invoke-static {v0, v13}, Lcom/facebook/ads/redexgen/X/VV;->A0I([II)[I

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    .line 60781
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A06:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v14

    aput v11, v1, v2

    .line 60782
    :goto_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x0

    aget-byte v9, v1, v0

    shl-int/2addr v9, v8

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v10

    or-int/2addr v9, v0

    .line 60783
    .local v5, "timecode":I
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/VV;->A0E:J

    int-to-long v0, v9

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/VV;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/VV;->A0D:J

    .line 60784
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_e

    aget-byte v0, v9, v3

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_f

    :goto_2
    const/4 v9, 0x1

    .line 60785
    .local v11, "isInvisible":Z
    :goto_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0Q:I

    if-eq v0, v3, :cond_7

    const/16 v8, 0xa3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "qWFSvBn87OdbZm0Aa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v8, :cond_d

    :goto_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v1, v0, v3

    const/16 v0, 0x80

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_d

    :cond_7
    const/4 v0, 0x1

    .line 60786
    .local v7, "isKeyframe":Z
    :goto_5
    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 60787
    :goto_6
    if-eqz v9, :cond_a

    const/high16 v0, -0x80000000

    :goto_7
    or-int/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A01:I

    .line 60788
    const/4 v0, 0x2

    iput v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    .line 60789
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "3SdME00iUrdWzuXXw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput v3, v6, Lcom/facebook/ads/redexgen/X/VV;->A03:I

    .line 60790
    .end local v2    # "lacing":I
    :cond_8
    :goto_8
    const/16 v0, 0xa3

    if-ne v5, v0, :cond_1e

    .line 60791
    :goto_9
    iget v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A03:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    if-ge v1, v0, :cond_1d

    .line 60792
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    aget v0, v0, v1

    invoke-direct {v6, v7, v4, v0}, Lcom/facebook/ads/redexgen/X/VV;->A09(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Cc;I)V

    .line 60793
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/VV;->A0D:J

    iget v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A03:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0F:I

    mul-int/2addr v1, v0

    div-int/lit16 v0, v1, 0x3e8

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 60794
    .local v5, "sampleTimeUs":J
    invoke-direct {v6, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/VV;->A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 60795
    iget v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A03:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A03:I

    .line 60796
    .end local v5    # "sampleTimeUs":J
    goto :goto_9

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "jmdeDOIQuKVJCfgD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bHDRtyVGa95FaHh87YP3s2umHBlIJz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v3, v6, Lcom/facebook/ads/redexgen/X/VV;->A03:I

    goto :goto_8

    .line 60797
    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    .line 60798
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "GidVdUC806WGYFqq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ovZsHnsxuEAV5CLnnRVIkCq5QxFUVm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v8, :cond_d

    goto/16 :goto_4

    .line 60799
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "xoJOM6t1RImVYiS6LsKGlnrEofduei"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-byte v0, v9, v3

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_f

    goto/16 :goto_2

    .line 60800
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 60801
    :cond_10
    if-ne v5, v12, :cond_24

    .line 60802
    invoke-direct {v6, v7, v3}, Lcom/facebook/ads/redexgen/X/VV;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 60803
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v14

    and-int/2addr v0, v10

    add-int/2addr v0, v13

    iput v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    .line 60804
    iget-object v12, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    .line 60805
    invoke-static {v12, v0}, Lcom/facebook/ads/redexgen/X/VV;->A0I([II)[I

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    .line 60806
    if-ne v9, v1, :cond_12

    .line 60807
    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A06:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v3

    iget v9, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    div-int/2addr v11, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60808
    .local v12, "blockLacingSampleSize":I
    :cond_11
    sget-object v3, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "ieijQdqS5fgn0snZFp3fk2cwp3nctm6e"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    invoke-static {v0, v2, v9, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 60809
    .end local v12    # "blockLacingSampleSize":I
    goto/16 :goto_1

    :cond_12
    if-ne v9, v13, :cond_15

    .line 60810
    const/4 v14, 0x0

    .line 60811
    .local v5, "totalSamplesSize":I
    const/4 v9, 0x4

    .line 60812
    .local v12, "headerSize":I
    const/4 v12, 0x0

    .local v0, "sampleIndex":I
    :goto_a
    iget v3, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    add-int/lit8 v0, v3, -0x1

    if-ge v12, v0, :cond_14

    .line 60813
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    aput v2, v0, v12

    .line 60814
    :cond_13
    add-int/2addr v9, v13

    invoke-direct {v6, v7, v9}, Lcom/facebook/ads/redexgen/X/VV;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 60815
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v9, -0x1

    aget-byte v3, v1, v0

    and-int/2addr v3, v10

    .line 60816
    .local v11, "byteValue":I
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    aget v0, v1, v12

    add-int/2addr v0, v3

    aput v0, v1, v12

    .line 60817
    if-eq v3, v10, :cond_13

    .line 60818
    aget v0, v1, v12

    add-int/2addr v14, v0

    .line 60819
    .end local v11    # "byteValue":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 60820
    .end local v0    # "sampleIndex":I
    :cond_14
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    sub-int/2addr v3, v13

    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A06:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    sub-int/2addr v11, v14

    aput v11, v1, v3

    .line 60821
    .end local v5    # "totalSamplesSize":I
    .end local v12    # "headerSize":I
    goto/16 :goto_1

    :cond_15
    if-ne v9, v14, :cond_23

    .line 60822
    const/16 v17, 0x0

    .line 60823
    .restart local v5    # "totalSamplesSize":I
    const/4 v9, 0x4

    .line 60824
    .local v11, "headerSize":I
    const/4 v12, 0x0

    .local v12, "sampleIndex":I
    :goto_b
    iget v3, v6, Lcom/facebook/ads/redexgen/X/VV;->A02:I

    add-int/lit8 v0, v3, -0x1

    if-ge v12, v0, :cond_1c

    .line 60825
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    aput v2, v0, v12

    .line 60826
    add-int/lit8 v9, v9, 0x1

    invoke-direct {v6, v7, v9}, Lcom/facebook/ads/redexgen/X/VV;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 60827
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v9, -0x1

    aget-byte v0, v1, v0

    if-eqz v0, :cond_22

    .line 60828
    const-wide/16 v2, 0x0

    .line 60829
    .local v0, "readValue":J
    const/4 v14, 0x0

    .local v13, "i":I
    :goto_c
    if-ge v14, v8, :cond_19

    .line 60830
    rsub-int/lit8 v0, v14, 0x7

    shl-int/2addr v13, v0

    .line 60831
    .local v0, "lengthMask":I
    iget-object v15, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v16, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v16, v0

    const/4 v0, 0x3

    aget-object v0, v16, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_16

    iget-object v1, v15, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v9, -0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v13

    if-eqz v0, :cond_17

    .line 60832
    :goto_d
    add-int/lit8 v2, v9, -0x1

    .line 60833
    .local v7, "readPosition":I
    add-int/2addr v9, v14

    .line 60834
    invoke-direct {v6, v7, v9}, Lcom/facebook/ads/redexgen/X/VV;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 60835
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v1, v2, 0x1

    .end local v7    # "readPosition":I
    .local v1, "readPosition":I
    aget-byte v2, v0, v2

    and-int/2addr v2, v10

    xor-int/lit8 v0, v13, -0x1

    and-int/2addr v2, v0

    int-to-long v2, v2

    .line 60836
    .end local v1    # "readPosition":I
    .restart local v7    # "readPosition":I
    :goto_e
    if-ge v1, v9, :cond_18

    .line 60837
    shl-long/2addr v2, v8

    .line 60838
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v13, v1, 0x1

    .end local v7    # "readPosition":I
    .restart local v1    # "readPosition":I
    aget-byte v0, v0, v1

    and-int/2addr v0, v10

    int-to-long v0, v0

    or-long/2addr v2, v0

    move v1, v13

    goto :goto_e

    :cond_16
    sget-object v16, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "UrAGxs2LI0y7hMv3wPbVNuNVwC6d0e"

    const/4 v0, 0x1

    aput-object v1, v16, v0

    iget-object v1, v15, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v9, -0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v13

    if-eqz v0, :cond_17

    goto :goto_d

    .line 60839
    .end local v7
    .end local v0    # "lengthMask":I
    :cond_17
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_c

    .line 60840
    .end local v1    # "readPosition":I
    .restart local v7    # "readPosition":I
    :cond_18
    if-lez v12, :cond_19

    .line 60841
    mul-int/lit8 v0, v14, 0x7

    add-int/lit8 v15, v0, 0x6

    sget-object v13, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v13, v0

    const/4 v0, 0x4

    aget-object v0, v13, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1b

    sget-object v13, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "9xyXvBMVa2iGPnBX"

    const/4 v0, 0x7

    aput-object v1, v13, v0

    const-string v1, "OFhe3qlIzj8fZUcbgtzYEYIP1iP709"

    const/4 v0, 0x4

    aput-object v1, v13, v0

    const-wide/16 v13, 0x1

    shl-long v0, v13, v15

    sub-long/2addr v0, v13

    sub-long/2addr v2, v0

    .line 60842
    .end local v13    # "i":I
    :cond_19
    :goto_f
    const-wide/32 v13, -0x80000000

    cmp-long v0, v2, v13

    if-ltz v0, :cond_21

    const-wide/32 v13, 0x7fffffff

    cmp-long v0, v2, v13

    if-gtz v0, :cond_21

    .line 60843
    long-to-int v13, v2

    .line 60844
    .local v7, "intReadValue":I
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    .line 60845
    if-nez v12, :cond_1a

    .line 60846
    :goto_10
    aput v13, v1, v12

    .line 60847
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    aget v0, v0, v12

    add-int v17, v17, v0

    .line 60848
    .end local v7    # "intReadValue":I
    .end local v0
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto/16 :goto_b

    .line 60849
    :cond_1a
    add-int/lit8 v0, v12, -0x1

    aget v0, v1, v0

    add-int/2addr v13, v0

    goto :goto_10

    :cond_1b
    const-wide/16 v13, 0x1

    shl-long v0, v13, v15

    sub-long/2addr v0, v13

    sub-long/2addr v2, v0

    goto :goto_f

    .line 60850
    .end local v12    # "sampleIndex":I
    :cond_1c
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    const/4 v0, 0x1

    sub-int/2addr v3, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A06:I

    sub-int/2addr v11, v0

    sub-int/2addr v11, v9

    sub-int v11, v11, v17

    aput v11, v1, v3

    .line 60851
    .end local v5    # "totalSamplesSize":I
    .end local v11    # "headerSize":I
    goto/16 :goto_1

    .line 60852
    :cond_1d
    const/4 v0, 0x0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    goto/16 :goto_0

    .line 60853
    :cond_1e
    const/4 v1, 0x0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/VV;->A0b:[I

    aget v0, v0, v1

    invoke-direct {v6, v7, v4, v0}, Lcom/facebook/ads/redexgen/X/VV;->A09(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Cc;I)V

    .line 60854
    goto/16 :goto_0

    .line 60855
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35e

    const/16 v1, 0xf

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60856
    .restart local v0    # "lengthMask":I
    :cond_21
    const/16 v2, 0x18c

    const/16 v1, 0x25

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60857
    .end local v0    # "lengthMask":I
    :cond_22
    const/16 v2, 0x30e

    const/16 v1, 0x21

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60858
    .end local v5
    .end local v11
    .end local v7
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x36d

    const/16 v1, 0x19

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60859
    :cond_24
    const/16 v2, 0x275

    const/16 v1, 0x26

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0M(IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 60860
    const/16 v3, 0x5031

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v4

    if-eq p1, v3, :cond_18

    const/16 v0, 0x5032

    const-wide/16 v8, 0x1

    if-eq p1, v0, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v4, 0x7

    const/4 v6, 0x6

    packed-switch p1, :pswitch_data_0

    .line 60861
    :cond_0
    :goto_0
    return-void

    .line 60862
    :pswitch_0
    long-to-int v0, p2

    if-eq v0, v7, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 60863
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0C:I

    .line 60864
    goto :goto_0

    .line 60865
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "FKydh98Qbq68eMDbS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput v5, v3, Lcom/facebook/ads/redexgen/X/Cc;->A0C:I

    .line 60866
    goto :goto_0

    .line 60867
    :pswitch_1
    long-to-int v1, p2

    if-eq v1, v7, :cond_5

    const/16 v0, 0x10

    if-eq v1, v0, :cond_4

    const/16 v0, 0x12

    if-eq v1, v0, :cond_e

    if-eq v1, v6, :cond_5

    if-eq v1, v4, :cond_5

    goto :goto_0

    .line 60868
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    .line 60869
    goto :goto_0

    .line 60870
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "8XLc9l1U5eLZh3FkOzgpaxn3V10Dtr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    .line 60871
    goto :goto_0

    .line 60872
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-boolean v7, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0b:Z

    .line 60873
    long-to-int v1, p2

    if-eq v1, v7, :cond_9

    const/16 v0, 0x9

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    const/4 v0, 0x5

    if-eq v1, v0, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_7

    goto :goto_0

    .line 60874
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0D:I

    .line 60875
    goto :goto_0

    .line 60876
    :cond_8
    iput v6, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0D:I

    .line 60877
    goto :goto_0

    .line 60878
    :cond_9
    iput v7, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0D:I

    .line 60879
    goto/16 :goto_0

    .line 60880
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0K:I

    .line 60881
    goto/16 :goto_0

    .line 60882
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0L:I

    .line 60883
    goto/16 :goto_0

    .line 60884
    :sswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0Q:I

    .line 60885
    goto/16 :goto_0

    .line 60886
    :sswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    cmp-long v0, p2, v8

    if-nez v0, :cond_a

    const/4 v2, 0x1

    :cond_a
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0Z:Z

    .line 60887
    goto/16 :goto_0

    .line 60888
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0C:J

    .line 60889
    goto/16 :goto_0

    .line 60890
    :sswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0B:I

    .line 60891
    goto/16 :goto_0

    .line 60892
    :sswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0R:I

    .line 60893
    goto/16 :goto_0

    .line 60894
    :sswitch_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A01(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 60895
    goto/16 :goto_0

    .line 60896
    :sswitch_6
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "OANIBQaESteMw6V6LSALc6gwyq9tpH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    long-to-int v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Cc;->A0J:I

    .line 60897
    goto/16 :goto_0

    :cond_b
    long-to-int v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Cc;->A0J:I

    goto/16 :goto_0

    .line 60898
    :sswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0N:I

    .line 60899
    goto/16 :goto_0

    .line 60900
    :sswitch_8
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A01(J)J

    move-result-wide v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_c

    goto :goto_1

    :cond_c
    sget-object v4, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "9R"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "5P"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0E:J

    .line 60901
    goto/16 :goto_0

    .line 60902
    :sswitch_9
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Z:Z

    if-nez v0, :cond_0

    .line 60903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 60904
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Z:Z

    goto/16 :goto_0

    .line 60905
    :sswitch_a
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/VV;->A0W:Z

    .line 60906
    goto/16 :goto_0

    .line 60907
    :sswitch_b
    const-wide/16 v1, 0x3

    cmp-long v0, p2, v1

    if-nez v0, :cond_19

    goto/16 :goto_0

    .line 60908
    :sswitch_c
    cmp-long v0, p2, v8

    if-ltz v0, :cond_1a

    const-wide/16 v5, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_d

    goto :goto_1

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "M60EP7v63hSzsp30"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "rwTuTpUDjlwO0Zyf6piPThotRV55K2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, p2, v5

    if-gtz v0, :cond_1a

    goto/16 :goto_0

    .line 60909
    :sswitch_d
    cmp-long v3, p2, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_10

    goto :goto_1

    .line 60910
    :cond_e
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_f

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "EV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "py"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput v4, v3, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    .line 60911
    goto/16 :goto_0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "wSQ55ZxqhGfezEFkk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_1b

    goto/16 :goto_0

    .line 60912
    :sswitch_e
    const-wide/16 v1, 0x5

    cmp-long v0, p2, v1

    if-nez v0, :cond_1c

    goto/16 :goto_0

    .line 60913
    :sswitch_f
    cmp-long v0, p2, v8

    if-nez v0, :cond_1d

    goto/16 :goto_0

    .line 60914
    .end local p1    # null:I
    :sswitch_10
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0I:J

    .line 60915
    goto/16 :goto_0

    .line 60916
    :sswitch_11
    long-to-int v4, p2

    .line 60917
    .local p1, "layout":I
    if-eqz v4, :cond_15

    if-eq v4, v7, :cond_14

    if-eq v4, v3, :cond_13

    const/16 v5, 0xf

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "Zed98vISFukoacUL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5RH02BQy1elNWvZZPVqvHjXalmTXZV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_12

    goto/16 :goto_0

    .line 60918
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 60919
    goto/16 :goto_0

    .line 60920
    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 60921
    goto/16 :goto_0

    .line 60922
    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 60923
    goto/16 :goto_0

    .line 60924
    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 60925
    goto/16 :goto_0

    .line 60926
    :sswitch_12
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0I:I

    .line 60927
    goto/16 :goto_0

    .line 60928
    :sswitch_13
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0H:I

    .line 60929
    goto/16 :goto_0

    .line 60930
    :sswitch_14
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0G:I

    .line 60931
    goto/16 :goto_0

    .line 60932
    :sswitch_15
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    cmp-long v0, p2, v8

    if-nez v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0a:Z

    .line 60933
    goto/16 :goto_0

    .line 60934
    :sswitch_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-wide p2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0S:J

    .line 60935
    goto/16 :goto_0

    .line 60936
    :sswitch_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-wide p2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0T:J

    .line 60937
    goto/16 :goto_0

    .line 60938
    :sswitch_18
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0A:I

    .line 60939
    goto/16 :goto_0

    .line 60940
    :sswitch_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0F:I

    .line 60941
    goto/16 :goto_0

    .line 60942
    :sswitch_1a
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0M:J

    .line 60943
    goto/16 :goto_0

    .line 60944
    :cond_17
    cmp-long v0, p2, v8

    if-nez v0, :cond_1e

    goto/16 :goto_0

    .line 60945
    :cond_18
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-nez v0, :cond_1f

    goto/16 :goto_0

    .line 60946
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x128

    const/16 v1, 0x10

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60947
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x179

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60948
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b1

    const/16 v1, 0x10

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60949
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x138

    const/16 v1, 0xf

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60950
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x34

    const/16 v1, 0x16

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60951
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15c

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60952
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x147

    const/16 v1, 0x15

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x88 -> :sswitch_1
        0x9b -> :sswitch_2
        0x9f -> :sswitch_3
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_5
        0xba -> :sswitch_6
        0xd7 -> :sswitch_7
        0xe7 -> :sswitch_8
        0xf1 -> :sswitch_9
        0xfb -> :sswitch_a
        0x4254 -> :sswitch_b
        0x4285 -> :sswitch_c
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_10
        0x53b8 -> :sswitch_11
        0x54b0 -> :sswitch_12
        0x54b2 -> :sswitch_13
        0x54ba -> :sswitch_14
        0x55aa -> :sswitch_15
        0x56aa -> :sswitch_16
        0x56bb -> :sswitch_17
        0x6264 -> :sswitch_18
        0x23e383 -> :sswitch_19
        0x2ad7b1 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final A0N(IJJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 60953
    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v4, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_0

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_3

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    .line 60954
    :cond_0
    :goto_0
    return-void

    .line 60955
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0a:Z

    if-nez v0, :cond_0

    .line 60956
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0o:Z

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/VV;->A0F:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 60957
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Y:Z

    goto :goto_0

    .line 60958
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0H:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 60959
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VV;->A0a:Z

    goto :goto_0

    .line 60960
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    .line 60961
    new-instance v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    .line 60962
    goto :goto_0

    .line 60963
    :cond_4
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    cmp-long v0, v3, p2

    if-nez v0, :cond_c

    .line 60964
    :cond_5
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/VV;->A0K:J

    .line 60965
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/VV;->A0L:J

    .line 60966
    goto :goto_0

    .line 60967
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0b:Z

    .line 60968
    goto :goto_0

    .line 60969
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    .line 60970
    goto :goto_0

    .line 60971
    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0B:I

    .line 60972
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0I:J

    .line 60973
    goto :goto_0

    .line 60974
    :cond_9
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0Z:Z

    .line 60975
    goto :goto_0

    .line 60976
    :cond_a
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cc;-><init>(Lcom/facebook/ads/redexgen/X/VX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    .line 60977
    goto :goto_0

    .line 60978
    :cond_b
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0W:Z

    .line 60979
    goto :goto_0

    .line 60980
    :cond_c
    const/16 v2, 0x2cd

    const/16 v1, 0x27

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0O(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 60981
    const/16 v0, 0x86

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const v0, 0x22b59c

    if-eq p1, v0, :cond_1

    .line 60982
    :cond_0
    :goto_0
    return-void

    .line 60983
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Cc;->A02(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;)Ljava/lang/String;

    .line 60984
    goto :goto_0

    .line 60985
    :cond_2
    const/16 v2, 0x40a

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x3f8

    const/16 v1, 0x8

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 60986
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A0q:[Ljava/lang/String;

    const-string v1, "RU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "vH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-object p2, v3, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    .line 60987
    goto :goto_0

    .line 60988
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x171

    const/16 v1, 0x8

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 60989
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VV;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    .line 60990
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60991
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/VV;->A0V:Z

    .line 60992
    const/4 v2, 0x1

    .line 60993
    .local p1, "continueReading":Z
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0V:Z

    if-nez v0, :cond_1

    .line 60994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/CY;->ACm(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v2

    .line 60995
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/VV;->A0F(Lcom/facebook/ads/redexgen/X/CN;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60996
    const/4 v0, 0x1

    return v0

    .line 60997
    :cond_1
    if-nez v2, :cond_3

    .line 60998
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 60999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cc;->A08()V

    .line 61000
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61001
    .end local p0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 61002
    :cond_3
    return v3
.end method

.method public final ADX(JJ)V
    .locals 2

    .line 61003
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0E:J

    .line 61004
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A04:I

    .line 61005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->reset()V

    .line 61006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A07()V

    .line 61007
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VV;->A05()V

    .line 61008
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 61009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cc;->A09()V

    .line 61010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61011
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61012
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ce;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ce;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ce;->A02(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
.end method
