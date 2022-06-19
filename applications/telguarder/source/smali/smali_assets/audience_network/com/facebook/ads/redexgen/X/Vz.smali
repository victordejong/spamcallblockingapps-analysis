.class public final Lcom/facebook/ads/redexgen/X/Vz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Ljava/nio/ByteBuffer;

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 62463
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vz;->A00()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vz;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62465
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    .line 62466
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 62467
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    .line 62468
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    .line 62469
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Ljava/nio/ByteBuffer;

    .line 62470
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yfXY0gsVNgc3z6RjZZ2qOesySpmSj5lH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hRxMUYna19XRSX7NFTGqRGfbhjALqL5A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BsU6kCcvYVrv79ICMpyCJmnpBBDMu6n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lhKGi4CmF8QoeLnEgM1zmxPcgmTYXyT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9lWkn9FmdgfzGgMKtn6KBKW9eWWWxLil"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tXLsBbAEg4dE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HnGUnRr1lgBCsh0xM4bnWUvt6MzLRdZ9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JXyjvkJ9HuOg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    return-void
.end method

.method public static A01(ILjava/nio/ByteBuffer;)V
    .locals 3

    .line 62471
    int-to-double v2, p0

    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    mul-double/2addr v2, v0

    double-to-float v0, v2

    .line 62472
    .local p0, "pcm32BitFloat":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 62473
    .local p1, "floatBits":I
    sget v0, Lcom/facebook/ads/redexgen/X/Vz;->A07:I

    if-ne v1, v0, :cond_1

    .line 62474
    const/4 p0, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    const-string v1, "L1FtjUn1iGHnJcXDyfawNiSEehYglwj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jzWdXshTzM1Xz3T4Gud3ohD0vIFIW7N"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 62475
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 62476
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    const-string v1, "sLfC0VoUgKjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QTOkZ0furFFe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void
.end method


# virtual methods
.method public final A44(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 62477
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Ic;->A0c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62478
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    if-ne v0, p3, :cond_0

    .line 62479
    const/4 v0, 0x0

    return v0

    .line 62480
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    .line 62481
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 62482
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    .line 62483
    const/4 v0, 0x1

    return v0

    .line 62484
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 62485
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Ljava/nio/ByteBuffer;

    .line 62486
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Ljava/nio/ByteBuffer;

    .line 62487
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 62488
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 62489
    const/4 v0, 0x4

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 62490
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    return v0
.end method

.method public final A7x()Z
    .locals 1

    .line 62491
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0c(I)Z

    move-result v0

    return v0
.end method

.method public final A81()Z
    .locals 5

    .line 62492
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A05:Z

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A06:[Ljava/lang/String;

    const-string v1, "FFYQ78KdLrCbARF2sBugAGDxeFo8PQnh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ACh()V
    .locals 1

    .line 62493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A05:Z

    .line 62494
    return-void
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 62495
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_2

    const/4 v4, 0x1

    .line 62496
    .local p0, "isInput32Bit":Z
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 62497
    .local p1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 62498
    .local v1, "limit":I
    sub-int v1, v2, v3

    .line 62499
    .local v0, "size":I
    if-eqz v4, :cond_1

    .line 62500
    .local v4, "resampledSize":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 62501
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    .line 62502
    :goto_2
    if-eqz v4, :cond_3

    .line 62503
    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_4

    .line 62504
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v0, v3, 0x1

    .line 62505
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    .line 62506
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x3

    .line 62507
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 62508
    .local v2, "pcm32BitInteger":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A01(ILjava/nio/ByteBuffer;)V

    .line 62509
    .end local v2    # "pcm32BitInteger":I
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 62510
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    .line 62511
    :cond_1
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v1, v0, 0x4

    goto :goto_1

    .line 62512
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 62513
    .restart local v3    # "i":I
    :cond_3
    :goto_4
    if-ge v3, v2, :cond_4

    .line 62514
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v3, 0x1

    .line 62515
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    .line 62516
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 62517
    .restart local v2    # "pcm32BitInteger":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A01(ILjava/nio/ByteBuffer;)V

    .line 62518
    .end local v2    # "pcm32BitInteger":I
    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    .line 62519
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Ljava/nio/ByteBuffer;

    .line 62522
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 62523
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Ljava/nio/ByteBuffer;

    .line 62524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A05:Z

    .line 62525
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 62526
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vz;->flush()V

    .line 62527
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:I

    .line 62528
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:I

    .line 62529
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:I

    .line 62530
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Ljava/nio/ByteBuffer;

    .line 62531
    return-void
.end method
