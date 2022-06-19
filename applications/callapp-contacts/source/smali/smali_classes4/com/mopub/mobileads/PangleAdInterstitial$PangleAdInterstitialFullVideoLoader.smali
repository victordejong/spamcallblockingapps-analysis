.class public Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/PangleAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PangleAdInterstitialFullVideoLoader"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/PangleAdInterstitial;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field private e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

.field private f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PangleAdInterstitial;Landroid/content/Context;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$1;-><init>(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)V

    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    .line 227
    new-instance p1, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader$2;-><init>(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)V

    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 155
    iput-object p2, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)Z
    .locals 1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p0
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->c:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    return-void

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mopub/mobileads/PangleAdInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    return-void

    .line 160
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a:Lcom/mopub/mobileads/PangleAdInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->b:Landroid/content/Context;

    .line 182
    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 183
    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    .line 184
    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-void
.end method
