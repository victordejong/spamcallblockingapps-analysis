.class Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Z)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 305
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;->a:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    :cond_0
    iput p1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 308
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;

    .line 309
    invoke-interface {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
