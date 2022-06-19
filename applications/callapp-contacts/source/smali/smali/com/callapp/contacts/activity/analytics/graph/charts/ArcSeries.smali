.class public abstract Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;
.super Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected b:F


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->n:I

    const/16 v1, 0x168

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v1, :cond_0

    new-array v0, v5, [I

    .line 73
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v1

    aput v1, v0, v3

    new-array v1, v5, [F

    .line 74
    fill-array-data v1, :array_0

    .line 75
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->k:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->k:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    iget v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->m:I

    int-to-float v1, v1

    iget v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->n:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->k:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 78
    invoke-virtual {v3, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 84
    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v6

    aput v6, v1, v4

    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v6

    aput v6, v1, v3

    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSecondaryColor()I

    move-result v6

    aput v6, v1, v5

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v6, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    .line 85
    iget v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->n:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    mul-float v6, v6, v4

    aput v6, v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v5

    .line 86
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->k:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method abstract a(Landroid/graphics/Canvas;)V
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 6

    .line 41
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 45
    :cond_0
    iget v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->g:F

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->h:F

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMinValue()F

    move-result v3

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMaxValue()F

    move-result v4

    iget v5, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->j:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a(FFFFF)F

    move-result p1

    .line 46
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->n:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->c(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a(F)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->b:F

    .line 47
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->m:I

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a:F

    .line 49
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getDrawAsPoint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->b:F

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->b(F)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a:F

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->getMinSweepAngle()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a(F)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->b:F

    goto :goto_0

    .line 52
    :cond_1
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->b:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    return p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
