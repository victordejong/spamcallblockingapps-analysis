.class public final Lcom/venmo/view/ArrowAlignmentHelper;
.super Ljava/lang/Object;
.source "ArrowAlignmentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateArrowMidPoint(Lcom/venmo/view/TooltipView;Landroid/graphics/RectF;)F
    .locals 6

    .line 9
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getAlignmentOffset()I

    move-result v0

    .line 12
    sget-object v1, Lcom/venmo/view/ArrowAlignmentHelper$1;->$SwitchMap$com$venmo$view$ArrowAlignment:[I

    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getArrowAlignment()Lcom/venmo/view/ArrowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/venmo/view/ArrowAlignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    if-eq v1, v2, :cond_6

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v2

    .line 28
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getAnchoredViewId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getAnchoredViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getX()F

    move-result v0

    sub-float/2addr v1, v0

    .line 32
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getWidth()I

    move-result p0

    div-int/2addr p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    add-float p0, p1, v1

    goto :goto_1

    :cond_1
    move p0, p1

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    if-nez v0, :cond_3

    .line 24
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v3

    goto :goto_0

    :cond_3
    int-to-float p1, v0

    :goto_0
    sub-float/2addr p0, p1

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p0, v2

    if-gtz v0, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offsets are not support when the tooltip arrow is anchored in the middle of the view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez v0, :cond_7

    .line 14
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p0, v3

    goto :goto_1

    :cond_7
    int-to-float p0, v0

    :goto_1
    return p0
.end method
