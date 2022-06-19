.class public final Lcom/facebook/ads/redexgen/X/Z5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cc;,
        Lcom/facebook/ads/redexgen/X/Cd;,
        Lcom/facebook/ads/redexgen/X/Z4;,
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

    .line 62372
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z5;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z5;->A06()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Z3;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0r:Lcom/facebook/ads/redexgen/X/CJ;

    .line 62373
    const/16 v3, 0x20

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0w:[B

    .line 62374
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0x:[B

    .line 62375
    const/16 v2, 0x21b

    const/16 v1, 0x5a

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0t:[B

    .line 62376
    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0u:[B

    .line 62377
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0v:[B

    .line 62378
    const-wide v3, 0x100000000001000L

    const-wide v1, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0s:Ljava/util/UUID;

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

    .line 62379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Z5;-><init>(I)V

    .line 62380
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 62381
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Z2;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Z5;-><init>(Lcom/facebook/ads/redexgen/X/CY;I)V

    .line 62382
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CY;I)V
    .locals 4

    .line 62383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62384
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    .line 62385
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0M:J

    .line 62386
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0G:J

    .line 62387
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0H:J

    .line 62388
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0F:J

    .line 62389
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0J:J

    .line 62390
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0E:J

    .line 62391
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    .line 62392
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z4;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Z4;-><init>(Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/Z3;)V

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/CY;->A7r(Lcom/facebook/ads/redexgen/X/Ca;)V

    .line 62393
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0o:Z

    .line 62394
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Cf;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    .line 62395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    .line 62396
    const/4 v2, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    .line 62397
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0n:Lcom/facebook/ads/redexgen/X/IM;

    .line 62398
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    .line 62399
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0i:Lcom/facebook/ads/redexgen/X/IM;

    .line 62400
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    .line 62401
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    .line 62402
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    .line 62403
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    .line 62404
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0g:Lcom/facebook/ads/redexgen/X/IM;

    .line 62405
    return-void

    .line 62406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CS;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    .line 62408
    .local p0, "strippedBytesLeft":I
    if-lez v0, :cond_0

    .line 62409
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    .line 62410
    .local p1, "bytesRead":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "aDvj6xsBYLtfkWvKOvjAJhuXcdkZRgYf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uG0ceA84GetZ2PjOc8Op6VIqDQh3bhN9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {p2, v0, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62411
    .restart local p1    # "bytesRead":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62412
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62413
    return v3

    .line 62414
    .end local p1    # "bytesRead":I
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADQ(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 62415
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 62416
    const-wide/16 v5, 0x3e8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 62417
    :cond_0
    const/16 v2, 0xbd

    const/16 v1, 0x36

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/CP;
    .locals 11

    .line 62418
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    const/4 v8, 0x0

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0H:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    if-eqz v0, :cond_0

    .line 62419
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    if-eqz v0, :cond_0

    .line 62420
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 62421
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Z5;
    .end local v3
    .end local v8
    .end local v1
    .end local v5
    :cond_0
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    .line 62422
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    .line 62423
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0H:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    return-object v0

    .line 62424
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A02()I

    move-result v7

    .line 62425
    .local p0, "cuePointsSize":I
    new-array v9, v7, [I

    .line 62426
    .local v3, "sizes":[I
    new-array v6, v7, [J

    .line 62427
    .local v8, "offsets":[J
    new-array v5, v7, [J

    .line 62428
    .local v1, "durationsUs":[J
    new-array v4, v7, [J

    .line 62429
    .local v5, "timesUs":[J
    const/4 v10, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v10, v7, :cond_2

    .line 62430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/IC;->A03(I)J

    move-result-wide v0

    aput-wide v0, v4, v10

    .line 62431
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/IC;->A03(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    aput-wide v0, v6, v10

    .line 62432
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 62433
    .end local v0    # "i":I
    :cond_2
    const/4 v10, 0x0

    .restart local v0    # "i":I
    :goto_1
    add-int/lit8 v0, v7, -0x1

    if-ge v10, v0, :cond_3

    .line 62434
    add-int/lit8 v0, v10, 0x1

    aget-wide v0, v6, v0

    aget-wide v2, v6, v10

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, v9, v10

    .line 62435
    add-int/lit8 v0, v10, 0x1

    aget-wide v2, v4, v0

    aget-wide v0, v4, v10

    sub-long/2addr v2, v0

    aput-wide v2, v5, v10

    .line 62436
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 62437
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v10, v7, -0x1

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0L:J

    add-long/2addr v2, v0

    add-int/lit8 v0, v7, -0x1

    aget-wide v0, v6, v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    aput v0, v9, v10

    .line 62438
    add-int/lit8 v10, v7, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0H:J

    add-int/lit8 v2, v7, -0x1

    aget-wide v2, v4, v2

    sub-long/2addr v0, v2

    aput-wide v0, v5, v10

    .line 62439
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    .line 62440
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    .line 62441
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yo;

    invoke-direct {v0, v9, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/Yo;-><init>([I[J[J[J)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0p:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

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
    .locals 1

    .line 62442
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0s:Ljava/util/UUID;

    return-object v0
.end method

.method private A05()V
    .locals 1

    .line 62443
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62444
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62445
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A09:I

    .line 62446
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0S:Z

    .line 62447
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0X:Z

    .line 62448
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0U:Z

    .line 62449
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0A:I

    .line 62450
    iput-byte v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A00:B

    .line 62451
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0T:Z

    .line 62452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 62453
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x40e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0p:[B

    return-void

    :array_0
    .array-data 1
        0x22t
        0x6ct
        0x6dt
        0x76t
        0x22t
        0x71t
        0x77t
        0x72t
        0x72t
        0x6dt
        0x70t
        0x76t
        0x67t
        0x66t
        0x68t
        0x7dt
        0x7ct
        0x29t
        0x77t
        0x68t
        0x7dt
        0x7ft
        0x29t
        0x77t
        0x68t
        0x7dt
        0x7ft
        0x29t
        0x77t
        0x68t
        0x7dt
        0x7ft
        0x29t
        0x54t
        0x41t
        0x43t
        0x15t
        0x4bt
        0x54t
        0x41t
        0x43t
        0x15t
        0x4bt
        0x54t
        0x41t
        0x43t
        0x15t
        0x5dt
        0x54t
        0x41t
        0x42t
        0x15t
        0x56t
        0x52t
        0x44t
        0x44t
        0x72t
        0x63t
        0x63t
        0x7et
        0x79t
        0x70t
        0x64t
        0x54t
        0x7et
        0x67t
        0x7ft
        0x72t
        0x65t
        0x5at
        0x78t
        0x73t
        0x72t
        0x37t
        0x19t
        0x7t
        0x19t
        0x19t
        0x1bt
        0x37t
        0x29t
        0x37t
        0x35t
        0x45t
        0x39t
        0x27t
        0x3ct
        0x2ct
        0x2bt
        0x49t
        0x57t
        0x4ct
        0x5ct
        0x5bt
        0x27t
        0x4dt
        0x50t
        0x58t
        0x5at
        0x4dt
        0x5bt
        0x5bt
        0x6ft
        0x71t
        0x6at
        0x7at
        0x7dt
        0x1t
        0x62t
        0x61t
        0x7dt
        0x7dt
        0x62t
        0x6bt
        0x7dt
        0x7dt
        0x1ct
        0x2t
        0x18t
        0x1ct
        0x1et
        0x6et
        0x9t
        0x17t
        0xet
        0x4t
        0x9t
        0xbt
        0x3at
        0x24t
        0x36t
        0x2bt
        0x3et
        0x3ct
        0x54t
        0x37t
        0x49t
        0x50t
        0x4et
        0x5ct
        0x41t
        0x54t
        0x56t
        0x3et
        0x5dt
        0x22t
        0x8t
        0x16t
        0x4t
        0x1at
        0x66t
        0x8t
        0xat
        0x4t
        0x1bt
        0x5t
        0x15t
        0xat
        0xft
        0x9t
        0x25t
        0x3bt
        0x34t
        0x27t
        0x29t
        0x4bt
        0x2dt
        0x2at
        0x30t
        0x4bt
        0x28t
        0x2dt
        0x30t
        0x6t
        0x18t
        0x13t
        0x15t
        0x12t
        0x2t
        0xft
        0x3t
        0x4at
        0x54t
        0x5dt
        0x44t
        0x59t
        0x49t
        0x42t
        0x58t
        0x58t
        0x7at
        0x75t
        0x3ct
        0x6ft
        0x3bt
        0x68t
        0x78t
        0x7at
        0x77t
        0x7et
        0x3bt
        0x6ft
        0x72t
        0x76t
        0x7et
        0x78t
        0x74t
        0x7ft
        0x7et
        0x3bt
        0x6bt
        0x69t
        0x72t
        0x74t
        0x69t
        0x3bt
        0x6ft
        0x74t
        0x3bt
        0x6ft
        0x72t
        0x76t
        0x7et
        0x78t
        0x74t
        0x7ft
        0x7et
        0x48t
        0x78t
        0x7at
        0x77t
        0x7et
        0x3bt
        0x79t
        0x7et
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x68t
        0x7et
        0x6ft
        0x35t
        0x22t
        0xet
        0xct
        0x3t
        0x8t
        0xft
        0x8t
        0xft
        0x6t
        0x41t
        0x4t
        0xft
        0x2t
        0x13t
        0x18t
        0x11t
        0x15t
        0x8t
        0xet
        0xft
        0x41t
        0x0t
        0xft
        0x5t
        0x41t
        0x2t
        0xet
        0xct
        0x11t
        0x13t
        0x4t
        0x12t
        0x12t
        0x8t
        0xet
        0xft
        0x41t
        0x8t
        0x12t
        0x41t
        0xft
        0xet
        0x15t
        0x41t
        0x12t
        0x14t
        0x11t
        0x11t
        0xet
        0x13t
        0x15t
        0x4t
        0x5t
        0x9t
        0x25t
        0x24t
        0x3et
        0x2ft
        0x24t
        0x3et
        0x9t
        0x25t
        0x27t
        0x3at
        0xbt
        0x26t
        0x2dt
        0x25t
        0x6at
        0x63t
        0x4ft
        0x4et
        0x54t
        0x45t
        0x4et
        0x54t
        0x65t
        0x4et
        0x43t
        0x61t
        0x4ct
        0x47t
        0x4ft
        0x0t
        0x4ft
        0x63t
        0x62t
        0x78t
        0x69t
        0x62t
        0x78t
        0x49t
        0x62t
        0x6ft
        0x63t
        0x68t
        0x65t
        0x62t
        0x6bt
        0x43t
        0x7et
        0x68t
        0x69t
        0x7et
        0x2ct
        0x4bt
        0x67t
        0x66t
        0x7ct
        0x6dt
        0x66t
        0x7ct
        0x4dt
        0x66t
        0x6bt
        0x67t
        0x6ct
        0x61t
        0x66t
        0x6ft
        0x5bt
        0x6bt
        0x67t
        0x78t
        0x6dt
        0x28t
        0x28t
        0x3t
        0xft
        0x38t
        0x15t
        0x1ct
        0x9t
        0x4ct
        0x1t
        0x2at
        0x26t
        0x11t
        0x3ct
        0x35t
        0x20t
        0x17t
        0x20t
        0x24t
        0x21t
        0x13t
        0x20t
        0x37t
        0x36t
        0x2ct
        0x2at
        0x2bt
        0x65t
        0x10t
        0x17t
        0x18t
        0x19t
        0x75t
        0x39t
        0x34t
        0x36t
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x26t
        0x34t
        0x38t
        0x25t
        0x39t
        0x30t
        0x75t
        0x26t
        0x3ct
        0x2ft
        0x30t
        0x75t
        0x3at
        0x20t
        0x21t
        0x75t
        0x3at
        0x33t
        0x75t
        0x27t
        0x34t
        0x3bt
        0x32t
        0x30t
        0x7bt
        0x4at
        0x4dt
        0x42t
        0x43t
        0x5dt
        0x6at
        0x6et
        0x6bt
        0x59t
        0x6at
        0x7dt
        0x7ct
        0x66t
        0x60t
        0x61t
        0x2ft
        0x3dt
        0x16t
        0x1bt
        0xat
        0x1t
        0x8t
        0xct
        0x1dt
        0x1ct
        0x58t
        0x2ct
        0xat
        0x19t
        0x1bt
        0x13t
        0x58t
        0x1et
        0x17t
        0xdt
        0x16t
        0x1ct
        0x58t
        0x1at
        0xdt
        0xct
        0x58t
        0x3bt
        0x17t
        0x16t
        0xct
        0x1dt
        0x16t
        0xct
        0x3dt
        0x16t
        0x1bt
        0x33t
        0x1dt
        0x1t
        0x31t
        0x3ct
        0x58t
        0xft
        0x19t
        0xbt
        0x58t
        0x16t
        0x17t
        0xct
        0x58t
        0x1et
        0x17t
        0xdt
        0x16t
        0x1ct
        0x5ft
        0x62t
        0x6et
        0x7ft
        0x74t
        0x69t
        0x73t
        0x75t
        0x74t
        0x3at
        0x78t
        0x73t
        0x6et
        0x3at
        0x73t
        0x69t
        0x3at
        0x69t
        0x7ft
        0x6et
        0x3at
        0x73t
        0x74t
        0x3at
        0x69t
        0x73t
        0x7dt
        0x74t
        0x7bt
        0x76t
        0x3at
        0x78t
        0x63t
        0x6et
        0x7ft
        0x69t
        0x40t
        0x5dt
        0x42t
        0x4et
        0x5bt
        0x15t
        0xft
        0x7ct
        0x5bt
        0x4et
        0x5dt
        0x5bt
        0x3t
        0xft
        0x6at
        0x41t
        0x4bt
        0x3t
        0xft
        0x7dt
        0x4at
        0x4et
        0x4bt
        0x60t
        0x5dt
        0x4bt
        0x4at
        0x5dt
        0x3t
        0xft
        0x63t
        0x4et
        0x56t
        0x4at
        0x5dt
        0x3t
        0xft
        0x7ct
        0x5bt
        0x56t
        0x43t
        0x4at
        0x3t
        0xft
        0x61t
        0x4et
        0x42t
        0x4at
        0x3t
        0xft
        0x62t
        0x4et
        0x5dt
        0x48t
        0x46t
        0x41t
        0x63t
        0x3t
        0xft
        0x62t
        0x4et
        0x5dt
        0x48t
        0x46t
        0x41t
        0x7dt
        0x3t
        0xft
        0x62t
        0x4et
        0x5dt
        0x48t
        0x46t
        0x41t
        0x79t
        0x3t
        0xft
        0x6at
        0x49t
        0x49t
        0x4at
        0x4ct
        0x5bt
        0x3t
        0xft
        0x7bt
        0x4at
        0x57t
        0x5bt
        0x30t
        0x1dt
        0x1ft
        0x15t
        0x12t
        0x1bt
        0x5ct
        0x13t
        0x12t
        0x10t
        0x5t
        0x5ct
        0xft
        0x9t
        0xct
        0xct
        0x13t
        0xet
        0x8t
        0x19t
        0x18t
        0x5ct
        0x15t
        0x12t
        0x5ct
        0x2ft
        0x15t
        0x11t
        0xct
        0x10t
        0x19t
        0x3et
        0x10t
        0x13t
        0x1ft
        0x17t
        0xft
        0x52t
        0x1ft
        0x33t
        0x3ct
        0x36t
        0x33t
        0x26t
        0x3dt
        0x20t
        0x2bt
        0x72t
        0x37t
        0x3et
        0x37t
        0x3ft
        0x37t
        0x3ct
        0x26t
        0x72t
        0x1t
        0x37t
        0x37t
        0x39t
        0x1bt
        0x16t
        0x72t
        0x3dt
        0x20t
        0x72t
        0x1t
        0x37t
        0x37t
        0x39t
        0x2t
        0x3dt
        0x21t
        0x3bt
        0x26t
        0x3bt
        0x3dt
        0x3ct
        0x72t
        0x3ct
        0x3dt
        0x26t
        0x72t
        0x34t
        0x3dt
        0x27t
        0x3ct
        0x36t
        0x7at
        0x42t
        0x5bt
        0x43t
        0x5et
        0x47t
        0x5bt
        0x52t
        0x17t
        0x64t
        0x52t
        0x50t
        0x5at
        0x52t
        0x59t
        0x43t
        0x17t
        0x52t
        0x5bt
        0x52t
        0x5at
        0x52t
        0x59t
        0x43t
        0x44t
        0x17t
        0x59t
        0x58t
        0x43t
        0x17t
        0x44t
        0x42t
        0x47t
        0x47t
        0x58t
        0x45t
        0x43t
        0x52t
        0x53t
        0x36t
        0x17t
        0x58t
        0xet
        0x19t
        0x14t
        0x11t
        0x1ct
        0x58t
        0xct
        0xat
        0x19t
        0x1bt
        0x13t
        0xbt
        0x58t
        0xft
        0x1dt
        0xat
        0x1dt
        0x58t
        0x1et
        0x17t
        0xdt
        0x16t
        0x1ct
        0x44t
        0x65t
        0x2at
        0x7ct
        0x6bt
        0x66t
        0x63t
        0x6et
        0x2at
        0x7ct
        0x6bt
        0x78t
        0x63t
        0x64t
        0x7et
        0x2at
        0x66t
        0x6ft
        0x64t
        0x6dt
        0x7et
        0x62t
        0x2at
        0x67t
        0x6bt
        0x79t
        0x61t
        0x2at
        0x6ct
        0x65t
        0x7ft
        0x64t
        0x6et
        0x60t
        0x6ct
        0x77t
        0x65t
        0x71t
        0x60t
        0x66t
        0x71t
        0x2bt
        0x27t
        0x30t
        0x3ct
        0x35t
        0x2et
        0x57t
        0x28t
        0x3ft
        0x2bt
        0x44t
        0x48t
        0x43t
        0x52t
        0x4ft
        0x43t
        0x38t
        0x56t
        0x44t
        0x44t
        0x51t
        0x5dt
        0x56t
        0x47t
        0x5at
        0x56t
        0x2dt
        0x57t
        0x56t
        0x44t
        0x3at
        0x45t
        0x49t
        0x40t
        0x59t
        0x54t
        0x45t
        0x43t
        0x54t
        0x33t
        0x8t
        0x3t
        0x1et
        0x16t
        0x3t
        0x5t
        0x12t
        0x3t
        0x2t
        0x46t
        0xft
        0x2t
        0x5ct
        0x46t
        0x18t
        0x23t
        0x28t
        0x35t
        0x3dt
        0x28t
        0x2et
        0x39t
        0x28t
        0x29t
        0x6dt
        0x21t
        0x2ct
        0x2et
        0x24t
        0x23t
        0x2at
        0x6dt
        0x3bt
        0x2ct
        0x21t
        0x38t
        0x28t
        0x77t
        0x6dt
        0x3ct
        0x35t
        0x27t
        0x3at
        0x2ft
        0x2dt
        0x58t
        0x5t
        0xct
        0x1et
        0x3t
        0x16t
        0x14t
        0x67t
        0x7ct
        0x1at
        0x0t
        0x1ct
        0x7ct
        0x12t
        0x3t
        0x4bt
        0x42t
        0x50t
        0x4dt
        0x58t
        0x5at
        0x29t
        0x32t
        0x54t
        0x4et
        0x52t
        0x32t
        0x5ct
        0x4et
        0x4dt
        0x2ct
        0x25t
        0x37t
        0x2at
        0x3ft
        0x3dt
        0x4et
        0x55t
        0x33t
        0x29t
        0x35t
        0x55t
        0x3bt
        0x2ct
        0x39t
        0x56t
        0x5ft
        0x4dt
        0x50t
        0x45t
        0x47t
        0x34t
        0x2ft
        0x49t
        0x53t
        0x4ft
        0x2ft
        0x53t
        0x50t
        0x6t
        0xft
        0x1dt
        0x0t
        0x15t
        0x17t
        0x18t
        0x7ft
        0x19t
        0x3t
        0x1ft
        0x7ft
        0x18t
        0x15t
        0x6t
        0x13t
        0x35t
        0x3ct
        0x2et
        0x30t
        0x4ct
        0x35t
        0x25t
        0x34t
        0x4ct
        0x25t
        0x2ct
        0x36t
        0x31t
        0x20t
        0x20t
        0x61t
        0x68t
        0x63t
        0x7ft
        0x72t
        0x78t
        0x65t
        0x76t
        0x44t
        0x4dt
        0x44t
        0x42t
        0x2at
        0xct
        0x5t
        0xct
        0xat
        0x63t
        0x71t
        0x7dt
        0x68t
        0x6et
        0x73t
        0x6ft
        0x77t
        0x7dt
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x2dt
        0x75t
        0x67t
        0x60t
        0x6ft
        0x3ft
        0x2dt
        0x2at
        0x25t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PtjeSixlQpPnp33LbTolurfrF5aBxWMN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zsPWFAYo6WN4WLRLivc6JVSph6JkIRth"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XheyHWRN6othIFLpaes4AkwCM0c9DMBL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WLz3vbqVAvFNW8GJMAEq6yPWbMM9CaUw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Xodlb2gLYburpvZCOlf7Ugos4D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3NxGJ5nCydCtg30cLxHhJHXlDiPWCbyN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QrznFntGQRtbXA7cSaAHWbiKbufqFBbd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iW7nVRcCTDgQKTtcLRaOezFHTOIda"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

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

    .line 62454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 62455
    return-void

    .line 62456
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 62457
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 62458
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    .line 62459
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    .line 62460
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 62461
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    sub-int v0, p2, v0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 62463
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Cc;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62464
    move-object v4, p0

    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x34b

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62465
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0w:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Z5;->A0A(Lcom/facebook/ads/redexgen/X/CH;[BI)V

    .line 62466
    return-void

    .line 62467
    :cond_0
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x341

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62468
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0u:[B

    invoke-direct {v4, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Z5;->A0A(Lcom/facebook/ads/redexgen/X/CH;[BI)V

    .line 62469
    return-void

    .line 62470
    :cond_1
    iget-object v5, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    .line 62471
    .local v4, "output":Lcom/facebook/ads/redexgen/X/CS;
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0S:Z

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 62472
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    if-eqz v0, :cond_d

    .line 62473
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    .line 62474
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0X:Z

    const/16 v9, 0x80

    if-nez v0, :cond_2

    .line 62475
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62476
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    add-int/2addr v0, v6

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62477
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v2

    and-int/2addr v0, v9

    if-eq v0, v9, :cond_c

    .line 62478
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v2

    iput-byte v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A00:B

    .line 62479
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0X:Z

    .line 62480
    :cond_2
    iget-byte v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A00:B

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_b

    const/4 v0, 0x1

    .line 62481
    .local p1, "isEncrypted":Z
    :goto_0
    if-eqz v0, :cond_10

    .line 62482
    iget-byte v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A00:B

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    const/4 v8, 0x1

    .line 62483
    .local v0, "hasSubsampleEncryption":Z
    :goto_1
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    .line 62484
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0T:Z

    if-nez v0, :cond_3

    .line 62485
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v7, 0x8

    invoke-interface {p1, v0, v2, v7}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62486
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62487
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0T:Z

    .line 62488
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    if-eqz v8, :cond_9

    :goto_2
    or-int/2addr v9, v7

    int-to-byte v0, v9

    aput-byte v0, v1, v2

    .line 62489
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62490
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v5, v0, v6}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62491
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    add-int/2addr v0, v6

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62492
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62493
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0f:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v5, v0, v7}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62494
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62495
    :cond_3
    if-eqz v8, :cond_10

    .line 62496
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0U:Z

    if-nez v0, :cond_4

    .line 62497
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62498
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    add-int/2addr v0, v6

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62499
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62500
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0A:I

    .line 62501
    iput-boolean v6, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0U:Z

    .line 62502
    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0A:I

    mul-int/lit8 v1, v0, 0x4

    .line 62503
    .local v1, "samplePartitionDataSize":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 62504
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62505
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62506
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0A:I

    div-int/2addr v0, v3

    add-int/2addr v0, v6

    int-to-short v1, v0

    .line 62507
    .local v0, "subsampleCount":S
    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 62508
    .local v0, "subsampleDataSize":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 62509
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v6, :cond_6

    .line 62510
    :cond_5
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    .line 62511
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62512
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62513
    const/4 v9, 0x0

    .line 62514
    .local v0, "partitionOffset":I
    const/4 v7, 0x0

    .local v3, "i":I
    :goto_3
    iget v8, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0A:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "k69mdXr219EPEfxjmleoRJuaia7o0PSr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v7, v8, :cond_f

    .line 62515
    move v2, v9

    .line 62516
    .local p2, "previousPartitionOffset":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v9

    .line 62517
    rem-int/lit8 v0, v7, 0x2

    if-nez v0, :cond_8

    .line 62518
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    sub-int v0, v9, v2

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62519
    .end local p2    # "previousPartitionOffset":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 62520
    :cond_8
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    sub-int v0, v9, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 62521
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 62522
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 62523
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 62524
    :cond_c
    const/16 v2, 0x1f8

    const/16 v1, 0x23

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62525
    .end local p1    # "isEncrypted":Z
    .end local v3    # "i":I
    .end local v1    # "samplePartitionDataSize":I
    .end local v0    # "partitionOffset":I
    .end local v0
    .end local v0
    .end local v0
    :cond_d
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    if-eqz v0, :cond_10

    .line 62526
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "eRgpr0IiA3tZEnoRsZk5vLwdwByA2WoR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "B2R3kYZJBQt6DDNd5X8Bo30p1EhdmlAk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    array-length v0, v0

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    goto :goto_6

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "QAYpS6vLHXt9MUnC4aIg5miPxTeCV04h"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4gOZ0q0O5OtGCiklrvU5TO6zmpG8Wxaq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    array-length v0, v0

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    goto :goto_6

    .line 62527
    .end local v3
    :cond_f
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    sub-int v2, p3, v0

    sub-int/2addr v2, v9

    .line 62528
    .local v3, "finalPartitionSize":I
    rem-int/2addr v8, v3

    const/4 v0, 0x1

    if-ne v8, v0, :cond_14

    .line 62529
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62530
    :goto_5
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0g:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 62531
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0g:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v5, v0, v6}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62532
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    add-int/2addr v0, v6

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62533
    :cond_10
    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0S:Z

    .line 62534
    :cond_11
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr p3, v0

    .line 62535
    .end local v0
    .local p3, "size":I
    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x3aa

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0x3c7

    const/16 v1, 0x10

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 62536
    :cond_12
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 62537
    .local p1, "nalLengthData":[B
    const/4 v1, 0x0

    aput-byte v1, v6, v1

    .line 62538
    const/4 v0, 0x1

    aput-byte v1, v6, v0

    .line 62539
    aput-byte v1, v6, v3

    .line 62540
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0M:I

    .line 62541
    .local p2, "nalUnitLengthFieldLength":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0M:I

    rsub-int/lit8 v2, v0, 0x4

    .line 62542
    .local p3, "nalUnitLengthFieldLengthDiff":I
    :goto_7
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    if-ge v0, p3, :cond_18

    .line 62543
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A09:I

    if-nez v1, :cond_13

    .line 62544
    invoke-direct {v4, p1, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/Z5;->A0B(Lcom/facebook/ads/redexgen/X/CH;[BII)V

    .line 62545
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62546
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0h:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A09:I

    .line 62547
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0i:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62548
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0i:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x4

    invoke-interface {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62549
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    goto :goto_7

    .line 62550
    :cond_13
    invoke-direct {v4, p1, v5, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CS;I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A09:I

    goto :goto_7

    .line 62551
    :cond_14
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    int-to-short v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62552
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0R:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    .line 62553
    :cond_15
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    if-eqz v0, :cond_16

    .line 62554
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 62555
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    invoke-virtual {v1, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Cd;->A01(Lcom/facebook/ads/redexgen/X/CH;II)V

    .line 62556
    :cond_16
    :goto_9
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    if-ge v0, p3, :cond_18

    .line 62557
    sub-int v0, p3, v0

    invoke-direct {v4, p1, v5, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CS;I)I

    goto :goto_9

    .line 62558
    :cond_17
    const/4 v0, 0x0

    goto :goto_8

    .line 62559
    :cond_18
    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v2, 0xb5

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 62560
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0n:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62561
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A0n:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v1, 0x4

    invoke-interface {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62562
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62563
    :cond_19
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/CH;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62564
    array-length v3, p2

    add-int/2addr v3, p3

    .line 62565
    .local p0, "sizeWithPrefix":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 62566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    add-int v0, v3, p3

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 62567
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, p2

    invoke-interface {p1, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 62569
    return-void

    .line 62570
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/CH;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62572
    .local p0, "pendingStrippedBytes":I
    add-int v1, p3, v2

    sub-int v0, p4, v2

    invoke-interface {p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62573
    if-lez v2, :cond_0

    .line 62574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0j:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p2, p3, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 62575
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A07:I

    .line 62576
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V
    .locals 14

    .line 62577
    move-object v0, p0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    move-wide/from16 v8, p2

    if-eqz v1, :cond_0

    .line 62578
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0X:Lcom/facebook/ads/redexgen/X/Cd;

    invoke-virtual {v1, p1, v8, v9}, Lcom/facebook/ads/redexgen/X/Cd;->A03(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 62579
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Z5;->A0V:Z

    .line 62580
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z5;->A05()V

    .line 62581
    return-void

    .line 62582
    :cond_0
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v3, 0x34b

    const/16 v2, 0xb

    const/16 v1, 0x38

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62583
    const/16 v4, 0x13

    const-wide/16 v5, 0x3e8

    sget-object v7, Lcom/facebook/ads/redexgen/X/Z5;->A0x:[B

    const/16 v3, 0x21

    const/16 v2, 0x13

    const/16 v1, 0x4b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Z5;->A0D(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;IJ[B)V

    .line 62584
    :cond_1
    :goto_1
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    iget v11, v0, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    const/4 v12, 0x0

    iget-object v13, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    goto :goto_0

    .line 62585
    :cond_2
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    const/16 v3, 0x341

    const/16 v2, 0xa

    const/16 v1, 0x2d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62586
    const/16 v4, 0x15

    const-wide/16 v5, 0x2710

    sget-object v7, Lcom/facebook/ads/redexgen/X/Z5;->A0v:[B

    const/16 v3, 0xe

    const/16 v2, 0x13

    const/16 v1, 0x77

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Z5;->A0D(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;IJ[B)V

    goto :goto_1
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;IJ[B)V
    .locals 8

    .line 62587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0C:J

    move v4, p3

    move-object v3, p2

    move-object v7, p6

    move-wide v5, p4

    invoke-static/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Z5;->A0E([BJLjava/lang/String;IJ[B)V

    .line 62588
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 62589
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0m:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A08:I

    .line 62590
    return-void
.end method

.method public static A0E([BJLjava/lang/String;IJ[B)V
    .locals 10

    .line 62591
    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    move-object/from16 v5, p7

    if-nez v0, :cond_0

    .line 62592
    move-object v1, v5

    .line 62593
    .local p1, "timeCodeData":[B
    .end local v2
    .end local v6
    .end local v2
    .local p1, "timeCodeData":[B
    :goto_0
    array-length v0, v5

    invoke-static {v1, v2, p0, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62594
    return-void

    .line 62595
    .end local p1    # "timeCodeData":[B
    :cond_0
    const-wide v0, 0xd693a400L

    div-long v0, p1, v0

    long-to-int v4, v0

    .line 62596
    .local v2, "hours":I
    mul-int/lit16 v0, v4, 0xe10

    int-to-long v0, v0

    const-wide/32 v7, 0xf4240

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    .line 62597
    .end local v1
    .local p3, "durationUs":J
    const-wide/32 v0, 0x3938700

    div-long v0, p1, v0

    long-to-int v3, v0

    .line 62598
    .local p1, "minutes":I
    mul-int/lit8 v0, v3, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    .line 62599
    div-long v0, p1, v7

    long-to-int v6, v0

    .line 62600
    .local v2, "seconds":I
    int-to-long v0, v6

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    .line 62601
    div-long/2addr p1, p5

    long-to-int v8, p1

    .line 62602
    .local v6, "lastValue":I
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/Object;

    .line 62603
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

    .line 62604
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0j(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/CN;J)Z
    .locals 7

    .line 62605
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Y:Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 62606
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0J:J

    .line 62607
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0F:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 62608
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Y:Z

    .line 62609
    return v6

    .line 62610
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0a:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0J:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 62611
    iput-wide v3, p1, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 62612
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0J:J

    .line 62613
    return v6

    .line 62614
    :cond_1
    return v5
.end method

.method public static A0G(Ljava/lang/String;)Z
    .locals 4

    .line 62615
    const/16 v2, 0x3ee

    const/4 v1, 0x5

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62616
    const/16 v2, 0x3f3

    const/4 v1, 0x5

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62617
    const/16 v2, 0x386

    const/4 v1, 0x7

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62618
    const/16 v2, 0x3b9

    const/16 v1, 0xe

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62619
    const/16 v2, 0x39b

    const/16 v1, 0xf

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62620
    const/16 v2, 0x38d

    const/16 v1, 0xe

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62621
    const/16 v2, 0x3aa

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62622
    const/16 v2, 0x3c7

    const/16 v1, 0x10

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "gFQvwDmhScZxFRNyxLtLbYo4v3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62623
    const/16 v2, 0x3d7

    const/16 v1, 0xf

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62624
    const/16 v2, 0x3e6

    const/16 v1, 0x8

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62625
    const/16 v2, 0x9a

    const/4 v1, 0x6

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62626
    const/16 v2, 0xb5

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62627
    const/16 v2, 0x4a

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "yYEJAbRmKSD6Tn3gjgDK46nuM7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62628
    const/16 v2, 0x80

    const/16 v1, 0x9

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62629
    const/16 v2, 0x89

    const/16 v1, 0x9

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62630
    const/16 v2, 0x4f

    const/4 v1, 0x5

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62631
    const/16 v2, 0x74

    const/4 v1, 0x6

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62632
    const/16 v2, 0xad

    const/16 v1, 0x8

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62633
    const/16 v2, 0x54

    const/4 v1, 0x5

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62634
    const/16 v2, 0x59

    const/16 v1, 0xd

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62635
    const/16 v2, 0x66

    const/16 v1, 0xe

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "pyyZW9LYVntbYlKTrY71spzm2cbnCDIb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62636
    :goto_0
    const/16 v2, 0x7a

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62637
    const/16 v2, 0x92

    const/16 v1, 0x8

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62638
    const/16 v2, 0xa0

    const/16 v1, 0xd

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62639
    const/16 v2, 0x34b

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62640
    const/16 v2, 0x341

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62641
    const/16 v2, 0x356

    const/16 v1, 0x8

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62642
    const/16 v2, 0x337

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62643
    const/16 v2, 0x32f

    const/16 v1, 0x8

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 62644
    :goto_1
    return v0

    .line 62645
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "q8IJ3S8YGVBTsJL9xOb8znK6VKYJyoeN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "yoxoUkUsMX88tVPYJ3NBxXOHcZGknnYN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0
.end method

.method public static synthetic A0H()[B
    .locals 1

    .line 62646
    sget-object v0, Lcom/facebook/ads/redexgen/X/Z5;->A0t:[B

    return-object v0
.end method

.method public static A0I([II)[I
    .locals 1

    .line 62647
    if-nez p0, :cond_0

    .line 62648
    new-array v0, p1, [I

    return-object v0

    .line 62649
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 62650
    return-object p0

    .line 62651
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

    .line 62652
    const/16 v0, 0xa0

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_f

    const/16 v4, 0xae

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "rbl1Q01lKztgjfT5AU1HA1uCy8pKF6Jb"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "0IgewP00Z0tSvfgvmyCD0no1Nhaiy8Yj"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-eq p1, v4, :cond_d

    const/16 v0, 0x4dbb

    const v6, 0x1c53bb6b

    if-eq p1, v0, :cond_b

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_9

    const/16 v4, 0x6d80

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "mvRw2Aey0bC26pGUqGZgnnTCCn"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    if-eq p1, v4, :cond_7

    const v0, 0x1549a966

    if-eq p1, v0, :cond_5

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_3

    if-eq p1, v6, :cond_2

    goto/16 :goto_0

    .line 62653
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0a:Z

    if-nez v0, :cond_12

    .line 62654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z5;->A02()Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 62655
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0a:Z

    goto/16 :goto_0

    .line 62656
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 62657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 62658
    goto/16 :goto_0

    .line 62659
    :cond_4
    const/16 v2, 0x2f4

    const/16 v1, 0x1a

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62660
    :cond_5
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0M:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_6

    .line 62661
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0M:J

    .line 62662
    :cond_6
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0G:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_12

    .line 62663
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/Z5;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0H:J

    goto/16 :goto_0

    .line 62664
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 62665
    :cond_8
    const/16 v2, 0xf3

    const/16 v1, 0x35

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62666
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    if-eqz v0, :cond_12

    .line 62667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    if-eqz v0, :cond_a

    .line 62668
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v5, v2, [Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/facebook/ads/redexgen/X/9u;->A04:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/CR;->A03:[B

    const/16 v2, 0x400

    const/16 v1, 0xa

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v0, v5, v7

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v5}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;-><init>([Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/Cc;->A0U:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    goto :goto_0

    .line 62669
    :cond_a
    const/16 v2, 0x1c1

    const/16 v1, 0x37

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62670
    :cond_b
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0B:I

    const/4 v0, -0x1

    if-eq v5, v0, :cond_c

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0I:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_c

    .line 62671
    if-ne v5, v6, :cond_12

    .line 62672
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0F:J

    goto :goto_0

    .line 62673
    :cond_c
    const/16 v2, 0x29b

    const/16 v1, 0x32

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62674
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z5;->A0G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62675
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0N:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cc;->A0A(Lcom/facebook/ads/redexgen/X/CI;I)V

    .line 62676
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0N:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62677
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    .line 62678
    goto :goto_0

    .line 62679
    :cond_f
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_10

    .line 62680
    return-void

    .line 62681
    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0W:Z

    if-nez v0, :cond_11

    .line 62682
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    .line 62683
    :cond_11
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A05:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Cc;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0D:J

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 62684
    iput v7, p0, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    .line 62685
    :cond_12
    :goto_0
    return-void
.end method

.method public final A0K(ID)V
    .locals 2

    .line 62686
    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 62687
    :goto_0
    return-void

    .line 62688
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A06:F

    .line 62689
    goto :goto_0

    .line 62690
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A07:F

    .line 62691
    goto :goto_0

    .line 62692
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A04:F

    .line 62693
    goto :goto_0

    .line 62694
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A05:F

    .line 62695
    goto :goto_0

    .line 62696
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A02:F

    .line 62697
    goto :goto_0

    .line 62698
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A03:F

    .line 62699
    goto :goto_0

    .line 62700
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A08:F

    .line 62701
    goto :goto_0

    .line 62702
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A09:F

    .line 62703
    goto :goto_0

    .line 62704
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A00:F

    .line 62705
    goto :goto_0

    .line 62706
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-float v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A01:F

    .line 62707
    goto :goto_0

    .line 62708
    :cond_0
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0G:J

    .line 62709
    goto :goto_0

    .line 62710
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    double-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0O:I

    .line 62711
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

    move/from16 v5, p2

    .line 62712
    move-object/from16 v7, p0

    const/16 v0, 0xa1

    const/4 v3, 0x4

    const/16 v13, 0xa3

    const/4 v2, 0x0

    const/4 v12, 0x1

    move/from16 v6, p1

    move-object/from16 v4, p3

    if-eq v6, v0, :cond_5

    if-eq v6, v13, :cond_5

    const/16 v0, 0x4255

    if-eq v6, v0, :cond_4

    const/16 v0, 0x47e2

    if-eq v6, v0, :cond_1f

    const/16 v9, 0x53ab

    sget-object v8, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v8, v0

    const/4 v0, 0x6

    aget-object v8, v8, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v8, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "8HR6gUBClUOA9VGF2AqdEWeY5A09ChiZ"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    if-eq v6, v9, :cond_3

    const/16 v0, 0x63a2

    if-eq v6, v0, :cond_2

    const/16 v0, 0x7672

    if-ne v6, v0, :cond_1

    .line 62713
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v0, v5, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0e:[B

    .line 62714
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0e:[B

    invoke-interface {v4, v0, v2, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62715
    goto/16 :goto_d

    .line 62716
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35e

    const/16 v1, 0xf

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62717
    :cond_2
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v0, v5, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0d:[B

    .line 62718
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0d:[B

    invoke-interface {v4, v0, v2, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62719
    goto/16 :goto_d

    .line 62720
    :cond_3
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 62721
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sub-int/2addr v3, v5

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62722
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 62723
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0l:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v1

    long-to-int v0, v1

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0B:I

    .line 62724
    goto/16 :goto_d

    .line 62725
    .end local v7
    :cond_4
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-array v0, v5, [B

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    .line 62726
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0f:[B

    invoke-interface {v4, v0, v2, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62727
    goto/16 :goto_d

    .line 62728
    :cond_5
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    const/16 v8, 0x8

    if-nez v0, :cond_6

    .line 62729
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, v4, v2, v12, v8}, Lcom/facebook/ads/redexgen/X/Cf;->A05(Lcom/facebook/ads/redexgen/X/CH;ZZI)J

    move-result-wide v0

    long-to-int v9, v0

    iput v9, v7, Lcom/facebook/ads/redexgen/X/Z5;->A05:I

    .line 62730
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A04()I

    move-result v0

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    .line 62731
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0C:J

    .line 62732
    iput v12, v7, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    .line 62733
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 62734
    :cond_6
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A05:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Cc;

    .line 62735
    .local v7, "track":Lcom/facebook/ads/redexgen/X/Cc;
    if-nez v9, :cond_7

    .line 62736
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    sub-int/2addr v5, v0

    invoke-interface {v4, v5}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 62737
    iput v2, v7, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    .line 62738
    return-void

    .line 62739
    :cond_7
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    if-ne v0, v12, :cond_9

    .line 62740
    const/4 v14, 0x3

    invoke-direct {v7, v4, v14}, Lcom/facebook/ads/redexgen/X/Z5;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 62741
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v10, v0, 0x6

    shr-int/2addr v10, v12

    .line 62742
    .local v2, "lacing":I
    const/16 v11, 0xff

    if-nez v10, :cond_10

    .line 62743
    iput v12, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    .line 62744
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    invoke-static {v0, v12}, Lcom/facebook/ads/redexgen/X/Z5;->A0I([II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    .line 62745
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v14

    aput v5, v1, v2

    .line 62746
    :goto_0
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x0

    aget-byte v5, v1, v0

    shl-int/2addr v5, v8

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v11

    or-int/2addr v5, v0

    .line 62747
    .local v6, "timecode":I
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0E:J

    int-to-long v0, v5

    invoke-direct {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0D:J

    .line 62748
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v3, 0x2

    aget-byte v5, v0, v3

    and-int/2addr v5, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_e

    if-ne v5, v8, :cond_f

    :goto_1
    const/4 v2, 0x1

    .line 62749
    .local v5, "isInvisible":Z
    :goto_2
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Cc;->A0Q:I

    if-eq v0, v3, :cond_8

    const/16 v0, 0xa3

    if-ne v6, v0, :cond_d

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v1, v0, v3

    const/16 v0, 0x80

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_d

    :cond_8
    const/4 v0, 0x1

    .line 62750
    .local v4, "isKeyframe":Z
    :goto_3
    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 62751
    :goto_4
    if-eqz v2, :cond_b

    const/high16 v0, -0x80000000

    :goto_5
    or-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A01:I

    .line 62752
    const/4 v0, 0x2

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    .line 62753
    const/4 v0, 0x0

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    .line 62754
    .end local v2    # "lacing":I
    :cond_9
    const/16 v0, 0xa3

    if-ne v6, v0, :cond_1e

    .line 62755
    :goto_6
    iget v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    if-ge v1, v0, :cond_1d

    .line 62756
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    aget v0, v0, v1

    invoke-direct {v7, v4, v9, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A09(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Cc;I)V

    .line 62757
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0D:J

    iget v8, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    iget v6, v9, Lcom/facebook/ads/redexgen/X/Cc;->A0F:I

    sget-object v5, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x6

    aget-object v5, v5, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    mul-int/2addr v8, v6

    div-int/lit16 v0, v8, 0x3e8

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 62758
    .local v6, "sampleTimeUs":J
    invoke-direct {v7, v9, v2, v3}, Lcom/facebook/ads/redexgen/X/Z5;->A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 62759
    iget v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    .line 62760
    .end local v6    # "sampleTimeUs":J
    goto :goto_6

    :cond_a
    sget-object v5, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "E2JpTArVwuU3wpOoffpeNj7iCqMKWnIf"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    mul-int/2addr v8, v6

    div-int/lit16 v0, v8, 0x3e8

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 62761
    .local v6, "sampleTimeUs":J
    invoke-direct {v7, v9, v2, v3}, Lcom/facebook/ads/redexgen/X/Z5;->A0C(Lcom/facebook/ads/redexgen/X/Cc;J)V

    .line 62762
    iget v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A03:I

    .line 62763
    .end local v6    # "sampleTimeUs":J
    goto :goto_6

    .line 62764
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 62765
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 62766
    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "5G9wMrzgr3HoIE5OqVQ73d664iMAVR2N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "QdpFkvZSEeJoLmtyZ134AKJ6iIUqyZiN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v8, :cond_f

    goto/16 :goto_1

    .line 62767
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 62768
    :cond_10
    if-ne v6, v13, :cond_23

    .line 62769
    invoke-direct {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/Z5;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 62770
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v14

    and-int/2addr v0, v11

    add-int/2addr v0, v12

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    .line 62771
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    .line 62772
    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A0I([II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    .line 62773
    if-ne v10, v1, :cond_11

    .line 62774
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v3

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    div-int/2addr v5, v1

    .line 62775
    .local v13, "blockLacingSampleSize":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    invoke-static {v0, v2, v1, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 62776
    .end local v13    # "blockLacingSampleSize":I
    goto/16 :goto_0

    :cond_11
    if-ne v10, v12, :cond_15

    .line 62777
    const/4 v15, 0x0

    .line 62778
    .local v6, "totalSamplesSize":I
    const/4 v10, 0x4

    .line 62779
    .local v13, "headerSize":I
    const/4 v13, 0x0

    .local v0, "sampleIndex":I
    :goto_7
    iget v3, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    add-int/lit8 v0, v3, -0x1

    if-ge v13, v0, :cond_14

    .line 62780
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_13

    sget-object v14, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "HssTvrarjitDxoBDF2Pnj4UTJMHcRuUP"

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const-string v1, "K3IxBmd25ftGgmGYMlH4ryvoOn2rdnQj"

    const/4 v0, 0x6

    aput-object v1, v14, v0

    aput v2, v3, v13

    .line 62781
    :cond_12
    :goto_8
    add-int/2addr v10, v12

    invoke-direct {v7, v4, v10}, Lcom/facebook/ads/redexgen/X/Z5;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 62782
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v10, -0x1

    aget-byte v3, v1, v0

    and-int/2addr v3, v11

    .line 62783
    .local v5, "byteValue":I
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    aget v0, v1, v13

    add-int/2addr v0, v3

    aput v0, v1, v13

    .line 62784
    if-eq v3, v11, :cond_12

    .line 62785
    aget v0, v1, v13

    add-int/2addr v15, v0

    .line 62786
    .end local v5    # "byteValue":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_13
    aput v2, v3, v13

    goto :goto_8

    .line 62787
    .end local v0    # "sampleIndex":I
    :cond_14
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    sub-int/2addr v3, v12

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v10

    sub-int/2addr v5, v15

    aput v5, v1, v3

    .line 62788
    .end local v6    # "totalSamplesSize":I
    .end local v13    # "headerSize":I
    goto/16 :goto_0

    :cond_15
    if-ne v10, v14, :cond_22

    .line 62789
    const/16 v17, 0x0

    .line 62790
    .restart local v6    # "totalSamplesSize":I
    const/4 v10, 0x4

    .line 62791
    .local v5, "headerSize":I
    const/4 v13, 0x0

    .local v13, "sampleIndex":I
    :goto_9
    iget v3, v7, Lcom/facebook/ads/redexgen/X/Z5;->A02:I

    add-int/lit8 v0, v3, -0x1

    if-ge v13, v0, :cond_1c

    .line 62792
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    aput v2, v0, v13

    .line 62793
    add-int/lit8 v10, v10, 0x1

    invoke-direct {v7, v4, v10}, Lcom/facebook/ads/redexgen/X/Z5;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 62794
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v10, -0x1

    aget-byte v0, v1, v0

    if-eqz v0, :cond_21

    .line 62795
    const-wide/16 v2, 0x0

    .line 62796
    .local v0, "readValue":J
    const/4 v14, 0x0

    .local v12, "i":I
    :goto_a
    if-ge v14, v8, :cond_19

    .line 62797
    rsub-int/lit8 v16, v14, 0x7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v15, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "Bykf528VWyTJ6zjZNIQBG2ExBd"

    const/4 v0, 0x4

    aput-object v1, v15, v0

    shl-int v12, v12, v16

    .line 62798
    .local v8, "lengthMask":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v10, -0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v12

    if-eqz v0, :cond_17

    .line 62799
    add-int/lit8 v2, v10, -0x1

    .line 62800
    .local v4, "readPosition":I
    add-int/2addr v10, v14

    .line 62801
    invoke-direct {v7, v4, v10}, Lcom/facebook/ads/redexgen/X/Z5;->A08(Lcom/facebook/ads/redexgen/X/CH;I)V

    .line 62802
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v1, v2, 0x1

    .end local v4    # "readPosition":I
    .local v1, "readPosition":I
    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    xor-int/lit8 v0, v12, -0x1

    and-int/2addr v2, v0

    int-to-long v2, v2

    .line 62803
    .end local v1    # "readPosition":I
    .restart local v4    # "readPosition":I
    :goto_b
    if-ge v1, v10, :cond_18

    .line 62804
    shl-long/2addr v2, v8

    .line 62805
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0k:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v12, v1, 0x1

    .end local v4    # "readPosition":I
    .restart local v1    # "readPosition":I
    aget-byte v0, v0, v1

    and-int/2addr v0, v11

    int-to-long v0, v0

    or-long/2addr v2, v0

    move v1, v12

    goto :goto_b

    .line 62806
    .end local v4
    .end local v8    # "lengthMask":I
    :cond_17
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_a

    .line 62807
    .end local v1    # "readPosition":I
    .restart local v4    # "readPosition":I
    :cond_18
    if-lez v13, :cond_19

    .line 62808
    mul-int/lit8 v0, v14, 0x7

    add-int/lit8 v0, v0, 0x6

    const-wide/16 v14, 0x1

    shl-long v0, v14, v0

    sub-long/2addr v0, v14

    sub-long/2addr v2, v0

    .line 62809
    .end local v12    # "i":I
    :cond_19
    const-wide/32 v14, -0x80000000

    cmp-long v0, v2, v14

    if-ltz v0, :cond_20

    const-wide/32 v14, 0x7fffffff

    cmp-long v0, v2, v14

    if-gtz v0, :cond_20

    .line 62810
    long-to-int v12, v2

    .line 62811
    .local v4, "intReadValue":I
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    .line 62812
    if-nez v13, :cond_1a

    .line 62813
    :goto_c
    aput v12, v1, v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1b

    .line 62814
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "z0Au1LkbuRNouNVheQnfVlMARF4HCclD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    aget v0, v0, v13

    add-int v17, v17, v0

    .line 62815
    .end local v4    # "intReadValue":I
    .end local v0    # "readValue":J
    add-int/lit8 v13, v13, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto/16 :goto_9

    .line 62816
    :cond_1a
    add-int/lit8 v0, v13, -0x1

    aget v0, v1, v0

    add-int/2addr v12, v0

    goto :goto_c

    .line 62817
    :cond_1b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "Jxw4JkcEKQdQjQ2wbghJK6p5EXksCnqX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    aget v0, v0, v13

    add-int v17, v17, v0

    .line 62818
    .end local v4
    .end local v0
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto/16 :goto_9

    .line 62819
    .end local v13    # "sampleIndex":I
    :cond_1c
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    const/4 v0, 0x1

    sub-int/2addr v3, v0

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v10

    sub-int v5, v5, v17

    aput v5, v1, v3

    .line 62820
    .end local v6    # "totalSamplesSize":I
    .end local v5    # "headerSize":I
    goto/16 :goto_0

    .line 62821
    :cond_1d
    const/4 v0, 0x0

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    goto :goto_d

    .line 62822
    :cond_1e
    const/4 v1, 0x0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0b:[I

    aget v0, v0, v1

    invoke-direct {v7, v4, v9, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A09(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Cc;I)V

    .line 62823
    goto :goto_d

    .line 62824
    :cond_1f
    new-array v3, v5, [B

    .line 62825
    .local v7, "encryptionKey":[B
    invoke-interface {v4, v3, v2, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 62826
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CR;

    invoke-direct {v0, v12, v3, v2, v2}, Lcom/facebook/ads/redexgen/X/CR;-><init>(I[BII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    .line 62827
    .end local v7    # "encryptionKey":[B
    :goto_d
    return-void

    .line 62828
    .restart local v0    # "readValue":J
    :cond_20
    const/16 v2, 0x18c

    const/16 v1, 0x25

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62829
    .end local v0    # "readValue":J
    :cond_21
    const/16 v2, 0x30e

    const/16 v1, 0x21

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62830
    .end local v6
    .end local v5
    .end local v4
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x36d

    const/16 v1, 0x19

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62831
    :cond_23
    const/16 v2, 0x275

    const/16 v1, 0x26

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0M(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 62832
    const/16 v3, 0x5031

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v4

    if-eq p1, v3, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v7, 0x1

    if-eq p1, v0, :cond_11

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v4, 0x7

    const/4 v3, 0x6

    packed-switch p1, :pswitch_data_0

    .line 62833
    :cond_0
    :goto_0
    return-void

    .line 62834
    :pswitch_0
    long-to-int v0, p2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 62835
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0C:I

    .line 62836
    goto :goto_0

    .line 62837
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0C:I

    .line 62838
    goto :goto_0

    .line 62839
    :pswitch_1
    long-to-int v7, p2

    if-eq v7, v6, :cond_7

    const/16 v6, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v5, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "BNY"

    const/4 v0, 0x7

    aput-object v1, v5, v0

    if-eq v7, v6, :cond_5

    const/16 v0, 0x12

    if-eq v7, v0, :cond_4

    if-eq v7, v3, :cond_7

    if-eq v7, v4, :cond_7

    goto :goto_0

    .line 62840
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v4, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    .line 62841
    goto :goto_0

    .line 62842
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    iput v3, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    .line 62843
    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "2BcX3syCXJtWqdpX1qkuhAX2qE5R3ro0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "aMiDNxLEmFtOjuqrXAq5lyKODggVFywu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    goto :goto_0

    .line 62844
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0E:I

    .line 62845
    goto :goto_0

    .line 62846
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-boolean v6, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0b:Z

    .line 62847
    long-to-int v1, p2

    if-eq v1, v6, :cond_a

    const/16 v0, 0x9

    if-eq v1, v0, :cond_9

    const/4 v0, 0x4

    if-eq v1, v0, :cond_8

    const/4 v0, 0x5

    if-eq v1, v0, :cond_8

    if-eq v1, v3, :cond_8

    if-eq v1, v4, :cond_8

    goto/16 :goto_0

    .line 62848
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0D:I

    .line 62849
    goto/16 :goto_0

    .line 62850
    :cond_9
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0D:I

    .line 62851
    goto/16 :goto_0

    .line 62852
    :cond_a
    iput v6, v2, Lcom/facebook/ads/redexgen/X/Cc;->A0D:I

    .line 62853
    goto/16 :goto_0

    .line 62854
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0K:I

    .line 62855
    goto/16 :goto_0

    .line 62856
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0L:I

    .line 62857
    goto/16 :goto_0

    .line 62858
    :sswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0Q:I

    .line 62859
    goto/16 :goto_0

    .line 62860
    :sswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    cmp-long v0, p2, v7

    if-nez v0, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0Z:Z

    .line 62861
    goto/16 :goto_0

    .line 62862
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Z5;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0C:J

    .line 62863
    goto/16 :goto_0

    .line 62864
    :sswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0B:I

    .line 62865
    goto/16 :goto_0

    .line 62866
    :sswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0R:I

    .line 62867
    goto/16 :goto_0

    .line 62868
    :sswitch_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Z5;->A01(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 62869
    goto/16 :goto_0

    .line 62870
    :sswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0J:I

    .line 62871
    goto/16 :goto_0

    .line 62872
    :sswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0N:I

    .line 62873
    goto/16 :goto_0

    .line 62874
    :sswitch_8
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Z5;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0E:J

    .line 62875
    goto/16 :goto_0

    .line 62876
    :sswitch_9
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Z:Z

    if-nez v0, :cond_0

    .line 62877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 62878
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Z:Z

    goto/16 :goto_0

    .line 62879
    :sswitch_a
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0W:Z

    .line 62880
    goto/16 :goto_0

    .line 62881
    :sswitch_b
    const-wide/16 v1, 0x3

    cmp-long v0, p2, v1

    if-nez v0, :cond_14

    goto/16 :goto_0

    .line 62882
    :sswitch_c
    cmp-long v0, p2, v7

    if-ltz v0, :cond_15

    const-wide/16 v1, 0x2

    cmp-long v0, p2, v1

    if-gtz v0, :cond_15

    goto/16 :goto_0

    .line 62883
    :sswitch_d
    cmp-long v0, p2, v7

    if-nez v0, :cond_16

    goto/16 :goto_0

    .line 62884
    :sswitch_e
    const-wide/16 v1, 0x5

    cmp-long v0, p2, v1

    if-nez v0, :cond_17

    goto/16 :goto_0

    .line 62885
    :sswitch_f
    cmp-long v0, p2, v7

    if-nez v0, :cond_18

    goto/16 :goto_0

    .line 62886
    .end local p1    # null:I
    :sswitch_10
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0I:J

    .line 62887
    goto/16 :goto_0

    .line 62888
    :sswitch_11
    long-to-int v1, p2

    .line 62889
    .local p1, "layout":I
    if-eqz v1, :cond_f

    if-eq v1, v6, :cond_e

    if-eq v1, v2, :cond_d

    const/16 v0, 0xf

    if-eq v1, v0, :cond_c

    goto/16 :goto_0

    .line 62890
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 62891
    goto/16 :goto_0

    .line 62892
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 62893
    goto/16 :goto_0

    .line 62894
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 62895
    goto/16 :goto_0

    .line 62896
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0P:I

    .line 62897
    goto/16 :goto_0

    .line 62898
    :sswitch_12
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0I:I

    .line 62899
    goto/16 :goto_0

    .line 62900
    :sswitch_13
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0H:I

    .line 62901
    goto/16 :goto_0

    .line 62902
    :sswitch_14
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0G:I

    .line 62903
    goto/16 :goto_0

    .line 62904
    :sswitch_15
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    cmp-long v0, p2, v7

    if-nez v0, :cond_10

    const/4 v3, 0x1

    :cond_10
    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0a:Z

    .line 62905
    goto/16 :goto_0

    .line 62906
    :sswitch_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-wide p2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0S:J

    .line 62907
    goto/16 :goto_0

    .line 62908
    :sswitch_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-wide p2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0T:J

    .line 62909
    goto/16 :goto_0

    .line 62910
    :sswitch_18
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0A:I

    .line 62911
    goto/16 :goto_0

    .line 62912
    :sswitch_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    long-to-int v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A0F:I

    .line 62913
    goto/16 :goto_0

    .line 62914
    :sswitch_1a
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0M:J

    .line 62915
    goto/16 :goto_0

    .line 62916
    :cond_11
    cmp-long v3, p2, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "hD31tqXIhnGrFxqSOgo1vvmOI12OLqRQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_12
    if-nez v3, :cond_19

    goto/16 :goto_0

    .line 62917
    :cond_13
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-nez v0, :cond_1a

    goto/16 :goto_0

    .line 62918
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x128

    const/16 v1, 0x10

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62919
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x179

    const/16 v1, 0x13

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62920
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b1

    const/16 v1, 0x10

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62921
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x138

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62922
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x34

    const/16 v1, 0x16

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62923
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15c

    const/16 v1, 0x15

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62924
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x147

    const/16 v1, 0x15

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

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

    .line 62925
    const/16 v0, 0xa0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_f

    const/16 v4, 0xae

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "AdTS27cZyEPjMpBmCOVMxp7hS9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_e

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_d

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_c

    const/16 v5, 0x5035

    sget-object v4, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v3, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x1f

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v3, "wY7PzT4LsA3mCgyVRS2Kw1OTPeLWClxa"

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v4, 0x1

    if-eq p1, v5, :cond_b

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_11

    const v0, 0x18538067

    if-eq p1, v0, :cond_5

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_10

    const v6, 0x1f43b675

    sget-object v5, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v5, v0

    const/4 v0, 0x6

    aget-object v5, v5, v0

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v3, "qI"

    const/4 v0, 0x7

    aput-object v3, v5, v0

    if-eq p1, v6, :cond_3

    goto/16 :goto_1

    .line 62926
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0a:Z

    if-nez v0, :cond_11

    .line 62927
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0o:Z

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0F:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_4

    .line 62928
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Y:Z

    goto/16 :goto_1

    .line 62929
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0H:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 62930
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0a:Z

    goto/16 :goto_1

    .line 62931
    :cond_5
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    cmp-long v5, v3, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "okD0JH5Pg04Fag3yJX3zPaKxT8VrFmF5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_6

    :goto_0
    cmp-long v5, v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "xUjpTE6fi698I1UVKMv3yTWS8T"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_8

    .line 62932
    :cond_6
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0K:J

    .line 62933
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0L:J

    .line 62934
    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z5;->A0q:[Ljava/lang/String;

    const-string v1, "T2xOY9FAgnWM5SNzjVuKwwLVgl3XIr00"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_6

    goto :goto_0

    .line 62935
    :cond_8
    const/16 v2, 0x2cd

    const/16 v1, 0x27

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62936
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0b:Z

    .line 62937
    goto :goto_1

    .line 62938
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0c:Z

    .line 62939
    goto :goto_1

    .line 62940
    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0B:I

    .line 62941
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0I:J

    .line 62942
    goto :goto_1

    .line 62943
    :cond_d
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Z:Z

    .line 62944
    goto :goto_1

    .line 62945
    :cond_e
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cc;-><init>(Lcom/facebook/ads/redexgen/X/Z3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    .line 62946
    goto :goto_1

    .line 62947
    :cond_f
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0W:Z

    .line 62948
    goto :goto_1

    .line 62949
    :cond_10
    new-instance v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0Q:Lcom/facebook/ads/redexgen/X/IC;

    .line 62950
    new-instance v0, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0P:Lcom/facebook/ads/redexgen/X/IC;

    .line 62951
    :cond_11
    :goto_1
    return-void
.end method

.method public final A0O(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 62952
    const/16 v0, 0x86

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const v0, 0x22b59c

    if-eq p1, v0, :cond_1

    .line 62953
    :cond_0
    :goto_0
    return-void

    .line 62954
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Cc;->A02(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;)Ljava/lang/String;

    .line 62955
    goto :goto_0

    .line 62956
    :cond_2
    const/16 v2, 0x40a

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x3f8

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 62957
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0O:Lcom/facebook/ads/redexgen/X/Cc;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/Cc;->A0Y:Ljava/lang/String;

    .line 62958
    goto :goto_0

    .line 62959
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x171

    const/16 v1, 0x8

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z5;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 62960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0N:Lcom/facebook/ads/redexgen/X/CI;

    .line 62961
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

    .line 62962
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0V:Z

    .line 62963
    const/4 v2, 0x1

    .line 62964
    .local p1, "continueReading":Z
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0V:Z

    if-nez v0, :cond_1

    .line 62965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/CY;->ACm(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v2

    .line 62966
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Z5;->A0F(Lcom/facebook/ads/redexgen/X/CN;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62967
    const/4 v0, 0x1

    return v0

    .line 62968
    :cond_1
    if-nez v2, :cond_3

    .line 62969
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 62970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cc;->A08()V

    .line 62971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62972
    .end local p0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 62973
    :cond_3
    return v3
.end method

.method public final ADW(JJ)V
    .locals 2

    .line 62974
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0E:J

    .line 62975
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A04:I

    .line 62976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0d:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->reset()V

    .line 62977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0e:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A06()V

    .line 62978
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Z5;->A05()V

    .line 62979
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 62980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z5;->A0c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cc;->A09()V

    .line 62981
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62982
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62983
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ce;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ce;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ce;->A02(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
.end method
