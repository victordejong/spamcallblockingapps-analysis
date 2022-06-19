.class Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$4;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$4;->a:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 317
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$4;->a:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-void
.end method
