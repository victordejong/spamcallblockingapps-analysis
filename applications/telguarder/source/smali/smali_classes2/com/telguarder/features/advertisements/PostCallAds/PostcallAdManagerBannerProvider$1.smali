.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "PostcallAdManagerBannerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 353
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 354
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 279
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 280
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->closed:Z

    .line 281
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideAdInfoText()V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 288
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 289
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 290
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 309
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 313
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 361
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 362
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 363
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD IMPRESSION LOGGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 318
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LEFT APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 333
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 334
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 335
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$402(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;

    .line 338
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$502(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Lcom/google/android/gms/ads/ResponseInfo;)Lcom/google/android/gms/ads/ResponseInfo;

    .line 339
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$600(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Ljava/lang/Boolean;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LOADED\n        - adSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$400(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$400(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - responseId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    .line 341
    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$500(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$500(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - mediationAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    .line 342
    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$500(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$500(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$402(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;

    .line 345
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$502(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Lcom/google/android/gms/ads/ResponseInfo;)Lcom/google/android/gms/ads/ResponseInfo;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADVIEW LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V

    :goto_2
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 325
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 326
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD OPENED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method
