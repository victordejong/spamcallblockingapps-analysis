.class Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;
.super Ljava/lang/Object;
.source "ListbannerFacebookAdProvider.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adClicked:Z

    const-string p1, "FB listbanner - Ad clicked"

    .line 248
    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->access$100(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)Lcom/facebook/ads/NativeBannerAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->access$100(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)Lcom/facebook/ads/NativeBannerAd;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adClicked:Z

    .line 242
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->access$200(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FB listBanner - Request banner error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J

    if-eqz p2, :cond_2

    .line 219
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 230
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertTooFrequentErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertServerErrorAction(Ljava/lang/String;)V

    .line 233
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->access$000(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 254
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
