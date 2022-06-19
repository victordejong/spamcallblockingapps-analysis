.class public Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-void
.end method


# virtual methods
.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "InsightsSmallExperiments"

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
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "InsightsSmallAdCardPreferences"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public onAdLoaded()V
    .locals 1

    .line 45
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard;)V

    .line 50
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
