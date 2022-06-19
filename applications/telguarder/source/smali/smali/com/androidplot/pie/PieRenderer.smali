.class public Lcom/androidplot/pie/PieRenderer;
.super Lcom/androidplot/ui/SeriesRenderer;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/pie/PieRenderer$DonutMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/SeriesRenderer<",
        "Lcom/androidplot/pie/PieChart;",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final FULL_PIE_DEGS:F = 360.0f

.field private static final HALF_PIE_DEGS:F = 180.0f


# instance fields
.field private donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

.field private donutSize:F

.field private extentDegs:F

.field private startDegs:F


# direct methods
.method public constructor <init>(Lcom/androidplot/pie/PieChart;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/androidplot/ui/SeriesRenderer;-><init>(Lcom/androidplot/Plot;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->startDegs:F

    const/high16 p1, 0x43b40000    # 360.0f

    .line 39
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->extentDegs:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 42
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    .line 43
    sget-object p1, Lcom/androidplot/pie/PieRenderer$DonutMode;->PERCENT:Lcom/androidplot/pie/PieRenderer$DonutMode;

    iput-object p1, p0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    return-void
.end method

.method protected static degsToScreenDegs(F)F
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    sub-float/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method

.method protected static signedDistance(DD)D
    .locals 5

    sub-double/2addr p0, p2

    .line 354
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p2, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, p2, v2

    if-lez v4, :cond_0

    sub-double p2, v0, p2

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v4, p0, v0

    if-ltz v4, :cond_1

    cmpg-double v0, p0, v2

    if-lez v0, :cond_2

    :cond_1
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_3

    const-wide v0, -0x3f89800000000000L    # -360.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    int-to-double p0, p0

    mul-double p2, p2, p0

    return-wide p2
.end method

.method protected static validateInputDegs(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Degrees values must be between 0.0 and 360."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected calculateLineEnd(FFFF)Landroid/graphics/PointF;
    .locals 1

    .line 240
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected calculateLineEnd(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 4

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    float-to-double p2, p2

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p2

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p2, p2, v0

    .line 250
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    double-to-float p2, p2

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected calculateScale([D)D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 217
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 218
    aget-wide v3, p1, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 0

    .line 208
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 30
    check-cast p3, Lcom/androidplot/pie/SegmentFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/pie/PieRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/SegmentFormatter;)V

    return-void
.end method

.method protected drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;FFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialInset()F

    move-result v2

    add-float v2, p6, v2

    .line 91
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialInset()F

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v3, v3, v8

    sub-float v3, p7, v3

    div-float v4, v3, v8

    add-float v9, v2, v4

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getOffset()F

    move-result v6

    .line 96
    invoke-virtual {v0, v4, v5, v6, v9}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v4

    .line 99
    iget v10, v4, Landroid/graphics/PointF;->x:F

    .line 100
    iget v11, v4, Landroid/graphics/PointF;->y:F

    .line 103
    sget-object v4, Lcom/androidplot/pie/PieRenderer$1;->$SwitchMap$com$androidplot$pie$PieRenderer$DonutMode:[I

    iget-object v5, v0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    invoke-virtual {v5}, Lcom/androidplot/pie/PieRenderer$DonutMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 108
    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    cmpl-float v5, v4, v6

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    add-float v4, p5, v4

    goto :goto_0

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported DonutMde: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_2
    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    mul-float v4, v4, p5

    .line 114
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getOuterInset()F

    move-result v5

    sub-float v12, p5, v5

    cmpl-float v5, v4, v6

    if-nez v5, :cond_3

    const/4 v13, 0x0

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getInnerInset()F

    move-result v5

    add-float v6, v4, v5

    move v13, v6

    .line 118
    :goto_1
    iget v4, v0, Lcom/androidplot/pie/PieRenderer;->extentDegs:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 120
    invoke-virtual {v0, v10, v11, v12, v2}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v4

    .line 121
    invoke-virtual {v0, v10, v11, v13, v2}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v5

    add-float v6, v2, v3

    .line 124
    invoke-virtual {v0, v10, v11, v12, v6}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v14

    .line 125
    invoke-virtual {v0, v10, v11, v13, v6}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v15

    .line 127
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    move/from16 p7, v9

    iget v9, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v12

    move-object/from16 p5, v14

    iget v14, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v12

    move-object/from16 v16, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v12

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v12

    invoke-direct {v0, v9, v14, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 139
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 141
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 143
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 146
    new-instance v1, Landroid/graphics/RectF;

    sub-float v4, v10, v12

    sub-float v8, v11, v12

    add-float v9, v10, v12

    add-float v14, v11, v12

    invoke-direct {v1, v4, v8, v9, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 152
    iget v1, v15, Landroid/graphics/PointF;->x:F

    iget v2, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, v10, v13

    sub-float v4, v11, v13

    add-float v8, v10, v13

    add-float v9, v11, v13

    invoke-direct {v1, v2, v4, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    neg-float v2, v3

    invoke-virtual {v0, v1, v6, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 166
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget v2, v15, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getRadialEdgePaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    move/from16 p7, v9

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 174
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v10, v11, v12, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 175
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 176
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v10, v11, v13, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 177
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 178
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 183
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getInnerEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v7, v10, v11, v13, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getOuterEdgePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v7, v10, v11, v12, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sub-float v0, v12, v13

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr v12, v0

    move-object/from16 v0, p0

    move/from16 v2, p7

    .line 189
    invoke-virtual {v0, v10, v11, v12, v2}, Lcom/androidplot/pie/PieRenderer;->calculateLineEnd(FFFF)Landroid/graphics/PointF;

    move-result-object v1

    .line 195
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 196
    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/androidplot/pie/PieRenderer;->drawSegmentLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V

    :cond_5
    return-void
.end method

.method protected drawSegmentLabel(Landroid/graphics/Canvas;Landroid/graphics/PointF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 1

    .line 202
    invoke-virtual {p3}, Lcom/androidplot/pie/Segment;->getTitle()Ljava/lang/String;

    move-result-object p3

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4}, Lcom/androidplot/pie/SegmentFormatter;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getContainingSegment(Landroid/graphics/PointF;)Lcom/androidplot/pie/Segment;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/pie/PieChart;

    invoke-virtual {v2}, Lcom/androidplot/pie/PieChart;->getPie()Lcom/androidplot/pie/PieWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/pie/PieWidget;->getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object v2

    iget-object v2, v2, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    .line 293
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 294
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    .line 295
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    float-to-double v1, v2

    .line 296
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v1, v1, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-gez v7, :cond_0

    add-double/2addr v1, v3

    .line 305
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getValues()[D

    move-result-object v9

    .line 308
    invoke-virtual {v0, v9}, Lcom/androidplot/pie/PieRenderer;->calculateScale([D)D

    move-result-wide v10

    .line 309
    iget v12, v0, Lcom/androidplot/pie/PieRenderer;->startDegs:F

    invoke-static {v12}, Lcom/androidplot/pie/PieRenderer;->degsToScreenDegs(F)F

    move-result v12

    .line 310
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/androidplot/ui/SeriesBundle;

    .line 312
    aget-wide v14, v9, v8

    mul-double v14, v14, v10

    iget v3, v0, Lcom/androidplot/pie/PieRenderer;->extentDegs:F

    float-to-double v3, v3

    mul-double v14, v14, v3

    double-to-float v3, v14

    add-float/2addr v3, v12

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    float-to-double v14, v3

    .line 316
    invoke-static {v14, v15, v1, v2}, Lcom/androidplot/pie/PieRenderer;->signedDistance(DD)D

    move-result-wide v16

    move-wide/from16 v18, v1

    float-to-double v0, v12

    .line 317
    invoke-static {v14, v15, v0, v1}, Lcom/androidplot/pie/PieRenderer;->signedDistance(DD)D

    move-result-wide v0

    cmpg-double v2, v0, v5

    const-wide v14, 0x4076800000000000L    # 360.0

    if-gez v2, :cond_1

    add-double/2addr v0, v14

    :cond_1
    cmpl-double v2, v16, v5

    if-lez v2, :cond_2

    cmpg-double v2, v16, v0

    if-gtz v2, :cond_2

    .line 324
    invoke-virtual {v13}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v0

    check-cast v0, Lcom/androidplot/pie/Segment;

    return-object v0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move v12, v3

    move-wide v3, v14

    move-wide/from16 v1, v18

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtentDegs()F
    .locals 1

    .line 400
    iget v0, p0, Lcom/androidplot/pie/PieRenderer;->extentDegs:F

    return v0
.end method

.method public getRadius(Landroid/graphics/RectF;)F
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    :goto_0
    div-float/2addr p1, v2

    return p1
.end method

.method public getStartDegs()F
    .locals 1

    .line 385
    iget v0, p0, Lcom/androidplot/pie/PieRenderer;->startDegs:F

    return v0
.end method

.method protected getValues()[D
    .locals 5

    .line 229
    invoke-virtual {p0}, Lcom/androidplot/pie/PieRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/ui/SeriesBundle;

    .line 233
    invoke-virtual {v3}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    check-cast v3, Lcom/androidplot/pie/Segment;

    invoke-virtual {v3}, Lcom/androidplot/pie/Segment;->getValue()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0

    .line 30
    check-cast p3, Lcom/androidplot/pie/Segment;

    check-cast p4, Lcom/androidplot/pie/SegmentFormatter;

    invoke-virtual/range {p0 .. p5}, Lcom/androidplot/pie/PieRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 17

    move-object/from16 v8, p0

    .line 64
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Lcom/androidplot/ui/RenderStack;->disable(Ljava/lang/Class;)V

    move-object/from16 v0, p2

    .line 66
    invoke-virtual {v8, v0}, Lcom/androidplot/pie/PieRenderer;->getRadius(Landroid/graphics/RectF;)F

    move-result v9

    .line 67
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getValues()[D

    move-result-object v10

    .line 70
    invoke-virtual {v8, v10}, Lcom/androidplot/pie/PieRenderer;->calculateScale([D)D

    move-result-wide v11

    .line 71
    iget v0, v8, Lcom/androidplot/pie/PieRenderer;->startDegs:F

    invoke-static {v0}, Lcom/androidplot/pie/PieRenderer;->degsToScreenDegs(F)F

    move-result v0

    .line 73
    new-instance v13, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v9

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v9

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v9

    invoke-direct {v13, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/pie/PieRenderer;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v1, 0x0

    move v6, v0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 79
    aget-wide v1, v10, v15

    mul-double v1, v1, v11

    iget v3, v8, Lcom/androidplot/pie/PieRenderer;->extentDegs:F

    float-to-double v3, v3

    mul-double v1, v1, v3

    double-to-float v7, v1

    add-float v16, v6, v7

    .line 81
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/androidplot/pie/Segment;

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/androidplot/pie/SegmentFormatter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/pie/PieRenderer;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;FFF)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDonutSize(FLcom/androidplot/pie/PieRenderer$DonutMode;)V
    .locals 2

    .line 264
    sget-object v0, Lcom/androidplot/pie/PieRenderer$1;->$SwitchMap$com$androidplot$pie$PieRenderer$DonutMode:[I

    invoke-virtual {p2}, Lcom/androidplot/pie/PieRenderer$DonutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 276
    :goto_0
    iput-object p2, p0, Lcom/androidplot/pie/PieRenderer;->donutMode:Lcom/androidplot/pie/PieRenderer$DonutMode;

    .line 277
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->donutSize:F

    return-void

    .line 267
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size parameter must be between 0 and 1 when operating in PERCENT mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtentDegs(F)V
    .locals 0

    .line 395
    invoke-static {p1}, Lcom/androidplot/pie/PieRenderer;->validateInputDegs(F)V

    .line 396
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->extentDegs:F

    return-void
.end method

.method public setStartDegs(F)V
    .locals 0

    .line 380
    invoke-static {p1}, Lcom/androidplot/pie/PieRenderer;->validateInputDegs(F)V

    .line 381
    iput p1, p0, Lcom/androidplot/pie/PieRenderer;->startDegs:F

    return-void
.end method
