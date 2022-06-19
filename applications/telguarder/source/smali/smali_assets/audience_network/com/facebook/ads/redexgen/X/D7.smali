.class public final Lcom/facebook/ads/redexgen/X/D7;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/D8;

.field public final A04:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26283
    new-instance v0, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    .line 26284
    const v0, 0xfe01

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 26285
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 26286
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    .line 26287
    const/4 v3, 0x0

    .line 26288
    .local p0, "size":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    if-ge v1, v0, :cond_1

    .line 26289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    .line 26290
    .local p1, "segmentLength":I
    add-int/2addr v3, v1

    .line 26291
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 26292
    :cond_1
    return v3
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/D8;
    .locals 1

    .line 26293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/IM;
    .locals 1

    .line 26294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    return-object v0
.end method

.method public final A03()V
    .locals 1

    .line 26295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D8;->A03()V

    .line 26296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 26297
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    .line 26298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    .line 26299
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 26300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    const v3, 0xfe01

    if-ne v0, v3, :cond_0

    .line 26301
    return-void

    .line 26302
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 26303
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 26304
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 26305
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26306
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 26307
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    if-eqz v0, :cond_0

    .line 26308
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    .line 26309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    .line 26310
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    if-nez v0, :cond_9

    .line 26311
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    if-gez v0, :cond_3

    .line 26312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26313
    return v4

    .line 26314
    :cond_1
    const/4 v2, 0x0

    .line 26315
    .local v4, "segmentIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A01:I

    .line 26316
    .local v3, "bytesToSkip":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-nez v0, :cond_2

    .line 26317
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/D7;->A00(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 26318
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v2, v0

    .line 26319
    :cond_2
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 26320
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    .line 26321
    .end local v4    # "segmentIndex":I
    .end local v3    # "bytesToSkip":I
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/D7;->A00(I)I

    move-result v5

    .line 26322
    .local v4, "size":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:I

    add-int/2addr v2, v0

    .line 26323
    .local v3, "segmentIndex":I
    if-lez v5, :cond_5

    .line 26324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v0, v5

    if-ge v1, v0, :cond_4

    .line 26325
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 26326
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-interface {p1, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 26327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D7;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 26328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:[I

    add-int/lit8 v0, v2, -0x1

    aget v1, v1, v0

    const/16 v0, 0xff

    if-eq v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A02:Z

    .line 26329
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D7;->A03:Lcom/facebook/ads/redexgen/X/D8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A02:I

    if-ne v2, v0, :cond_6

    const/4 v2, -0x1

    :cond_6
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:I

    .line 26330
    .end local v4    # "size":I
    .end local v3    # "segmentIndex":I
    goto/16 :goto_1

    .line 26331
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 26332
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 26333
    :cond_9
    return v3
.end method
