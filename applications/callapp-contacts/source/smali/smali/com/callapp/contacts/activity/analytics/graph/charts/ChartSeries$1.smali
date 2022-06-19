.class Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 233
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget v2, v2, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget v3, v3, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iput p1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    .line 242
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;

    .line 243
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget v1, v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;->a(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
