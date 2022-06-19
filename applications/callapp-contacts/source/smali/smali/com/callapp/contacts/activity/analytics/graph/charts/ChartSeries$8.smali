.class Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
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

    .line 419
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;->a:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 423
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    iput-object v0, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 424
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->f:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;

    .line 1100
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    sget-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 424
    :goto_1
    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Z)Z

    .line 425
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->f:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;

    return-void
.end method
