.class public Lcom/androidplot/xy/LineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "LineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FormatterType:",
        "Lcom/androidplot/xy/LineAndPointFormatter;",
        ">",
        "Lcom/androidplot/xy/XYSeriesRenderer<",
        "Lcom/androidplot/xy/XYSeries;",
        "TFormatterType;>;"
    }
.end annotation


# static fields
.field protected static final ONE:I = 0x1

.field protected static final ZERO:I


# instance fields
.field private final path:Landroid/graphics/Path;

.field protected final pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/androidplot/xy/XYSeries;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 3

    .line 50
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Lcom/androidplot/xy/LineAndPointRenderer$1;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/LineAndPointRenderer$1;-><init>(Lcom/androidplot/xy/LineAndPointRenderer;)V

    invoke-virtual {p1, v0}, Lcom/androidplot/xy/XYPlot;->addListener(Lcom/androidplot/PlotListener;)Z

    return-void
.end method


# virtual methods
.method protected appendToPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 93
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method protected convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected cullPointsCache()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeries;

    .line 125
    invoke-virtual {p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRegistry;

    const-class v3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {v2, v1, v3}, Lcom/androidplot/xy/XYSeriesRegistry;->contains(Lcom/androidplot/Series;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 39
    check-cast p3, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/LineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    return-void
.end method

.method public doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 9

    .line 72
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 73
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 75
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    :cond_0
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    :cond_1
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->hasVertexPaint()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 83
    invoke-virtual {p3}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected drawSeries(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    .line 135
    iget-object v0, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 136
    invoke-virtual {v8, v9}, Lcom/androidplot/xy/LineAndPointRenderer;->getPointsCache(Lcom/androidplot/xy/XYSeries;)Ljava/util/ArrayList;

    move-result-object v10

    .line 139
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    .line 140
    invoke-static/range {p3 .. p3}, Lcom/androidplot/util/SeriesUtils;->getXYOrder(Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    move-result-object v1

    sget-object v2, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->ASCENDING:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v1, v2, :cond_2

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/androidplot/util/SeriesUtils;->iBounds(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/Region;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v12

    .line 147
    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v2

    sub-int/2addr v2, v12

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v14, v0

    move v13, v1

    goto :goto_0

    :cond_2
    move v14, v0

    const/4 v13, 0x0

    :goto_0
    const/4 v15, 0x0

    move v6, v13

    move-object v4, v15

    move-object v5, v4

    :goto_1
    if-ge v6, v14, :cond_a

    .line 152
    invoke-interface {v9, v6}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    .line 153
    invoke-interface {v9, v6}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v1

    .line 154
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    .line 158
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 159
    invoke-interface {v10, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0, v7}, Lcom/androidplot/xy/RectRegion;->transformScreen(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)V

    goto :goto_2

    .line 166
    :cond_4
    invoke-interface {v10, v6, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v15

    .line 170
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz v2, :cond_8

    if-nez v4, :cond_5

    .line 175
    iget-object v0, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 179
    iget-object v0, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v4, v2

    :cond_5
    if-eqz v5, :cond_6

    .line 183
    iget-object v0, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v2, v5}, Lcom/androidplot/xy/LineAndPointRenderer;->appendToPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_6
    move-object v5, v2

    :cond_7
    move/from16 v16, v6

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    .line 189
    iget-object v3, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v16, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/LineAndPointRenderer;->renderPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    goto :goto_3

    :cond_9
    move/from16 v16, v6

    :goto_3
    move-object v4, v15

    move-object v5, v4

    :goto_4
    add-int/lit8 v6, v16, 0x1

    goto :goto_1

    .line 197
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 200
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v0

    .line 199
    invoke-virtual {v8, v0}, Lcom/androidplot/xy/LineAndPointRenderer;->getInterpolator(Lcom/androidplot/xy/InterpolationParams;)Lcom/androidplot/xy/Interpolator;

    move-result-object v0

    .line 201
    invoke-virtual/range {p4 .. p4}, Lcom/androidplot/xy/LineAndPointFormatter;->getInterpolationParams()Lcom/androidplot/xy/InterpolationParams;

    move-result-object v1

    .line 200
    invoke-interface {v0, v9, v1}, Lcom/androidplot/xy/Interpolator;->interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/InterpolationParams;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYCoords;

    invoke-virtual {v8, v1, v7}, Lcom/androidplot/xy/LineAndPointRenderer;->convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYCoords;

    invoke-virtual {v8, v2, v7}, Lcom/androidplot/xy/LineAndPointRenderer;->convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 204
    iget-object v3, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-object v3, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_b

    .line 207
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYCoords;

    invoke-virtual {v8, v3, v7}, Lcom/androidplot/xy/LineAndPointRenderer;->convertPoint(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 208
    iget-object v4, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    move-object v4, v1

    move-object v5, v2

    :cond_c
    if-eqz v4, :cond_d

    .line 213
    iget-object v3, v8, Lcom/androidplot/xy/LineAndPointRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/LineAndPointRenderer;->renderPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v13

    move v5, v14

    move-object v6, v10

    move-object/from16 v7, p4

    .line 216
    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/xy/LineAndPointRenderer;->renderPoints(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;IILjava/util/List;Lcom/androidplot/xy/LineAndPointFormatter;)V

    return-void
.end method

.method protected getInterpolator(Lcom/androidplot/xy/InterpolationParams;)Lcom/androidplot/xy/Interpolator;
    .locals 1

    .line 226
    :try_start_0
    invoke-interface {p1}, Lcom/androidplot/xy/InterpolationParams;->getInterpolatorClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/Interpolator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getPointsCache(Lcom/androidplot/xy/XYSeries;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    invoke-interface {p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v1

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    iget-object v2, p0, Lcom/androidplot/xy/LineAndPointRenderer;->pointsCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v1, :cond_1

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v1, :cond_2

    const/4 p1, 0x0

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    .line 116
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0

    .line 39
    check-cast p3, Lcom/androidplot/xy/XYSeries;

    check-cast p4, Lcom/androidplot/xy/LineAndPointFormatter;

    invoke-virtual/range {p0 .. p5}, Lcom/androidplot/xy/LineAndPointRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/XYSeries;",
            "TFormatterType;",
            "Lcom/androidplot/ui/RenderStack;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/androidplot/xy/LineAndPointRenderer;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/LineAndPointFormatter;)V

    return-void
.end method

.method protected renderPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 265
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 270
    sget-object v6, Lcom/androidplot/xy/LineAndPointRenderer$2;->$SwitchMap$com$androidplot$xy$FillDirection:[I

    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillDirection()Lcom/androidplot/xy/FillDirection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/androidplot/xy/FillDirection;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    const/4 v8, 0x3

    if-ne v6, v8, :cond_0

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v6

    check-cast v6, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v6}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v8

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v6

    check-cast v6, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v6}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v6

    .line 284
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iget v6, v0, Landroid/graphics/RectF;->top:F

    float-to-double v11, v6

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v6

    const/4 v15, 0x1

    .line 283
    invoke-virtual/range {v8 .. v15}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v8

    double-to-float v6, v8

    .line 285
    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fill direction not yet implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillDirection()Lcom/androidplot/xy/FillDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 272
    :cond_2
    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    .line 294
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 295
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 298
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/LineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    .line 299
    new-instance v4, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v4, v0}, Lcom/androidplot/xy/RectRegion;-><init>(Landroid/graphics/RectF;)V

    .line 302
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getRegions()Lcom/androidplot/util/Layerable;

    move-result-object v0

    invoke-interface {v0}, Lcom/androidplot/util/Layerable;->elements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/androidplot/xy/RectRegion;

    move-object/from16 v8, p6

    .line 303
    invoke-virtual {v8, v6}, Lcom/androidplot/xy/LineAndPointFormatter;->getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;

    move-result-object v9

    const/4 v10, 0x0

    .line 305
    invoke-virtual {v3, v6, v4, v10, v7}, Lcom/androidplot/xy/RectRegion;->transform(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/RectRegion;

    move-result-object v10

    .line 306
    invoke-virtual {v10, v4}, Lcom/androidplot/xy/RectRegion;->intersect(Lcom/androidplot/xy/RectRegion;)V

    .line 307
    invoke-virtual {v6}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 308
    invoke-virtual {v10}, Lcom/androidplot/xy/RectRegion;->asRectF()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 311
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 313
    invoke-virtual {v9}, Lcom/androidplot/xy/XYRegionFormatter;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    throw v0

    :cond_5
    move-object/from16 v8, p6

    .line 322
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->hasLinePaint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 323
    invoke-virtual/range {p6 .. p6}, Lcom/androidplot/xy/LineAndPointFormatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 326
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->rewind()V

    return-void
.end method

.method protected renderPoints(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;IILjava/util/List;Lcom/androidplot/xy/LineAndPointFormatter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lcom/androidplot/xy/XYSeries;",
            "II",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/androidplot/xy/LineAndPointFormatter;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasVertexPaint()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasPointLabelFormatter()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 241
    :cond_0
    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasVertexPaint()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 242
    :goto_0
    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->hasPointLabelFormatter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {p7}, Lcom/androidplot/xy/LineAndPointFormatter;->getPointLabeler()Lcom/androidplot/xy/PointLabeler;

    move-result-object v0

    :cond_3
    :goto_2
    if-ge p4, p5, :cond_6

    .line 246
    invoke-interface {p6, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/graphics/PointF;

    if-eqz p7, :cond_5

    if-eqz p2, :cond_4

    .line 251
    iget v1, p7, Landroid/graphics/PointF;->x:F

    iget v3, p7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v3, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 256
    invoke-interface {v0, p3, p4}, Lcom/androidplot/xy/PointLabeler;->getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;

    move-result-object v1

    iget v3, p7, Landroid/graphics/PointF;->x:F

    iget v4, v2, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    add-float/2addr v3, v4

    iget p7, p7, Landroid/graphics/PointF;->y:F

    iget v4, v2, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    add-float/2addr p7, v4

    .line 257
    invoke-virtual {v2}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 256
    invoke-virtual {p1, v1, v3, p7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
