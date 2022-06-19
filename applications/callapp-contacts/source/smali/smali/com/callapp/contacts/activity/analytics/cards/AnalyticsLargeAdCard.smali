.class public Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method


# virtual methods
.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "InsightsBigExperiments"

    return-object v0
.end method

.method public getMultiSizeAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiSizeBiddingConfigurationRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "InsightsBigAdCardPreferences"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public onAdLoaded()V
    .locals 1

    .line 46
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard;)V

    .line 51
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
