.class public Lcom/androidplot/xy/BubbleRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "BubbleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/BubbleFormatter;",
        ">",
        "Lcom/androidplot/xy/XYSeriesRenderer<",
        "Lcom/androidplot/xy/BubbleSeries;",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field protected static final MAX_BUBBLE_RADIUS_DEFAULT_DP:F = 25.0f

.field protected static final MIN_BUBBLE_RADIUS_DEFAULT_DP:F = 9.0f


# instance fields
.field private bubbleBounds:Lcom/androidplot/Region;

.field private bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 21
    sget-object p1, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    iput-object p1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .line 40
    new-instance p1, Lcom/androidplot/Region;

    const/high16 v0, 0x41100000    # 9.0f

    .line 41
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    .line 42
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object p1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    return-void
.end method


# virtual methods
.method protected calculateBounds()Lcom/androidplot/Region;
    .locals 7

    .line 122
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/androidplot/xy/BubbleRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/List;

    .line 124
    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/BubbleSeries;

    invoke-virtual {v2}, Lcom/androidplot/xy/BubbleSeries;->getZVals()Ljava/util/List;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0, v4}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/Region;[Ljava/util/List;)Lcom/androidplot/Region;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v1, v4

    if-lez v6, :cond_4

    .line 128
    iget-object v1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v2, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    if-ne v1, v2, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double v6, v1, v4

    if-lez v6, :cond_2

    .line 140
    iget-object v1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v2, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    if-ne v1, v2, :cond_3

    .line 143
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 14
    check-cast p3, Lcom/androidplot/xy/BubbleFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/BubbleRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleFormatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleFormatter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TFormatterType;)V"
        }
    .end annotation

    .line 93
    new-instance v5, Landroid/graphics/PointF;

    .line 94
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 v0, 0x40200000    # 2.5f

    div-float v6, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/BubbleRenderer;->drawBubble(Landroid/graphics/Canvas;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/xy/BubbleSeries;ILandroid/graphics/PointF;F)V

    return-void
.end method

.method protected drawBubble(Landroid/graphics/Canvas;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/xy/BubbleSeries;ILandroid/graphics/PointF;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "TFormatterType;",
            "Lcom/androidplot/xy/BubbleSeries;",
            "I",
            "Landroid/graphics/PointF;",
            "F)V"
        }
    .end annotation

    .line 79
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->hasPointLabelFormatter()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object p6

    if-eqz p6, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object p6

    invoke-interface {p6, p3, p4}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object p3

    iget p4, p5, Landroid/graphics/PointF;->x:F

    iget p5, p5, Landroid/graphics/PointF;->y:F

    .line 87
    invoke-virtual {p2}, Lcom/androidplot/xy/BubbleFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 82
    invoke-static {p1, p3, p4, p5, p2}, Lcom/androidplot/util/FontUtils;->drawTextVerticallyCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getBubbleScaleMode()Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-object v0
.end method

.method public getMaxBubbleRadius()F
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinBubbleRadius()F
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0

    .line 14
    check-cast p3, Lcom/androidplot/xy/BubbleSeries;

    check-cast p4, Lcom/androidplot/xy/BubbleFormatter;

    invoke-virtual/range {p0 .. p5}, Lcom/androidplot/xy/BubbleRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleSeries;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BubbleSeries;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/BubbleSeries;",
            "TFormatterType;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/androidplot/xy/BubbleRenderer;->calculateBounds()Lcom/androidplot/Region;

    move-result-object p5

    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-virtual {p3}, Lcom/androidplot/xy/BubbleSeries;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 53
    invoke-virtual {p3, v0}, Lcom/androidplot/xy/BubbleSeries;->getY(I)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/androidplot/xy/BubbleRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    .line 56
    invoke-virtual {p3, v0}, Lcom/androidplot/xy/BubbleSeries;->getX(I)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p3, v0}, Lcom/androidplot/xy/BubbleSeries;->getY(I)Ljava/lang/Number;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object v6

    .line 59
    iget-object v1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v2, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {p3, v0}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p3, v0}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    :goto_1
    iget-object v3, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    .line 60
    invoke-virtual {p5, v1, v2, v3}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, v0

    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/androidplot/xy/BubbleRenderer;->drawBubble(Landroid/graphics/Canvas;Lcom/androidplot/xy/BubbleFormatter;Lcom/androidplot/xy/BubbleSeries;ILandroid/graphics/PointF;F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setBubbleScaleMode(Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleScaleMode:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-void
.end method

.method public setMaxBubbleRadius(F)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    return-void
.end method

.method public setMinBubbleRadius(F)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/androidplot/xy/BubbleRenderer;->bubbleBounds:Lcom/androidplot/Region;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    return-void
.end method
