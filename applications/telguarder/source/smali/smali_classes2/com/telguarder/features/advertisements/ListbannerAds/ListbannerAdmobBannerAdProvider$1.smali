.class Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ListbannerAdmobBannerAdProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 215
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 172
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->closed:Z

    .line 173
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 178
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 179
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 186
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 188
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->access$000(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 222
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 194
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 206
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 207
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adClicked:Z

    .line 209
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->access$100(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 200
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method
