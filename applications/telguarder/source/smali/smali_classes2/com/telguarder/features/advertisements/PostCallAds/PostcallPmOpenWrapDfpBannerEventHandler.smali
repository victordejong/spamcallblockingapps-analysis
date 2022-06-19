.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;
.super Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;
.source "PostcallPmOpenWrapDfpBannerEventHandler.java"


# static fields
.field public static AD_SERVER:Ljava/lang/String; = "AdServer"


# instance fields
.field public PM_OPENWRAP_DFP:Ljava/lang/String;

.field public dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private externalEventListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

.field private lastBid:Lcom/pubmatic/sdk/openwrap/core/POBBid;

.field private final localEventListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_dfp_handler"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->lastBid:Lcom/pubmatic/sdk/openwrap/core/POBBid;

    .line 95
    new-instance p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;

    invoke-direct {p1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->localEventListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->lastBid:Lcom/pubmatic/sdk/openwrap/core/POBBid;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->externalEventListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 182
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm_ow_dfp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v2

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm_ow_dfp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v2

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - ADSERVER IMPRESSION LOGGED!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 168
    invoke-super {p0, p1, p2}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    - onAppEvent\n        - key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n        - s1: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 44
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->lastBid:Lcom/pubmatic/sdk/openwrap/core/POBBid;

    .line 45
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getTargetingInfo()Ljava/util/Map;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    - TARGETING PARAMS:"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "\n          - ["

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v2

    .line 55
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendOwDfpRequestedWithBidDataAction(Ljava/lang/String;D)V

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    - APP EVENT EXPECTED:\n        - bid price: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendOwDfpBidResponse(Ljava/lang/String;D)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->AD_SERVER:Ljava/lang/String;

    iput-object v2, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    .line 64
    :goto_1
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getSummary()Ljava/util/List;

    move-result-object v0

    const-string v2, "x"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getSummary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "\n    - BID SUMMARY:"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getSummary()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;

    const-string v4, "\n        - "

    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getBidderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getBidValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], msg:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->getErrorCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    - HIGHEST/WINNIG BID:\n        - Has won: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->hasWon()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n        - Status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n        - Partner: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n        - Creative id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n        - Deal id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getDealId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n        - L URL: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getlURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n        - Cr. Type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getCreativeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n        - N URL: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getnURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n        - Size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n        - Refresh intv.: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getRefreshInterval()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " BID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-super {p0, p1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    return-void
.end method

.method public setEventListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->externalEventListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    .line 92
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->localEventListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    invoke-super {p0, p1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->setEventListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;)V

    return-void
.end method

.method public trackClick()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm_ow_dfp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v2

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public trackImpression()V
    .locals 3

    .line 155
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm_ow_dfp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v2

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - PARTNER IMPRESSION LOGGED!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method
