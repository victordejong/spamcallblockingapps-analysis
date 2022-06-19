.class public final Lcom/facebook/ads/redexgen/X/D4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/Cn;

.field public A08:Lcom/facebook/ads/redexgen/X/D3;

.field public A09:Lcom/facebook/ads/redexgen/X/IM;

.field public A0A:Z

.field public A0B:Z

.field public A0C:[I

.field public A0D:[I

.field public A0E:[I

.field public A0F:[J

.field public A0G:[J

.field public A0H:[Z

.field public A0I:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D4;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "18xAKfHkMNJ5HPdLuTH4JTREBzdhT1xS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dy5chEc6TP5HqWGLsGFgEU6CndGte6rM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vdBiJrGEV5Ogyc7EX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T3A2dOdEzmeX5XJJg8bNkVv334ItMxEP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "p7d73qHoMRAWe56qu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HQYhYKiOiMy1BEsNPZGwbosFZQulZUa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hPafyznSPGBFUVeEty7qTolPCE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r3jbqwNlxrjDMXZgqX7JBnZj5UZgRHDA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(I)J
    .locals 4

    .line 26220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0F:[J

    aget-wide v2, v0, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0C:[I

    aget v0, v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A02()V
    .locals 3

    .line 26221
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:I

    .line 26222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A06:J

    .line 26223
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    .line 26224
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    .line 26226
    return-void
.end method

.method public final A03(I)V
    .locals 4

    .line 26227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 26228
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    .line 26229
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:I

    .line 26230
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26231
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/D4;->A0J:[Ljava/lang/String;

    const-string v1, "VSaBlA6wYxsNjKJ9ZFHsCZKg1HHXNRMP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26232
    return-void
.end method

.method public final A04(II)V
    .locals 2

    .line 26233
    iput p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:I

    .line 26234
    iput p2, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    .line 26235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 26236
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    .line 26237
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    .line 26238
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0D:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-ge v0, p2, :cond_3

    .line 26239
    :cond_2
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v1, v0, 0x64

    .line 26240
    .local p0, "tableSize":I
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0D:[I

    .line 26241
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0C:[I

    .line 26242
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0F:[J

    .line 26243
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0I:[Z

    .line 26244
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    .line 26245
    .end local p0    # "tableSize":I
    :cond_3
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:I

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 26247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 26248
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26249
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 3

    .line 26250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:I

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 26251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 26252
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    .line 26253
    return-void
.end method
