.class public Lcom/androidplot/xy/YValueMarker;
.super Lcom/androidplot/xy/ValueMarker;
.source "YValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/ValueMarker<",
        "Lcom/androidplot/ui/HorizontalPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/androidplot/ui/HorizontalPosition;

    sget-object v1, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/HorizontalPositioning;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v2, v1}, Lcom/androidplot/ui/HorizontalPosition;-><init>(FLcom/androidplot/ui/HorizontalPositioning;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/HorizontalPosition;II)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/HorizontalPosition;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYPlot;Landroid/graphics/RectF;)V
    .locals 8

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p2

    iget-object v0, p2, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 66
    invoke-virtual {p0}, Lcom/androidplot/xy/YValueMarker;->getValue()Ljava/lang/Number;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget p2, p3, Landroid/graphics/RectF;->top:F

    float-to-double v3, p2

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p2

    const/4 v7, 0x1

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float p2, v0

    .line 68
    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/xy/YValueMarker;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    move v4, p2

    move v6, p2

    .line 68
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/xy/YValueMarker;->getTextPosition()Lcom/androidplot/ui/PositionMetric;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/HorizontalPosition;

    .line 73
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/androidplot/ui/HorizontalPosition;->getPixelValue(F)F

    move-result v0

    .line 74
    iget v1, p3, Landroid/graphics/RectF;->left:F

    add-float v6, v0, v1

    .line 75
    invoke-virtual {p0}, Lcom/androidplot/xy/YValueMarker;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/YValueMarker;->drawMarkerText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;FF)V

    :cond_0
    return-void
.end method
