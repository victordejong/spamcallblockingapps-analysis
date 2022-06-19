.class public Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;
.super Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;
.source "SourceFile"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 29
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;->setEnterViaBottomBar(Z)V

    .line 31
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;->setSource(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected addCardShowingAdEvent()V
    .locals 0

    return-void
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 43
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->INSIGHTS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 24
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 p1, 0x2

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "source"

    aput-object v1, v6, p1

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;->sourceForEvent:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v6, v1

    const-string v1, "Insights"

    const-string v2, "ViewInsightsTab"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/InsightsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
