.class Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

.field final synthetic c:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;ZLcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 251
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;->a:Z

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;->c:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;)Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    :cond_0
    return-void
.end method
