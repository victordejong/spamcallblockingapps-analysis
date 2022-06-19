.class Lcom/callapp/contacts/util/ads/AppBidder$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AppBidder$5;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

.field final synthetic b:Lcom/callapp/contacts/util/ads/AppBidder$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder$5;Lcom/callapp/contacts/util/ads/bidder/Waterfall;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 11

    .line 782
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v0, :cond_0

    .line 783
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 784
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 785
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

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

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 787
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "error"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    .line 788
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-wide v9, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v0, v9

    .line 789
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v3, "Ad"

    const-string v4, "waterfall_flow_ended"

    .line 784
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "failed, errorCode: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 795
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 798
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 10

    .line 748
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 749
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v2, :cond_0

    .line 750
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xa

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 751
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

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

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 753
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "price"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    .line 754
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

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-wide v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v0, v4

    .line 755
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "waterfall_flow_ended"

    .line 750
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->f(Lcom/callapp/contacts/util/ads/AppBidder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_0

    .line 761
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 763
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 765
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {v1, v2, v3}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :catch_0
    iput-boolean p2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 769
    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    .line 770
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->setMoPubView(Lcom/mopub/mobileads/MoPubView;)V

    .line 771
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 773
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded, price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 774
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 9

    .line 885
    sget-boolean p1, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz p1, :cond_0

    .line 886
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 887
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 p1, 0xa

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v3, "placement"

    aput-object v3, v8, p1

    const/4 p1, 0x1

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 888
    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v3

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

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 890
    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, p1

    const/4 p1, 0x6

    const-string v3, "error"

    aput-object v3, v8, p1

    const/4 p1, 0x7

    .line 891
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, p1

    const/16 p1, 0x8

    const-string v3, "duration"

    aput-object v3, v8, p1

    const/16 p1, 0x9

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-wide v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v0, v3

    .line 892
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, p1

    const-string v3, "Ad"

    const-string v4, "waterfall_flow_ended"

    .line 887
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 895
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "failed, errorCode: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 897
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 11

    .line 851
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 852
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 853
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/16 v2, 0xa

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "placement"

    aput-object v5, v10, v2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 854
    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v2

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

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v5, v5, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 856
    invoke-static {v5}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v2

    const/4 v2, 0x6

    const-string v5, "price"

    aput-object v5, v10, v2

    const/4 v2, 0x7

    .line 857
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

    iget-object v5, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-wide v5, v5, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v0, v5

    .line 858
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v2

    const-string v5, "Ad"

    const-string v6, "waterfall_flow_ended"

    .line 853
    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->f(Lcom/callapp/contacts/util/ads/AppBidder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 864
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 866
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 868
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {v1, v4, v5}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :catch_0
    iput-boolean v3, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 872
    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 873
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->setInterstitial(Lcom/mopub/mobileads/MoPubInterstitial;)V

    .line 874
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 876
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loaded, price: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 877
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 862
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 880
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->d:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 11

    .line 834
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v0, :cond_0

    .line 835
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 836
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 837
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

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

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 839
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "error"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    .line 840
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string v4, "duration"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-wide v9, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v0, v9

    .line 841
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v3, "Ad"

    const-string v4, "waterfall_flow_ended"

    .line 836
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "failed, errorCode: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 10

    .line 803
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 804
    sget-boolean v2, Lcom/callapp/contacts/util/ads/AppBidder;->d:Z

    if-eqz v2, :cond_0

    .line 805
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/16 v2, 0xa

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "placement"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 806
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

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

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    .line 808
    invoke-static {v4}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/util/ads/JSONAdUnit;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x6

    const-string v4, "price"

    aput-object v4, v9, v2

    const/4 v2, 0x7

    .line 809
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

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-wide v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$5;->b:J

    sub-long/2addr v0, v4

    .line 810
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    const-string v4, "Ad"

    const-string v5, "waterfall_flow_ended"

    .line 805
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->f(Lcom/callapp/contacts/util/ads/AppBidder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;-><init>()V

    .line 817
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/BaseNativeAd;->getPublisherRevenue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    .line 818
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-static {v1, v2, v3}, Lcom/mopub/common/CallAppBidderManager;->updatePriceIfNeeded(Ljava/lang/String;D)V

    .line 819
    iput-boolean p2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    .line 820
    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    .line 821
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/util/ads/bidder/Waterfall;->setNativeAd(Lcom/mopub/nativeads/NativeAd;)V

    .line 822
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->a:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->waterfall:Lcom/callapp/contacts/util/ads/bidder/Waterfall;

    .line 824
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/AppBidder;->e(Lcom/callapp/contacts/util/ads/AppBidder;)Lcom/callapp/contacts/util/ads/JSONBidding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidding;->getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded, price: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/ads/AppBidder;->a(Lcom/callapp/contacts/util/ads/AppBidder;Lcom/callapp/contacts/util/ads/JSONAdUnit;Ljava/lang/String;)V

    .line 825
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 814
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 828
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$5$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$5;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$5;->e:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AppBidder;->j(Lcom/callapp/contacts/util/ads/AppBidder;)V

    return-void
.end method
