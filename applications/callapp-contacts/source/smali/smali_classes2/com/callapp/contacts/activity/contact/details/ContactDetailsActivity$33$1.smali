.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;)V
    .locals 0

    .line 2159
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAdClick()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public synthetic onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 2169
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2170
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4602(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 2171
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 2177
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4602(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 2178
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4802(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z

    .line 2179
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z

    .line 2180
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$1200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v0, :cond_0

    .line 2181
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .line 2162
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const-string v1, "onInterstitialLoaded"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4602(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 2187
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x1

    .line 3039
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2188
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public synthetic onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method
