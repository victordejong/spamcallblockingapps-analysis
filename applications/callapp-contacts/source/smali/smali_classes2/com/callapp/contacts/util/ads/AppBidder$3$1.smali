.class Lcom/callapp/contacts/util/ads/AppBidder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AppBidder$3;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

.field final synthetic c:Lcom/callapp/contacts/util/ads/AppBidder$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder$3;JLcom/callapp/contacts/util/ads/bidder/Waterfall;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iput-wide p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 11

    .line 332
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 334
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 335
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "fill"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string v4, "false"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "adType"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 337
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "error"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    .line 338
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    iget-wide v9, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    sub-long/2addr v0, v9

    .line 339
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v3, "Ad"

    const-string v4, "waterfall_flow_ended"

    .line 334
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "failed, errorCode: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 10

    .line 298
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 299
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v2, :cond_0

    .line 300
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xa

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 301
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x2

    const-string v4, "fill"

    aput-object v4, v9, v2

    const/4 v2, 0x3

    const-string v4, "true"

    aput-object v4, v9, v2

    const/4 v2, 0x4

    const-string v4, "adType"

    aput-object v4, v9, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 303
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "price"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    .line 304
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/16 v2, 0x8

    const-string v4, "duration"

    aput-object v4, v9, v2

    const/16 v2, 0x9

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    sub-long/2addr v0, v4

    .line 305
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "waterfall_flow_ended"

    .line 300
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->f(Lcom/callapp/contacts/util/ads/AppBidder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 313
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 315
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {v1, v2, v3}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    iput-boolean p2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 319
    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    .line 320
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->setMoPubView(Lcom/mopub/mobileads/MoPubView;)V

    .line 321
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 323
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded, price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 327
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 9

    .line 434
    sget-boolean p1, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz p1, :cond_0

    .line 435
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 436
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 p1, 0xa

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v3, "placement"

    aput-object v3, v8, p1

    const/4 p1, 0x1

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 437
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, p1

    const/4 p1, 0x2

    const-string v3, "fill"

    aput-object v3, v8, p1

    const/4 p1, 0x3

    const-string v3, "false"

    aput-object v3, v8, p1

    const/4 p1, 0x4

    const-string v3, "adType"

    aput-object v3, v8, p1

    const/4 p1, 0x5

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 439
    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, p1

    const/4 p1, 0x6

    const-string v3, "error"

    aput-object v3, v8, p1

    const/4 p1, 0x7

    .line 440
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, p1

    const/16 p1, 0x8

    const-string v3, "duration"

    aput-object v3, v8, p1

    const/16 p1, 0x9

    iget-wide v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    sub-long/2addr v0, v3

    .line 441
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, p1

    const-string v3, "Ad"

    const-string v4, "waterfall_flow_ended"

    .line 436
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "failed, errorCode: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 11

    .line 400
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 401
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 402
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/16 v2, 0xa

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "placement"

    aput-object v5, v10, v2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 403
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v3

    const/4 v2, 0x2

    const-string v5, "fill"

    aput-object v5, v10, v2

    const/4 v2, 0x3

    const-string v5, "true"

    aput-object v5, v10, v2

    const/4 v2, 0x4

    const-string v5, "adType"

    aput-object v5, v10, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v5, v5, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 405
    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v2

    const/4 v2, 0x6

    const-string v5, "price"

    aput-object v5, v10, v2

    const/4 v2, 0x7

    .line 406
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v2

    const/16 v2, 0x8

    const-string v5, "duration"

    aput-object v5, v10, v2

    const/16 v2, 0x9

    iget-wide v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    sub-long/2addr v0, v5

    .line 407
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v2

    const-string v5, "Ad"

    const-string v6, "waterfall_flow_ended"

    .line 402
    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->f(Lcom/callapp/contacts/util/ads/AppBidder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 413
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 415
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 417
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {v1, v4, v5}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :catch_0
    iput-boolean v3, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 421
    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 422
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->setInterstitial(Lcom/mopub/mobileads/MoPubInterstitial;)V

    .line 423
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 425
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loaded, price: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 429
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 11

    .line 383
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 385
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 386
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "fill"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string v4, "false"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "adType"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 388
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "error"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    .line 389
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    iget-wide v9, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    sub-long/2addr v0, v9

    .line 390
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v3, "Ad"

    const-string v4, "waterfall_flow_ended"

    .line 385
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "failed, errorCode: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 10

    .line 353
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 354
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v2, :cond_0

    .line 355
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xa

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 356
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x2

    const-string v4, "fill"

    aput-object v4, v9, v2

    const/4 v2, 0x3

    const-string v4, "true"

    aput-object v4, v9, v2

    const/4 v2, 0x4

    const-string v4, "adType"

    aput-object v4, v9, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 358
    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "price"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    .line 359
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/nativeads/BaseNativeAd;->getPublisherRevenue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/16 v2, 0x8

    const-string v4, "duration"

    aput-object v4, v9, v2

    const/16 v2, 0x9

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->a:J

    sub-long/2addr v0, v4

    .line 360
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "waterfall_flow_ended"

    .line 355
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->f(Lcom/callapp/contacts/util/ads/AppBidder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 367
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/BaseNativeAd;->getPublisherRevenue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 368
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {v1, v2, v3}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V

    .line 369
    iput-boolean p2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 370
    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    .line 371
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->setNativeAd(Lcom/mopub/nativeads/NativeAd;)V

    .line 372
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->b:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 374
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$3;->a:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded, price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 378
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$3$1;->c:Lcom/callapp/contacts/util/ads/AppBidder$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$3;->f:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
