.class public final Lcom/facebook/ads/redexgen/X/D5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/D2;

.field public final A04:[I

.field public final A05:[I

.field public final A06:[J

.field public final A07:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D5;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D2;[J[II[J[IJ)V
    .locals 3

    .line 26254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26255
    array-length v1, p3

    array-length v0, p5

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 26256
    array-length v1, p2

    array-length v0, p5

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 26257
    array-length v1, p6

    array-length v0, p5

    if-ne v1, v0, :cond_0

    :goto_2
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 26258
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D5;->A03:Lcom/facebook/ads/redexgen/X/D2;

    .line 26259
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D5;->A06:[J

    .line 26260
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/D5;->A05:[I

    .line 26261
    iput p4, p0, Lcom/facebook/ads/redexgen/X/D5;->A00:I

    .line 26262
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    .line 26263
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/D5;->A04:[I

    .line 26264
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/D5;->A02:J

    .line 26265
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A01:I

    .line 26266
    return-void

    .line 26267
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 26268
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 26269
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QS7tCeX3OYB5rEjI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XWVzfR1OG367qrqQInwtuhcBeIJIuhWX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "A8in"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AWUaTj8vBIlRf1qlhxFK7Ac"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BH0m86Gu9RaGvacnGyONCiqHIRcWbhz3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KUHBtSS75qbaYUXIjI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f880V0rujnJe2gsbRT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D5;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(J)I
    .locals 3

    .line 26270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v1

    .line 26271
    .local p0, "startIndex":I
    .local v2, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 26272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A04:[I

    aget v0, v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 26273
    return v1

    .line 26274
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 26275
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final A02(J)I
    .locals 6

    .line 26276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v4

    .line 26277
    .local p0, "startIndex":I
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/D5;->A07:[J

    sget-object v1, Lcom/facebook/ads/redexgen/X/D5;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/D5;->A08:[Ljava/lang/String;

    const-string v1, "NkWmHkfVYmiuiPNavPEQeTM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "un"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    array-length v0, v5

    if-ge v4, v0, :cond_2

    .line 26278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A04:[I

    aget v0, v0, v4

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 26279
    return v4

    .line 26280
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26281
    .end local v2    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method
