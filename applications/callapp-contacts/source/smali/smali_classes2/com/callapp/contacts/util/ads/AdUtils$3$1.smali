.class Lcom/callapp/contacts/util/ads/AdUtils$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AdUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/AdUtils$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AdUtils$3;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .line 456
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AdUtils$3;->g:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    .line 458
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AdUtils$3$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$3;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AdUtils$3;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$3$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$3;->b:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v0

    const-string v1, "general"

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$3$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$3;->g:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AdUtils$3$1;->a:Lcom/callapp/contacts/util/ads/AdUtils$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AdUtils$3;->g:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method
