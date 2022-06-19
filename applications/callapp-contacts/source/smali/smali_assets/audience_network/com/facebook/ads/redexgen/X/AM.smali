.class public final Lcom/facebook/ads/redexgen/X/AM;
.super Lcom/facebook/ads/redexgen/X/PD;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 21273
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 21274
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 2

    .line 21275
    .local p0, "newWidthSpec":I
    .local p1, "newHeightSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 21276
    move p2, p1

    .line 21277
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PD;->onMeasure(II)V

    .line 21278
    return-void

    .line 21279
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 21280
    move p1, p2

    goto :goto_0
.end method
