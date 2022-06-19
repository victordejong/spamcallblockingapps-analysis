.class Lcom/callapp/contacts/activity/contact/cards/AdCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/AdCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAdClick()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 1

    .line 120
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->updateCardData(Ljava/lang/Object;Z)V

    return-void
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialDismissed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialShown(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNativeFail: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 1

    .line 131
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->updateCardData(Ljava/lang/Object;Z)V

    return-void
.end method
