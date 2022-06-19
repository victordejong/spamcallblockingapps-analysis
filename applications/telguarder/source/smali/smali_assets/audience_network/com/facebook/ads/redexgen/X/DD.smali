.class public final Lcom/facebook/ads/redexgen/X/DD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DD;->A01()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 26461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DD;->A03:[B

    .line 26463
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A02:I

    .line 26464
    return-void
.end method

.method private A00()V
    .locals 2

    .line 26465
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    if-ltz v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A02:I

    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 26466
    return-void

    .line 26467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rv4xXsBxRPypsNDHqec6InH1AqZjRAXp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jTpWYUPl1CfIUEQQmn6pnVJpluTN43eP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Xioc0M98rIKLS8UOoThnA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uguliamXVs9P9ISn6R"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UUKYjGigGFslDFUKd2Mc5CHVHTnqR63D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TRQONtfe1F55MrlnZM6rh9SqzI3M3k30"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MqoGBV2OdPdExoq15m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qh0dCYaEP7CZXzOl7u3L2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DD;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()I
    .locals 2

    .line 26468
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A03(I)I
    .locals 6

    .line 26469
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    .line 26470
    .local p0, "tempByteOffset":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 26471
    .local p1, "bitsRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A03:[B

    add-int/lit8 v4, v1, 0x1

    .end local p0    # "tempByteOffset":I
    .local v0, "tempByteOffset":I
    aget-byte v3, v0, v1

    const/16 v2, 0xff

    and-int/2addr v3, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    shr-int/2addr v3, v0

    rsub-int/lit8 v0, v5, 0x8

    shr-int v0, v2, v0

    and-int/2addr v3, v0

    .line 26472
    .local p0, "returnValue":I
    :goto_0
    if-ge v5, p1, :cond_0

    .line 26473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A03:[B

    add-int/lit8 v1, v4, 0x1

    .end local v0    # "tempByteOffset":I
    .local v5, "tempByteOffset":I
    aget-byte v0, v0, v4

    and-int/2addr v0, v2

    shl-int/2addr v0, v5

    or-int/2addr v3, v0

    .line 26474
    add-int/lit8 v5, v5, 0x8

    move v4, v1

    goto :goto_0

    .line 26475
    .end local v5    # "tempByteOffset":I
    .restart local v0    # "tempByteOffset":I
    :cond_0
    const/4 v1, -0x1

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr v1, v0

    and-int/2addr v3, v1

    .line 26476
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26477
    return v3
.end method

.method public final A04(I)V
    .locals 3

    .line 26478
    div-int/lit8 v2, p1, 0x8

    .line 26479
    .local p0, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    .line 26480
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    .line 26481
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_0

    .line 26482
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    .line 26483
    add-int/lit8 v0, v1, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    .line 26484
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DD;->A00()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/DD;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26485
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DD;->A04:[Ljava/lang/String;

    const-string v1, "zeQNuunofCgtOIZXgtzWjH9XfZHpXmTy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void
.end method

.method public final A05()Z
    .locals 3

    .line 26486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DD;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A01:I

    aget-byte v0, v1, v0

    and-int/lit16 v2, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DD;->A00:I

    shr-int/2addr v2, v0

    const/4 v1, 0x1

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 26487
    .local p0, "returnValue":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26488
    return v0

    .line 26489
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
