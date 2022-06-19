.class public Lcom/androidplot/xy/XValueMarker;
.super Lcom/androidplot/xy/ValueMarker;
.source "XValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/ValueMarker<",
        "Lcom/androidplot/ui/VerticalPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3

    .line 34
    new-instance v0, Lcom/androidplot/ui/VerticalPosition;

    sget-object v1, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v2, v1}, Lcom/androidplot/ui/VerticalPosition;-><init>(FLcom/androidplot/ui/VerticalPositioning;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/VerticalPosition;II)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/VerticalPosition;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYPlot;Landroid/graphics/RectF;)V
    .locals 8

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p2

    iget-object v0, p2, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 66
    invoke-virtual {p0}, Lcom/androidplot/xy/XValueMarker;->getValue()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget p2, p3, Landroid/graphics/RectF;->left:F

    float-to-double v3, p2

    iget p2, p3, Landroid/graphics/RectF;->right:F

    float-to-double v5, p2

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float p2, v0

    .line 67
    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/androidplot/xy/XValueMarker;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    move v3, p2

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/xy/XValueMarker;->getTextPosition()Lcom/androidplot/ui/PositionMetric;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/VerticalPosition;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/VerticalPosition;->getPixelValue(F)F

    move-result v0

    .line 70
    iget v1, p3, Landroid/graphics/RectF;->top:F

    add-float v7, v0, v1

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/xy/XValueMarker;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/xy/XValueMarker;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/XValueMarker;->drawMarkerText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;FF)V

    :cond_0
    return-void
.end method
