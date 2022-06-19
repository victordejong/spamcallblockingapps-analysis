.class public Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;
.super Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 42
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->l:Landroid/graphics/RectF;

    iget v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->a:F

    iget v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->b:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->o:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 7

    .line 32
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->a(Landroid/graphics/Canvas;)V

    .line 1061
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getEdgeDetail()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1066
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;

    .line 1067
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getEdgeType()Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->EDGE_INNER:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1068
    :goto_1
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1069
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getRatio()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result v4

    mul-float v3, v3, v4

    if-eqz v2, :cond_2

    neg-float v3, v3

    .line 1074
    :cond_2
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1075
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->l:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1076
    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 1077
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1078
    invoke-virtual {v1, v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->setClipPath(Landroid/graphics/Path;)V

    .line 1080
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getColor()I

    move-result v1

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    goto :goto_2

    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1092
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1095
    :try_start_0
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1103
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1104
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->a(Landroid/graphics/Canvas;)V

    .line 1105
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1097
    :catch_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/LineArcSeries;->c:Ljava/lang/String;

    const-string v2, "clipPath unavailable on API 11 - 17 without disabling hardware acceleration. (EdgeDetail functionality requires clipPath). Call DecoView.enableCompatibilityMode() to enable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    return v0
.end method
