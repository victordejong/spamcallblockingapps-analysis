.class public Lcom/androidplot/xy/CandlestickRenderer;
.super Lcom/androidplot/xy/GroupRenderer;
.source "CandlestickRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/CandlestickFormatter;",
        ">",
        "Lcom/androidplot/xy/GroupRenderer<",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field protected static final CLOSE_INDEX:I = 0x3

.field protected static final HIGH_INDEX:I = 0x0

.field protected static final LOW_INDEX:I = 0x1

.field protected static final OPEN_INDEX:I = 0x2


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/androidplot/xy/GroupRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 39
    check-cast p3, Lcom/androidplot/xy/CandlestickFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/CandlestickRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/CandlestickFormatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TFormatterType;)V"
        }
    .end annotation

    return-void
.end method

.method protected drawBody(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .line 106
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getBodyWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 107
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iget v0, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 110
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getRisingBodyFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getFallingBodyFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 112
    :goto_0
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_1

    .line 113
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getRisingBodyStrokePaint()Landroid/graphics/Paint;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getFallingBodyStrokePaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 115
    :goto_1
    sget-object p3, Lcom/androidplot/xy/CandlestickRenderer$1;->$SwitchMap$com$androidplot$xy$CandlestickFormatter$BodyStyle:[I

    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getBodyStyle()Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    goto :goto_2

    .line 121
    :cond_2
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/androidplot/xy/CandlestickRenderer;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method protected drawLowerCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getLowerCapWidth()F

    move-result v0

    .line 132
    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float v3, v1, v0

    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float v5, v1, v0

    iget v6, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getLowerCapPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 97
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p4, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p4, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr p2, v1

    invoke-virtual {p4}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 3

    .line 142
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 143
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 147
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawUpperCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getUpperCapWidth()F

    move-result v0

    .line 127
    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float v3, v1, v0

    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float v5, v1, v0

    iget v6, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcom/androidplot/xy/CandlestickFormatter;->getUpperCapPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawWick(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "TFormatterType;)V"
        }
    .end annotation

    .line 102
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4}, Lcom/androidplot/xy/CandlestickFormatter;->getWickPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/androidplot/ui/SeriesBundle<",
            "Lcom/androidplot/xy/XYSeries;",
            "+TFormatterType;>;>;I",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 55
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v5}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v5

    check-cast v5, Lcom/androidplot/xy/CandlestickFormatter;

    move/from16 v6, p4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v8}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v8

    check-cast v8, Lcom/androidplot/xy/XYSeries;

    const/4 v9, 0x1

    .line 59
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v9}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v9

    check-cast v9, Lcom/androidplot/xy/XYSeries;

    const/4 v10, 0x2

    .line 60
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v10}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v10

    check-cast v10, Lcom/androidplot/xy/XYSeries;

    const/4 v11, 0x3

    .line 61
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v11}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v11

    check-cast v11, Lcom/androidplot/xy/XYSeries;

    .line 64
    invoke-interface {v8, v7}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v12

    .line 66
    invoke-interface {v8, v7}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v13

    .line 67
    invoke-interface {v9, v7}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v14

    .line 68
    invoke-interface {v10, v7}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v15

    .line 69
    invoke-interface {v11, v7}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v4

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v16

    check-cast v16, Lcom/androidplot/xy/XYPlot;

    invoke-virtual/range {v16 .. v16}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3, v12, v13, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v13

    check-cast v13, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v13}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v13

    invoke-virtual {v13, v12, v14, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v13

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v14

    check-cast v14, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v14}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v14

    invoke-virtual {v14, v12, v15, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v14

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/CandlestickRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v15

    check-cast v15, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v15}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v15

    invoke-virtual {v15, v12, v4, v2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 77
    invoke-virtual {v0, v1, v3, v13, v5}, Lcom/androidplot/xy/CandlestickRenderer;->drawWick(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 78
    invoke-virtual {v0, v1, v14, v4, v5}, Lcom/androidplot/xy/CandlestickRenderer;->drawBody(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 79
    invoke-virtual {v0, v1, v3, v5}, Lcom/androidplot/xy/CandlestickRenderer;->drawUpperCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 80
    invoke-virtual {v0, v1, v13, v5}, Lcom/androidplot/xy/CandlestickRenderer;->drawLowerCap(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/xy/CandlestickFormatter;)V

    .line 83
    invoke-virtual {v5}, Lcom/androidplot/xy/CandlestickFormatter;->hasPointLabelFormatter()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 84
    invoke-virtual {v5}, Lcom/androidplot/xy/CandlestickFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v12

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    .line 85
    :goto_1
    invoke-virtual {v5}, Lcom/androidplot/xy/CandlestickFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v15

    if-eqz v12, :cond_1

    if-eqz v15, :cond_1

    .line 87
    invoke-interface {v15, v8, v7}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v3, v8, v12}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 88
    invoke-interface {v15, v9, v7}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v13, v3, v12}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 89
    invoke-interface {v15, v10, v7}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v14, v3, v12}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 90
    invoke-interface {v15, v11, v7}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v3, v12}, Lcom/androidplot/xy/CandlestickRenderer;->drawTextLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Ljava/lang/String;Lcom/androidplot/xy/PointLabelFormatter;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    return-void
.end method
