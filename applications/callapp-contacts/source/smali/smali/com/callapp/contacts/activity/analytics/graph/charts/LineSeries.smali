.class public Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;
.super Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/graphics/Path;

.field private p:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

.field private q:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->a:Ljava/lang/String;

    .line 17
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->b:Landroid/graphics/Path;

    .line 18
    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    .line 19
    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    const-string p2, "LineSeries is experimental. Not all functionality is implemented."

    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isHorizontal()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_LINE_HORIZONTAL:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinClockwise()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v0

    :goto_0
    move v6, v0

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinClockwise()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v0

    :goto_1
    move v7, v0

    .line 108
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->k:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->k:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->k:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->k:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 109
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 12

    .line 28
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinClockwise()Z

    move-result p2

    xor-int/2addr p2, v0

    .line 33
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 36
    iget v5, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->i:F

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMaxValue()F

    move-result v6

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMinValue()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    .line 39
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v6

    .line 1211
    iget-boolean v6, v6, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->a:Z

    const v7, 0x3c23d70a    # 0.01f

    if-eqz v6, :cond_3

    .line 39
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    const v5, 0x3c23d70a    # 0.01f

    .line 43
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v6, v6, v5

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    mul-float v5, v5, v8

    if-nez p2, :cond_4

    move v7, v3

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    :goto_1
    if-nez p2, :cond_5

    move v8, v3

    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    :goto_2
    if-nez p2, :cond_6

    add-float/2addr v6, v3

    goto :goto_3

    :cond_6
    sub-float v6, v7, v6

    :goto_3
    if-nez p2, :cond_7

    add-float/2addr v5, v3

    goto :goto_4

    :cond_7
    sub-float v5, v8, v5

    .line 50
    :goto_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->isHorizontal()Z

    move-result p2

    const-string v9, ")"

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz p2, :cond_b

    .line 51
    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries$1;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_a

    if-eq p2, v11, :cond_9

    if-eq p2, v10, :cond_8

    .line 63
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Gravity set, VERTICAL_CENTER set ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    div-int/2addr p2, v11

    int-to-float p2, p2

    add-float v8, p2, v2

    :goto_5
    move v5, v8

    goto :goto_7

    .line 58
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v3

    sub-float v8, p2, v2

    goto :goto_5

    :cond_a
    div-float/2addr v3, v4

    add-float v8, v3, v2

    goto :goto_5

    .line 70
    :cond_b
    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries$1;->b:[I

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;->ordinal()I

    move-result v2

    aget p2, p2, v2

    if-eq p2, v0, :cond_e

    if-eq p2, v11, :cond_d

    if-eq p2, v10, :cond_c

    .line 82
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Gravity set, HORIZONTAL_CENTER set ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    div-int/2addr p2, v11

    int-to-float p2, p2

    add-float v7, p2, v1

    :goto_6
    move v6, v7

    goto :goto_7

    .line 77
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v3

    sub-float v7, p2, v1

    goto :goto_6

    :cond_e
    add-float v7, v3, v1

    goto :goto_6

    .line 90
    :goto_7
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 91
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->b:Landroid/graphics/Path;

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->b:Landroid/graphics/Path;

    invoke-virtual {p2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return v0
.end method

.method public setHorizGravity(Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/DecoView$HorizGravity;

    return-void
.end method

.method public setVertGravity(Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/DecoView$VertGravity;

    return-void
.end method
