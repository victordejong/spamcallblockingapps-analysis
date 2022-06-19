.class public Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/ShowAdWhenAnalyticsExtand;


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 18
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/ShowAdWhenAnalyticsExtand;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 19
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;)V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->tryLoadingAd()V

    return-void
.end method


# virtual methods
.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CDAnalyticsSmallExperiments"

    return-object v0
.end method

.method public getMultiSizeAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiSizeBiddingConfigurationRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CDAnalyticsSmallAdCardPreferences"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->priority:I

    return v0
.end method

.method public loadAdOnContactChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAdLoaded()V
    .locals 1

    .line 31
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;)V

    .line 36
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/ShowAdWhenAnalyticsExtand;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 42
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->onDestroy()V

    return-void
.end method

.method public onShowAd()V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->isDestroyed:Z

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;)V

    .line 79
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method public shouldShowAd()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/CDSmallAdCard;->shouldShowAd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->ANALYTICS_CARD:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
