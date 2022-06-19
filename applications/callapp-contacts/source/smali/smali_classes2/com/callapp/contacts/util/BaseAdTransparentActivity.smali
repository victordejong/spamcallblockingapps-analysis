.class public abstract Lcom/callapp/contacts/util/BaseAdTransparentActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# static fields
.field public static final EXTRA_AD_LOADED:Ljava/lang/String; = "AD_LOADED"


# instance fields
.field protected adPlaceHolder:Landroid/widget/FrameLayout;

.field protected currentAd:Ljava/lang/Object;

.field protected multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private nativeAdView:Landroid/view/View;

.field protected onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->clearAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->nativeAdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/callapp/contacts/util/BaseAdTransparentActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->nativeAdView:Landroid/view/View;

    return-object p1
.end method

.method private clearAd()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->currentAd:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 194
    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    .line 196
    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 197
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 198
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    goto :goto_0

    .line 200
    :cond_0
    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .line 201
    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->nativeAdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 202
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 203
    iput-object v2, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->nativeAdView:Landroid/view/View;

    .line 205
    :goto_0
    iput-object v2, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->currentAd:Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->finish()V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getAdLayoutResourceId(I)I
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->getSmallCardAdLayoutResourceId(I)I

    move-result p1

    return p1
.end method

.method protected abstract getAdUnitIdRemoteConfigName()Ljava/lang/String;
.end method

.method protected abstract getBiddingRemoteConfigName()Ljava/lang/String;
.end method

.method protected abstract getExperimentRemoteConfigName()Ljava/lang/String;
.end method

.method protected abstract getPreferencesRemoteConfigName()Ljava/lang/String;
.end method

.method protected getViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method protected initAd()V
    .locals 10

    const v0, 0x7f0a00b1

    .line 58
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->adPlaceHolder:Landroid/widget/FrameLayout;

    .line 59
    new-instance v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity$1;-><init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 74
    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->adPlaceHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AD_LOADED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a:Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;->a(Ljava/lang/Class;)Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->getPreferencesRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getRefreshInterval()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->isRetryAfterFail()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 86
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->b(F)F

    move-result v9

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->getBiddingRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->getAdUnitIdRemoteConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    new-instance v8, Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;-><init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V

    move-object v3, p0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;->a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 104
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a()V

    return-void

    .line 106
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getAdLoader()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 107
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getDisableRefresh()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void

    .line 109
    :cond_4
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getNativeAd()Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 110
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getNativeAd()Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;->getDisableRefresh()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    :cond_5
    return-void
.end method

.method public synthetic onAdClick()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method protected onAdLoaded(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0601cc

    .line 162
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f060026

    .line 163
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 164
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;-><init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;ILandroid/view/View;I)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 1

    .line 130
    iget-object p2, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->currentAd:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;-><init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;Lcom/mopub/mobileads/MoPubView;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onDestroy()V

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->multiSizeAdLoader:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->adPlaceHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->clearAd()V

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

.method public synthetic onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;-><init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;Lcom/mopub/nativeads/NativeAd;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
