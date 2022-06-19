.class public final Lcom/facebook/ads/redexgen/X/GW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/IM;

.field public final A08:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GW;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34379
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    .line 34380
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A08:[I

    .line 34381
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3KBMMdAhJKWAEH2eT1fSchFe3wBtJHjo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QK3S6UPYXriuoDSeKzJvwBJlyJnoH3r8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OajR9AiqfqjybNxA7PF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cDy1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6gk1aOKjRoPEnFrkieUZiQEXy35ZBbJH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "280aZazXmdLBWBgz33QhfVbJPxg4wgNZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0WR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 0

    .line 34382
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/GW;->A06(Lcom/facebook/ads/redexgen/X/IM;I)V

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 0

    .line 34383
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/GW;->A04(Lcom/facebook/ads/redexgen/X/IM;I)V

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 0

    .line 34384
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/GW;->A05(Lcom/facebook/ads/redexgen/X/IM;I)V

    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 6

    .line 34385
    const/4 v5, 0x4

    if-ge p2, v5, :cond_0

    .line 34386
    return-void

    .line 34387
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 34388
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 34389
    .local p1, "isBaseSection":Z
    :goto_0
    add-int/lit8 v3, p2, -0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34390
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 34391
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const-string v1, "IkeMemyMJMc66D6Wrpft8pytG3AJswnc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_6

    .line 34392
    const/4 v0, 0x7

    if-ge v3, v0, :cond_3

    .line 34393
    return-void

    .line 34394
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_4

    .line 34395
    .local p2, "totalLength":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const-string v1, "ABZry4cKUVwNq6tMgro2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v4, v5, :cond_5

    .line 34396
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34397
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_8

    .line 34398
    sget-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const-string v1, "JCg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A00:I

    .line 34399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    add-int/lit8 v0, v4, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 34400
    add-int/lit8 v3, v3, -0x7

    .line 34401
    .end local p2    # "totalLength":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v2

    .line 34402
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    .line 34403
    .local p2, "limit":I
    if-ge v2, v0, :cond_7

    if-lez v3, :cond_7

    .line 34404
    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 34405
    .local v5, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 34406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 34407
    .end local v5    # "bytesToRead":I
    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 1

    .line 34408
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 34409
    return-void

    .line 34410
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A05:I

    .line 34411
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A04:I

    .line 34412
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 34413
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A02:I

    .line 34414
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A03:I

    .line 34415
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 16

    .line 34416
    move-object/from16 v4, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 34417
    return-void

    .line 34418
    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 34419
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/GW;->A08:[I

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 34420
    div-int/lit8 v6, p2, 0x5

    .line 34421
    .local p2, "entryCount":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 34422
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v15

    .line 34423
    .local v0, "index":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v9

    .line 34424
    .local v5, "y":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v12

    .line 34425
    .local v1, "cr":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v14

    .line 34426
    .local v0, "cb":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v13

    .line 34427
    .local v6, "a":I
    int-to-double v0, v9

    const-wide v10, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v2, v12, -0x80

    int-to-double v7, v2

    mul-double/2addr v7, v10

    add-double/2addr v0, v7

    double-to-int v2, v0

    .line 34428
    .local v3, "r":I
    int-to-double v7, v9

    const-wide v10, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v0, v14, -0x80

    .end local v1    # "cr":I
    .local v0, "i":I
    int-to-double v0, v0

    mul-double/2addr v0, v10

    sub-double/2addr v7, v0

    const-wide v10, 0x3fe6da3c21187e7cL    # 0.71414

    add-int/lit8 v0, v12, -0x80

    int-to-double v0, v0

    mul-double/2addr v0, v10

    sub-double/2addr v7, v0

    double-to-int v10, v7

    .line 34429
    .local v4, "g":I
    int-to-double v7, v9

    const-wide v11, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v0, v14, -0x80

    .end local p2    # "entryCount":I
    .local v13, "entryCount":I
    int-to-double v0, v0

    mul-double/2addr v0, v11

    add-double/2addr v7, v0

    double-to-int v9, v7

    .line 34430
    .local v5, "b":I
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/GW;->A08:[I

    shl-int/lit8 v8, v13, 0x18

    .line 34431
    const/16 v7, 0xff

    const/4 v1, 0x0

    invoke-static {v2, v1, v7}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v8, v0

    .line 34432
    invoke-static {v10, v1, v7}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v8, v0

    .line 34433
    invoke-static {v9, v1, v7}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v0

    or-int/2addr v8, v0

    aput v8, v11, v15

    sget-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 34434
    .end local v5    # "b":I
    .end local v4    # "g":I
    .end local v0    # "i":I
    .end local v5
    .end local v1
    .end local v0
    .end local v6    # "a":I
    .end local v3    # "r":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const-string v1, "bgY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    .end local v0
    .restart local v1    # "cr":I
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34435
    .end local v1    # "cr":I
    .end local v13    # "entryCount":I
    .restart local p2    # "entryCount":I
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/GW;->A06:Z

    .line 34436
    return-void
.end method


# virtual methods
.method public final A07()Lcom/facebook/ads/redexgen/X/GB;
    .locals 11

    .line 34437
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A04:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A01:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A00:I

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_7

    .line 34438
    sget-object v2, Lcom/facebook/ads/redexgen/X/GW;->A09:[Ljava/lang/String;

    const-string v1, "OUMsx5L0enDGlfHE2BRf29NsWflhwx4G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    .line 34439
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A06:Z

    if-nez v0, :cond_1

    .line 34440
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/GW;
    .end local v0
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 34441
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 34442
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A00:I

    mul-int/2addr v1, v0

    new-array v3, v1, [I

    .line 34443
    .local p0, "argbBitmapData":[I
    const/4 v4, 0x0

    .line 34444
    .local v0, "argbBitmapDataIndex":I
    :cond_2
    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_6

    .line 34445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 34446
    .local v0, "colorIndex":I
    if-eqz v2, :cond_3

    .line 34447
    add-int/lit8 v1, v4, 0x1

    .end local v0    # "colorIndex":I
    .local v0, "argbBitmapDataIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A08:[I

    aget v0, v0, v2

    aput v0, v3, v4

    move v4, v1

    goto :goto_0

    .line 34448
    .end local v0    # "argbBitmapDataIndex":I
    .restart local v0    # "argbBitmapDataIndex":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 34449
    .local v0, "switchBits":I
    if-eqz v2, :cond_2

    .line 34450
    and-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_5

    .line 34451
    and-int/lit8 v1, v2, 0x3f

    .line 34452
    .local v3, "runLength":I
    :goto_1
    and-int/lit16 v0, v2, 0x80

    if-nez v0, :cond_4

    const/4 v2, 0x0

    .line 34453
    .local v1, "color":I
    :goto_2
    add-int v0, v4, v1

    invoke-static {v3, v4, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 34454
    add-int/2addr v4, v1

    goto :goto_0

    .line 34455
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GW;->A08:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    aget v2, v2, v0

    goto :goto_2

    .line 34456
    :cond_5
    and-int/lit8 v0, v2, 0x3f

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    .line 34457
    :cond_6
    iget v2, p0, Lcom/facebook/ads/redexgen/X/GW;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A00:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34458
    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34459
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/facebook/ads/redexgen/X/GB;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A02:I

    int-to-float v5, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/GW;->A05:I

    int-to-float v0, v2

    div-float/2addr v5, v0

    const/4 v6, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A03:I

    int-to-float v7, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A04:I

    int-to-float v0, v1

    div-float/2addr v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A01:I

    int-to-float v9, v0

    int-to-float v0, v2

    div-float/2addr v9, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A00:I

    int-to-float v10, v0

    int-to-float v0, v1

    div-float/2addr v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08()V
    .locals 2

    .line 34460
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A05:I

    .line 34461
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A04:I

    .line 34462
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A02:I

    .line 34463
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A03:I

    .line 34464
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A01:I

    .line 34465
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A00:I

    .line 34466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GW;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 34467
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/GW;->A06:Z

    .line 34468
    return-void
.end method
