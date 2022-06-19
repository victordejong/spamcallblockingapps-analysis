.class public final Lcom/facebook/ads/redexgen/X/AM;
.super Lcom/facebook/ads/redexgen/X/Oj;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 21338
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 21339
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 2

    .line 21340
    .local p0, "newWidthSpec":I
    .local p1, "newHeightSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 21341
    move p2, p1

    .line 21342
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oj;->onMeasure(II)V

    .line 21343
    return-void

    .line 21344
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 21345
    move p1, p2

    goto :goto_0
.end method
