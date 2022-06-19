.class public Lcom/androidplot/xy/BarRenderer;
.super Lcom/androidplot/xy/GroupRenderer;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/BarRenderer$BarComparator;,
        Lcom/androidplot/xy/BarRenderer$BarGroup;,
        Lcom/androidplot/xy/BarRenderer$Bar;,
        Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;,
        Lcom/androidplot/xy/BarRenderer$BarOrientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/BarFormatter;",
        ">",
        "Lcom/androidplot/xy/GroupRenderer<",
        "TFormatterType;>;"
    }
.end annotation


# instance fields
.field private barGroupWidthMode:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

.field private barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/androidplot/xy/GroupRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 39
    sget-object p1, Lcom/androidplot/xy/BarRenderer$BarOrientation;->OVERLAID:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    .line 40
    sget-object p1, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->barGroupWidthMode:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    const/high16 p1, 0x40400000    # 3.0f

    .line 46
    invoke-static {p1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result p1

    iput p1, p0, Lcom/androidplot/xy/BarRenderer;->width:F

    return-void
.end method


# virtual methods
.method protected createBarRect(FFFFLcom/androidplot/xy/BarFormatter;)Landroid/graphics/RectF;
    .locals 0

    .line 240
    invoke-static {p1, p2, p3, p4}, Lcom/androidplot/util/RectFUtils;->createFromEdges(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 241
    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p5}, Lcom/androidplot/xy/BarFormatter;->getMarginLeft()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 242
    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p5}, Lcom/androidplot/xy/BarFormatter;->getMarginRight()F

    move-result p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 243
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Lcom/androidplot/xy/BarFormatter;->getMarginTop()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 244
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p5}, Lcom/androidplot/xy/BarFormatter;->getMarginBottom()F

    move-result p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-object p1
.end method

.method public bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 37
    check-cast p3, Lcom/androidplot/xy/BarFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/BarRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BarFormatter;)V

    return-void
.end method

