.class Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
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

    .line 369
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$6;->b:Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$6;->a:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
