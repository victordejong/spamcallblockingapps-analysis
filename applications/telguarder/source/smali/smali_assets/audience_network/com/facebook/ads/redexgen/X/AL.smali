.class public final Lcom/facebook/ads/redexgen/X/AL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/AL;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:Z

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 21313
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AL;->A00()V

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AL;-><init>(F)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AL;->A05:Lcom/facebook/ads/redexgen/X/AL;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 21314
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/AL;-><init>(FFZ)V

    .line 21315
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 3

    .line 21316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21317
    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21318
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21319
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 21320
    iput p2, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    .line 21321
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    .line 21322
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A03:I

    .line 21323
    return-void

    .line 21324
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 21325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1Wln4a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yTzFsIq8T4W8AEKRBObR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zSuARRk3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0Pe2VHNPxRb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RHY2pfuJYZQUImEqUN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eoZM6eSrF0tioqONszn87jgXUTdNZkQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uPiQja5uXmHYtQKodG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AL;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(J)J
    .locals 2

    .line 21326
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A03:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21327
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 21328
    return v5

    .line 21329
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/AL;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A04:[Ljava/lang/String;

    const-string v1, "b9xFPJKAHwu2Vltb3c"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "jLfIOA6wuFBqFsCxRJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_3

    .line 21330
    .end local v5
    :cond_2
    return v4

    .line 21331
    :cond_3
    check-cast p1, Lcom/facebook/ads/redexgen/X/AL;

    .line 21332
    .local v5, "other":Lcom/facebook/ads/redexgen/X/AL;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    if-ne v1, v0, :cond_4

    :goto_0
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 21333
    const/16 v0, 0x11

    .line 21334
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 21335
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 21336
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    add-int/2addr v1, v0

    .line 21337
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
