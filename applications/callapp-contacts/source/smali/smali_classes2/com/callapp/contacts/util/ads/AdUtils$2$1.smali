.class Lcom/callapp/contacts/util/ads/AdUtils$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AdUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/AdUtils$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AdUtils$2;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .line 364
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AdUtils$2;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    .line 366
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AdUtils$2;->b:Ljava/lang/String;

    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v1, "general"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$2;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$2;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$2;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$2;->e:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    .line 359
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$2$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$2;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AdUtils$2;->b:Ljava/lang/String;

    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v1, "general"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method
