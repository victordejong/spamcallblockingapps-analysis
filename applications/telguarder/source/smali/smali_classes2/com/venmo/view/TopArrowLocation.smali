.class Lcom/venmo/view/TopArrowLocation;
.super Ljava/lang/Object;
.source "TopArrowLocation.java"

# interfaces
.implements Lcom/venmo/view/ArrowLocation;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureDraw(Lcom/venmo/view/TooltipView;Landroid/graphics/Canvas;)V
    .locals 5

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0}, Lcom/venmo/view/TooltipView;->setTooltipPath(Landroid/graphics/Path;)V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 17
    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getArrowHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 19
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getCornerRadius()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getCornerRadius()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 22
    invoke-static {p1, v0}, Lcom/venmo/view/ArrowAlignmentHelper;->calculateArrowMidPoint(Lcom/venmo/view/TooltipView;Landroid/graphics/RectF;)F

    move-result p2

    .line 24
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipPath()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getArrowWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 26
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipPath()Landroid/graphics/Path;

    move-result-object v2

    int-to-float v1, v1

    sub-float v3, p2, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipPath()Landroid/graphics/Path;

    move-result-object v2

    add-float/2addr p2, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/venmo/view/TooltipView;->setPaint(Landroid/graphics/Paint;)V

    .line 31
    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/venmo/view/TooltipView;->getTooltipColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