.method public doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/BarFormatter;)V
    .locals 1

    .line 116
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 119
    :cond_0
    invoke-virtual {p3}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawBar(Landroid/graphics/Canvas;Lcom/androidplot/xy/BarRenderer$Bar;Landroid/graphics/RectF;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/androidplot/xy/BarRenderer$Bar<",
            "TFormatterType;>;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Lcom/androidplot/xy/BarRenderer$Bar;->getY()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget v0, p2, Lcom/androidplot/xy/BarRenderer$Bar;->i:I

    iget-object v1, p2, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/xy/BarRenderer;->getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/BarFormatter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p2, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    .line 259
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 260
    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->hasFillPaint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    .line 262
    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    .line 261
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 265
    :cond_2
    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->hasLinePaint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    .line 267
    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    .line 266
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 272
    :cond_3
    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->hasPointLabelFormatter()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 275
    invoke-virtual {v0}, Lcom/androidplot/xy/BarFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v2

    :cond_5
    if-eqz v1, :cond_6

    .line 277
    invoke-virtual {v1}, Lcom/androidplot/xy/PointLabelFormatter;->hasTextPaint()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 278
    iget-object v0, p2, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    iget v3, p2, Lcom/androidplot/xy/BarRenderer$Bar;->i:I

    invoke-interface {v2, v0, v3}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    iget v2, v1, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr p3, v2

    iget p2, p2, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    iget v2, v1, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr p2, v2

    .line 280
    invoke-virtual {v1}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 278
    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected getBarComparator(F)Lcom/androidplot/xy/BarRenderer$BarComparator;
    .locals 2

    .line 111
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarComparator;

    invoke-virtual {p0}, Lcom/androidplot/xy/BarRenderer;->getBarOrientation()Lcom/androidplot/xy/BarRenderer$BarOrientation;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/androidplot/xy/BarRenderer$BarComparator;-><init>(Lcom/androidplot/xy/BarRenderer$BarOrientation;F)V

    return-object v0
.end method

.method public getBarGroupWidth()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/androidplot/xy/BarRenderer;->width:F

    return v0
.end method

.method public getBarGroupWidthMode()Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer;->barGroupWidthMode:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    return-object v0
.end method

.method public getBarOrientation()Lcom/androidplot/xy/BarRenderer$BarOrientation;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    return-object v0
.end method

.method public getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/BarFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/androidplot/xy/XYSeries;",
            ")TFormatterType;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/util/List;ILcom/androidplot/ui/RenderStack;)V
    .locals 24
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    .line 138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 145
    new-instance v2, Lcom/androidplot/xy/BarRenderer$BarGroup;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v15}, Lcom/androidplot/xy/BarRenderer$BarGroup;-><init>(IFLandroid/graphics/RectF;)V

    .line 147
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/androidplot/ui/SeriesBundle;

    .line 149
    invoke-virtual {v8}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v9

    check-cast v9, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v9, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 150
    new-instance v14, Lcom/androidplot/xy/BarRenderer$Bar;

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v9

    check-cast v9, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v8}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v10

    check-cast v10, Lcom/androidplot/xy/XYSeries;

    .line 151
    invoke-virtual {v8}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/androidplot/xy/BarFormatter;

    move-object v8, v14

    move/from16 v12, v16

    move v13, v1

    move-object v4, v14

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/androidplot/xy/BarRenderer$Bar;-><init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/BarFormatter;IILandroid/graphics/RectF;)V

    .line 152
    invoke-virtual {v2, v4}, Lcom/androidplot/xy/BarRenderer$BarGroup;->addBar(Lcom/androidplot/xy/BarRenderer$Bar;)V

    .line 153
    iget v4, v4, Lcom/androidplot/xy/BarRenderer$Bar;->xPix:F

    iput v4, v2, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 165
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 168
    sget-object v1, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$BarGroupWidthMode:[I

    iget-object v2, v6, Lcom/androidplot/xy/BarRenderer;->barGroupWidthMode:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    invoke-virtual {v2}, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v10, 0x0

    goto :goto_4

    .line 174
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    if-le v8, v4, :cond_4

    .line 176
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v1, v1, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v11, v11, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    sub-float/2addr v1, v11

    iget v11, v6, Lcom/androidplot/xy/BarRenderer;->width:F

    sub-float/2addr v1, v11

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    div-float/2addr v1, v2

    .line 180
    iget v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    .line 181
    iget v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightPix:F

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    .line 170
    iget v1, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    iget v11, v6, Lcom/androidplot/xy/BarRenderer;->width:F

    div-float/2addr v11, v2

    sub-float/2addr v1, v11

    iput v1, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    .line 171
    iget v1, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    iget v2, v6, Lcom/androidplot/xy/BarRenderer;->width:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightPix:F

    .line 190
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/BarRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget v2, v15, Landroid/graphics/RectF;->top:F

    float-to-double v11, v2

    iget v2, v15, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v2

    const/16 v23, 0x1

    move-object/from16 v16, v1

    move-wide/from16 v19, v11

    move-wide/from16 v21, v13

    .line 192
    invoke-virtual/range {v16 .. v23}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v1

    double-to-float v11, v1

    .line 194
    invoke-virtual {v6, v11}, Lcom/androidplot/xy/BarRenderer;->getBarComparator(F)Lcom/androidplot/xy/BarRenderer$BarComparator;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation:[I

    iget-object v12, v6, Lcom/androidplot/xy/BarRenderer;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    invoke-virtual {v12}, Lcom/androidplot/xy/BarRenderer$BarOrientation;->ordinal()I

    move-result v12

    aget v2, v2, v12

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 220
    iget-object v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->plotArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    int-to-float v2, v2

    .line 221
    iget-object v3, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    iget-object v0, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v4, v2

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/androidplot/xy/BarRenderer$Bar;

    .line 224
    iget-object v0, v12, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget-object v0, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->plotArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, v12, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    sub-float/2addr v0, v1

    sub-float v13, v4, v0

    .line 226
    iget-object v0, v12, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v1, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    iget-object v0, v12, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v3, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightPix:F

    iget-object v14, v12, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    move-object/from16 v0, p0

    move v2, v13

    move-object/from16 v16, v5

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/BarRenderer;->createBarRect(FFFFLcom/androidplot/xy/BarFormatter;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v7, v12, v0}, Lcom/androidplot/xy/BarRenderer;->drawBar(Landroid/graphics/Canvas;Lcom/androidplot/xy/BarRenderer$Bar;Landroid/graphics/RectF;)V

    move v4, v13

    move-object/from16 v5, v16

    goto :goto_5

    :cond_6
    move-object/from16 v16, v5

    goto/16 :goto_8

    .line 234
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected BarOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/androidplot/xy/BarRenderer;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v16, v5

    .line 208
    invoke-virtual {v0}, Lcom/androidplot/xy/BarRenderer$BarGroup;->getWidth()F

    move-result v2

    iget-object v3, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 209
    iget v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    .line 210
    iget-object v3, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    iget-object v0, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v1, v2

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/androidplot/xy/BarRenderer$Bar;

    .line 212
    iget v2, v14, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    add-float v17, v1, v12

    iget-object v5, v14, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    move-object/from16 v0, p0

    move/from16 v3, v17

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/BarRenderer;->createBarRect(FFFFLcom/androidplot/xy/BarFormatter;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v7, v14, v0}, Lcom/androidplot/xy/BarRenderer;->drawBar(Landroid/graphics/Canvas;Lcom/androidplot/xy/BarRenderer$Bar;Landroid/graphics/RectF;)V

    move/from16 v1, v17

    goto :goto_6

    :cond_9
    move-object/from16 v16, v5

    .line 198
    iget-object v2, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    iget-object v0, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/androidplot/xy/BarRenderer$Bar;

    .line 200
    iget-object v0, v13, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v1, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    iget v2, v13, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    iget-object v0, v13, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    iget v3, v0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightPix:F

    iget-object v5, v13, Lcom/androidplot/xy/BarRenderer$Bar;->formatter:Lcom/androidplot/xy/BarFormatter;

    move-object/from16 v0, p0

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/BarRenderer;->createBarRect(FFFFLcom/androidplot/xy/BarFormatter;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v6, v7, v13, v0}, Lcom/androidplot/xy/BarRenderer;->drawBar(Landroid/graphics/Canvas;Lcom/androidplot/xy/BarRenderer$Bar;Landroid/graphics/RectF;)V

    goto :goto_7

    :cond_a
    :goto_8
    move-object/from16 v5, v16

    goto/16 :goto_2

    :cond_b
    return-void
.end method

.method public setBarGroupWidth(Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;F)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->barGroupWidthMode:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    .line 107
    iput p2, p0, Lcom/androidplot/xy/BarRenderer;->width:F

    return-void
.end method

.method public setBarOrientation(Lcom/androidplot/xy/BarRenderer$BarOrientation;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    return-void
.end method
