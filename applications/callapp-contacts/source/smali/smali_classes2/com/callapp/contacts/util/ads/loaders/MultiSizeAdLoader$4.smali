.class Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    return-void
.end method

.method public onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 179
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget v0, p2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d:I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 184
    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 185
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->c:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->e(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)I

    const/high16 v0, 0x41000000    # 8.0f

    .line 152
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a01be

    .line 154
    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/MoPubView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v1

    .line 162
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 164
    invoke-virtual {p1, v2}, Lcom/mopub/mobileads/MoPubView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iput v4, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d:I

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iput-boolean v4, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->e:Z

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iput-boolean v4, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f:Z

    if-nez p2, :cond_2

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d()V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

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

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onNativeFail: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget v0, p1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d:I

    .line 217
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->c:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->e(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)I

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d:I

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iput-boolean v1, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->e:Z

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iput-boolean v1, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->f:Z

    if-nez p2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->d()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$4;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method
