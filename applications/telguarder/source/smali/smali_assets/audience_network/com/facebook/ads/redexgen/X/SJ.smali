.class public final Lcom/facebook/ads/redexgen/X/SJ;
.super Lcom/facebook/ads/redexgen/X/Nj;
.source ""


# instance fields
.field public A00:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 51847
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51848
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 4

    .line 51849
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 51850
    .local p0, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 51851
    .local p1, "widthSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 51852
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 51853
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51854
    .local p2, "min":I
    invoke-virtual {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/SJ;->setMeasuredDimension(II)V

    .line 51855
    .end local p2    # "min":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SJ;->A00:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 51856
    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51857
    :cond_0
    return-void

    .line 51858
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 51859
    if-lez v3, :cond_2

    .line 51860
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 51861
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/facebook/ads/redexgen/X/SJ;->setMeasuredDimension(II)V

    goto :goto_0

    .line 51862
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 51863
    if-lez v2, :cond_4

    .line 51864
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 51865
    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/facebook/ads/redexgen/X/SJ;->setMeasuredDimension(II)V

    goto :goto_0

    .line 51866
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nj;->onMeasure(II)V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 51867
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SJ;->A00:Landroid/widget/ImageView$ScaleType;

    .line 51868
    return-void
.end method
