.class public final Lcom/facebook/ads/redexgen/X/AL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/AL;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:Z

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 21248
    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AL;-><init>(F)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/AL;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 21249
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/AL;-><init>(FFZ)V

    .line 21250
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 3

    .line 21251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21252
    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21253
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21254
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 21255
    iput p2, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    .line 21256
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    .line 21257
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A03:I

    .line 21258
    return-void

    .line 21259
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 21260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(J)J
    .locals 2

    .line 21261
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A03:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21262
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 21263
    return v3

    .line 21264
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 21265
    .end local v3
    :cond_1
    return v2

    .line 21266
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/AL;

    .line 21267
    .local v3, "other":Lcom/facebook/ads/redexgen/X/AL;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    if-ne v1, v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 21268
    const/16 v0, 0x11

    .line 21269
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 21270
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 21271
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Z

    add-int/2addr v1, v0

    .line 21272
    .end local p0    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
