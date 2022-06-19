.class public Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/PangleAdBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleAdBannerExpressLoader"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/PangleAdBanner;

.field private b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field private e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PangleAdBanner;Landroid/content/Context;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$1;-><init>(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)V

    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 304
    new-instance p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$3;-><init>(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)V

    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 229
    iput-object p2, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method static synthetic b(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1282
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;-><init>(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)V

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 357
    iput-object v1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 360
    :cond_0
    iput-object v1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 361
    iput-object v1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 363
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/PangleAdBanner;->a(Lcom/mopub/mobileads/PangleAdBanner;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public loadAdExpressBanner(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    return-void

    .line 234
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2

    .line 235
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    return-void
.end method
