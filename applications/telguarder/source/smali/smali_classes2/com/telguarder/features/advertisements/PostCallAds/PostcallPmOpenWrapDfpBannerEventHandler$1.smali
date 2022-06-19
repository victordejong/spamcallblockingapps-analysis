.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;
.super Ljava/lang/Object;
.source "PostcallPmOpenWrapDfpBannerEventHandler.java"

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBidsProvider()Lcom/pubmatic/sdk/common/base/POBBidsProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdClick()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onAdServerWin(Landroid/view/View;)V
    .locals 4

    .line 116
    instance-of v0, p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 118
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->AD_SERVER:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendOwDfpPartnerWinAction(Ljava/lang/String;D)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - AD SERVER WIN!\n        - adSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdServerWin(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR\n        - code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    return-void
.end method

.method public onOpenWrapPartnerWin()V
    .locals 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OW PARTNER WIN!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendOwDfpPartnerWinAction(Ljava/lang/String;D)V

    .line 100
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;)Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onOpenWrapPartnerWin()V

    :cond_1
    return-void
.end method

.method public onOpenWrapPartnerWin(Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n        - bid id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
