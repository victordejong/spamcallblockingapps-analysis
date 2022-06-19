.class public Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;
.super Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 40
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->l:Landroid/graphics/RectF;

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->a:F

    iget v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->b:F

    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 6

    .line 29
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ArcSeries;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->a(Landroid/graphics/Canvas;)V

    .line 1056
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getEdgeDetail()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1061
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;

    .line 1062
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getEdgeType()Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->EDGE_INNER:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1065
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->c:Ljava/lang/String;

    const-string v2, "EDGE_INNER Not Yet Implemented for pie chart"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1069
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getRatio()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float v2, v2, v3

    .line 1071
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1072
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->l:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1073
    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1074
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1075
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->setClipPath(Landroid/graphics/Path;)V

    .line 1078
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;->getColor()I

    move-result v1

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1090
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1093
    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1101
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    .line 1102
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1103
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1104
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->a(Landroid/graphics/Canvas;)V

    .line 1105
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1106
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1095
    :catch_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/PieSeries;->c:Ljava/lang/String;

    const-string v2, "clipPath unavailable on API 11 - 17 without disabling hardware acceleration. (EdgeDetail functionality requires clipPath). Call DecoView.enableCompatibilityMode() to enable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_4
    return v0
.end method
