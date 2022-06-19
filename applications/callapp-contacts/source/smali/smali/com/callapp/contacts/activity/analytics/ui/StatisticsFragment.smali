.class public Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;
.super Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 17
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;->setEnterViaBottomBar(Z)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;->setSource(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected addCardShowingAdEvent()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->addCardShowingAdEvent()V

    return-void
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->STATISTICS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 26
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;->enterFromBottomBar:Z

    if-eqz p1, :cond_0

    .line 28
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 p1, 0x2

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "source"

    aput-object v1, v6, p1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/StatisticsFragment;->sourceForEvent:Ljava/lang/String;

    aput-object v1, v6, p1

    const-string v1, "Insights"

    const-string v2, "ViewInsightsStatsTab"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
