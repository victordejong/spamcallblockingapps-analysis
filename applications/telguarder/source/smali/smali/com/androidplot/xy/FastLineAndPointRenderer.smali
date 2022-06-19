.class public Lcom/androidplot/xy/FastLineAndPointRenderer;
.super Lcom/androidplot/xy/XYSeriesRenderer;
.source "FastLineAndPointRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/XYSeriesRenderer<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final MINIMUM_NUMBER_OF_POINTS_TO_DEFINE_A_LINE:I = 0x4


# instance fields
.field private points:[F

.field segmentLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field segmentOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/androidplot/xy/XYSeriesRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/Formatter;)V
    .locals 0

    .line 38
    check-cast p3, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/xy/FastLineAndPointRenderer;->doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V

    return-void
.end method

.method protected doDrawLegendIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V
    .locals 7

    .line 132
    invoke-virtual {p3}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->hasLinePaint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    :cond_0
    invoke-virtual {p3}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->hasVertexPaint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p3}, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->getVertexPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected drawSegment(Landroid/graphics/Canvas;[FIILcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V
    .locals 3

    .line 108
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-lt p4, v0, :cond_1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p4, -0x2

    .line 113
    iget-object v1, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    add-int/lit8 v1, p3, 0x2

    .line 114
    iget-object v2, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p4, -0x4

    .line 117
    iget-object v2, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->vertexPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 124
    iget-object p5, p5, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->vertexPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 0

    .line 38
    check-cast p3, Lcom/androidplot/xy/XYSeries;

    check-cast p4, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;

    invoke-virtual/range {p0 .. p5}, Lcom/androidplot/xy/FastLineAndPointRenderer;->onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V

    return-void
.end method

.method protected onRender(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;Lcom/androidplot/ui/RenderStack;)V
    .locals 9

    .line 55
    iget-object p5, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 56
    iget-object p5, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 58
    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    .line 59
    iget-object v0, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p5, :cond_1

    .line 61
    :cond_0
    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    new-array p5, p5, [F

    iput-object p5, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    .line 66
    :cond_1
    new-instance p5, Landroid/graphics/PointF;

    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    :goto_0
    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 68
    invoke-interface {p3, v2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v6

    .line 69
    invoke-interface {p3, v2}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v7

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    if-eqz v4, :cond_2

    .line 73
    iget-object v3, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/xy/FastLineAndPointRenderer;->getPlot()Lcom/androidplot/Plot;

    move-result-object v8

    check-cast v8, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v8}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v8

    invoke-virtual {v8, p5, v7, v6, p2}, Lcom/androidplot/xy/RectRegion;->transformScreen(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)V

    .line 79
    iget-object v6, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    iget v7, p5, Landroid/graphics/PointF;->x:F

    aput v7, v6, v5

    .line 80
    iget-object v6, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    add-int/lit8 v7, v5, 0x1

    iget v8, p5, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x2

    .line 84
    invoke-interface {p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v6

    sub-int/2addr v6, v0

    if-ne v2, v6, :cond_4

    .line 85
    iget-object v6, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 88
    iget-object v4, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 94
    :cond_5
    iget-object p2, p4, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->linePaint:Landroid/graphics/Paint;

    if-nez p2, :cond_6

    iget-object p2, p4, Lcom/androidplot/xy/FastLineAndPointRenderer$Formatter;->vertexPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_7

    .line 95
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_7

    .line 96
    iget-object p2, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentLengths:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 97
    iget-object p2, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->segmentOffsets:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 98
    iget-object v4, p0, Lcom/androidplot/xy/FastLineAndPointRenderer;->points:[F

    move-object v2, p0

    move-object v3, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/FastLineAndPointRenderer;->drawSegment(Landroid/graphics/Canvas;[FIILcom/androidplot/xy/FastLineAndPointRenderer$Formatter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
