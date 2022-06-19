.class public Lcom/androidplot/xy/AdvancedLineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "AdvancedLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesRenderer<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;",
        ">;"
    }
.end annotation


# instance fields
.field private latestIndex:I


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 34
    check-cast p3, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;)V
    .locals 7

    .line 69
    invoke-virtual {p3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0

    .line 34
    check-cast p3, Lcom/androidplot/xy/XYSeries;

    check-cast p4, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;

    invoke-virtual/range {p0 .. p5}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 10

    const/4 p5, 0x0

    const/4 v0, 0x0

    move-object v1, p5

    .line 46
    :goto_0
    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 47
    invoke-interface {p3, v0}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    .line 48
    invoke-interface {p3, v0}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v4

    check-cast v4, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v3, v2, p2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, p5

    .line 58
    :goto_1
    invoke-virtual {p4}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 60
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->latestIndex:I

    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v3

    invoke-virtual {p4, v0, v1, v3}, Lcom/androidplot/xy/AdvancedLineAndPointRenderer$Formatter;->getLinePaint(III)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLatestIndex(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/androidplot/xy/AdvancedLineAndPointRenderer;->latestIndex:I

    return-void
.end method
