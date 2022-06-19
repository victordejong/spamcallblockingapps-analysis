.class public Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;
.super Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;
.source "SourceFile"


# instance fields
.field private d:Lcom/callapp/contacts/util/ads/AppBidder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V
    .locals 1

    .line 17
    invoke-direct {p0, p1, p3, p4}, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    .line 19
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 20
    new-instance p3, Lcom/callapp/contacts/util/ads/AppBidder;

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/callapp/contacts/util/ads/AppBidder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->c:Z

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->b:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AppBidder;->a(ZLcom/callapp/contacts/util/ads/AdUtils$AdEvents;)Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->b:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->b:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    const/4 v1, 0x0

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;->b()V

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->a()V

    :cond_0
    return-void
.end method
