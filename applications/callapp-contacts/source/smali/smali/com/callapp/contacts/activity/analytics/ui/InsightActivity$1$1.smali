.class Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;->a:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 141
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->f()V

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;->a:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;)Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;->a:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->b(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;->a:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;)Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->STATISTICS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 1091
    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1$1;->a:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity$1;->b:Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->a(Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;)Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->INSIGHTS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 2091
    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method
