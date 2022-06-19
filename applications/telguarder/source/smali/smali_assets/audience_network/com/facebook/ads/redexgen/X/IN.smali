.class public final Lcom/facebook/ads/redexgen/X/IN;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IN;->A02()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 38406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38407
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/IN;->A09([BII)V

    .line 38408
    return-void
.end method

.method private A00()I
    .locals 4

    .line 38409
    const/4 v1, 0x0

    .line 38410
    .local p0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38412
    :cond_0
    const/4 v0, 0x1

    shl-int v3, v0, v1

    sub-int/2addr v3, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    const-string v1, "KlY8sOCt6VQNMWujSMIZVktMoTMsqZPS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 2

    .line 38413
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    if-ltz v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38414
    return-void

    .line 38415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "E2O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Wdsdfyfei9fSTS6Yj6D4PRRSyXIIk2Mc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kwURK3TlJJBsFaaoMITwJbDFXHgQFrC0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1jN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DBQS9nZLQerPsHgFkt8vT5Xr6OuBsIso"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "90fEjGy4Fee0QlCBtnI8lVTHNvQvc9GB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "edTowp062XEtGiEbWOjHabY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eTo9JWw8Ue5NfYvhbhE2PLy0M8W9ISOD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A03(I)Z
    .locals 5

    .line 38416
    const/4 v0, 0x2

    if-gt v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    if-ge p1, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IN;->A03:[B

    aget-byte v1, v3, p1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    add-int/lit8 v4, p1, -0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    const-string v1, "HrE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7T1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aget-byte v0, v3, v4

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, v3, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final A04()I
    .locals 3

    .line 38417
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IN;->A00()I

    move-result v2

    .line 38418
    .local p0, "codeNum":I
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final A05()I
    .locals 1

    .line 38419
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IN;->A00()I

    move-result v0

    return v0
.end method

.method public final A06(I)I
    .locals 7

    .line 38420
    const/4 v6, 0x0

    .line 38421
    .local p0, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38422
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    const/4 v4, 0x2

    const/16 v2, 0x8

    if-le v5, v2, :cond_1

    .line 38423
    add-int/lit8 v0, v5, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    shl-int/2addr v1, v0

    or-int/2addr v6, v1

    .line 38425
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/IN;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    add-int/2addr v2, v4

    iput v2, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 38426
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A03:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    aget-byte v0, v0, v3

    and-int/lit16 v1, v0, 0xff

    rsub-int/lit8 v0, v5, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v6, v1

    .line 38427
    const/4 v1, -0x1

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr v1, v0

    and-int/2addr v6, v1

    .line 38428
    if-ne v5, v2, :cond_2

    .line 38429
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38430
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/IN;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    add-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/IN;->A04:[Ljava/lang/String;

    const-string v1, "Kl7ia63DKdzixwhh3QH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38431
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IN;->A01()V

    .line 38432
    return v6

    .line 38433
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()V
    .locals 3

    .line 38434
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    .line 38435
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38436
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/IN;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :cond_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38437
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IN;->A01()V

    .line 38438
    return-void
.end method

.method public final A08(I)V
    .locals 4

    .line 38439
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38440
    .local p0, "oldByteOffset":I
    div-int/lit8 v2, p1, 0x8

    .line 38441
    .local p1, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38442
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38443
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_0

    .line 38444
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38445
    add-int/lit8 v0, v1, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38446
    :cond_0
    add-int/lit8 v1, v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    if-gt v1, v0, :cond_2

    .line 38447
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/IN;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38448
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38449
    add-int/lit8 v1, v1, 0x2

    .line 38450
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38451
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IN;->A01()V

    .line 38452
    return-void
.end method

.method public final A09([BII)V
    .locals 1

    .line 38453
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IN;->A03:[B

    .line 38454
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38455
    iput p3, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    .line 38456
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38457
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IN;->A01()V

    .line 38458
    return-void
.end method

.method public final A0A()Z
    .locals 7

    .line 38459
    iget v6, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38460
    .local p0, "initialByteOffset":I
    iget v5, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38461
    .local v6, "initialBitOffset":I
    const/4 v4, 0x0

    .line 38462
    .local v5, "leadingZeros":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38463
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38464
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    .line 38465
    .local v4, "hitLimit":Z
    :goto_1
    iput v6, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38466
    iput v5, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 38467
    if-nez v0, :cond_1

    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 38468
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A0B()Z
    .locals 3

    .line 38469
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    aget-byte v2, v1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    const/16 v0, 0x80

    shr-int/2addr v0, v1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 38470
    .local p0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 38471
    return v0

    .line 38472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(I)Z
    .locals 5

    .line 38473
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    .line 38474
    .local p0, "oldByteOffset":I
    div-int/lit8 v0, p1, 0x8

    .line 38475
    .local p1, "numBytes":I
    iget v4, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:I

    add-int/2addr v4, v0

    .line 38476
    .local v1, "newByteOffset":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    add-int/2addr v3, p1

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v3, v0

    .line 38477
    .local v0, "newBitOffset":I
    const/4 v0, 0x7

    if-le v3, v0, :cond_0

    .line 38478
    add-int/lit8 v4, v4, 0x1

    .line 38479
    add-int/lit8 v3, v3, -0x8

    .line 38480
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v1, 0x1

    if-gt v2, v4, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    if-ge v4, v0, :cond_2

    .line 38481
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/IN;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38482
    add-int/lit8 v4, v4, 0x1

    .line 38483
    add-int/lit8 v2, v2, 0x2

    .line 38484
    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 38485
    .end local v4    # "i":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    if-lt v4, v0, :cond_3

    if-ne v4, v0, :cond_4

    if-nez v3, :cond_4

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
