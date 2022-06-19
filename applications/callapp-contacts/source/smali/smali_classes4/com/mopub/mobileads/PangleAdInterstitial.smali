.class public Lcom/mopub/mobileads/PangleAdInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "PangleAdInterstitial"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcom/mopub/mobileads/PangleAdapterConfiguration;

.field private h:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 41
    new-instance v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/PangleAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->g:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/mopub/mobileads/PangleAdInterstitial;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->h:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->f:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/PangleAdInterstitial;->d:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->h:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->f:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a(Landroid/app/Activity;)V

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/PangleAdInterstitial;->d:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return-void
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 6

    .line 46
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->f:Landroid/content/Context;

    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    .line 51
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 54
    iget-object v1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->g:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 55
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ad_placement_id"

    .line 56
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->e:Ljava/lang/String;

    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/PangleAdInterstitial;->d:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard."

    aput-object v0, v1, v2

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void

    :cond_1
    const-string v3, "adm"

    .line 70
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->g:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-virtual {v4, p1, p2}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 74
    :goto_0
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    if-nez p2, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/PangleAdInterstitial;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 77
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, v3, v1

    .line 76
    invoke-static {p1, p2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_3

    .line 81
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_3
    return-void

    .line 86
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v4, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->e:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/PangleAdInterstitial;->d:Ljava/lang/String;

    aput-object v5, v2, v0

    invoke-static {v3, v4, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/16 v0, 0x438

    const/16 v2, 0x780

    .line 94
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 95
    new-instance v0, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;-><init>(Lcom/mopub/mobileads/PangleAdInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->h:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    .line 96
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V

    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdInterstitial;->h:Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdInterstitial$PangleAdInterstitialFullVideoLoader;->destroy()V

    :cond_0
    return-void
.end method

.method public shouldReportImpressionAndClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
