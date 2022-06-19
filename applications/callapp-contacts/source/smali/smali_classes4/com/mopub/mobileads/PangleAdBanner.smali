.class public Lcom/mopub/mobileads/PangleAdBanner;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "PangleAdBanner"

.field private static e:Ljava/lang/String;


# instance fields
.field private f:Lcom/mopub/mobileads/PangleAdapterConfiguration;

.field private g:Landroid/content/Context;

.field private h:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

.field private i:I

.field private j:I

.field private k:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 47
    new-instance v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/PangleAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner;->f:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/PangleAdBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner;->k:Landroid/view/View;

    return-object p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/mopub/mobileads/PangleAdBanner;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getAdSize(Lcom/mopub/mobileads/AdData;)[I
    .locals 14

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 128
    fill-array-data v1, :array_0

    if-nez p0, :cond_0

    new-array p0, v0, [I

    .line 131
    fill-array-data p0, :array_1

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdData;->getAdWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 136
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdData;->getAdHeight()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    aput p0, v1, v0

    .line 138
    aget p0, v1, v2

    aget v3, v1, v0

    div-int/2addr p0, v3

    int-to-float p0, p0

    const v3, 0x3f99999a    # 1.2f

    cmpl-float v4, p0, v3

    if-eqz v4, :cond_a

    const v4, 0x40cccccd    # 6.4f

    cmpl-float v4, p0, v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 145
    :cond_1
    aget v4, v1, v2

    int-to-float v4, v4

    const/high16 v5, 0x44160000    # 600.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3fe00000    # 1.75f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3fa00000    # 1.25f

    const/high16 v12, 0x3f400000    # 0.75f

    cmpg-float v13, v4, v12

    if-gtz v13, :cond_2

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    cmpg-float v13, v4, v11

    if-gtz v13, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    cmpg-float v4, v4, v9

    if-gtz v4, :cond_4

    const/high16 v4, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    :goto_0
    cmpg-float p0, p0, v3

    if-gez p0, :cond_5

    mul-float v5, v5, v4

    float-to-int p0, v5

    aput p0, v1, v2

    const/high16 p0, 0x43fa0000    # 500.0f

    mul-float v4, v4, p0

    float-to-int p0, v4

    aput p0, v1, v0

    goto :goto_2

    .line 161
    :cond_5
    aget p0, v1, v2

    int-to-float p0, p0

    const/high16 v3, 0x44200000    # 640.0f

    div-float/2addr p0, v3

    cmpg-float v4, p0, v12

    if-gez v4, :cond_6

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_6
    cmpg-float v4, p0, v11

    if-gez v4, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    cmpg-float p0, p0, v9

    if-gez p0, :cond_8

    goto :goto_1

    :cond_8
    const/high16 v6, 0x40000000    # 2.0f

    :goto_1
    mul-float v3, v3, v6

    float-to-int p0, v3

    aput p0, v1, v2

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v6, v6, p0

    float-to-int p0, v6

    aput p0, v1, v0

    .line 176
    :goto_2
    aget p0, v1, v2

    if-gtz p0, :cond_9

    const/16 p0, 0x258

    aput p0, v1, v2

    aput v2, v1, v0

    .line 181
    :cond_9
    aget p0, v1, v0

    if-gez p0, :cond_a

    aput v2, v1, v0

    :cond_a
    :goto_3
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x258
        0x1f4
    .end array-data
.end method


# virtual methods
.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lcom/mopub/mobileads/PangleAdBanner;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner;->k:Landroid/view/View;

    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 8

    .line 52
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1053
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    .line 57
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner;->g:Landroid/content/Context;

    .line 60
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdBanner;->f:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-virtual {v2, p1, v1}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 62
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ad_placement_id"

    .line 63
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    sput-object v4, Lcom/mopub/mobileads/PangleAdBanner;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/PangleAdBanner;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard."

    aput-object v0, v1, v3

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void

    :cond_1
    const-string v4, "adm"

    .line 76
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 77
    iget-object v5, p0, Lcom/mopub/mobileads/PangleAdBanner;->f:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-virtual {v5, p1, v1}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 80
    :goto_0
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    if-nez p1, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/PangleAdBanner;->d:Ljava/lang/String;

    aput-object v4, v1, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 83
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, v1, v2

    .line 82
    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_3
    return-void

    .line 92
    :cond_4
    invoke-static {p2}, Lcom/mopub/mobileads/PangleAdBanner;->getAdSize(Lcom/mopub/mobileads/AdData;)[I

    move-result-object p2

    .line 93
    aget v1, p2, v0

    iput v1, p0, Lcom/mopub/mobileads/PangleAdBanner;->i:I

    .line 94
    aget p2, p2, v3

    iput p2, p0, Lcom/mopub/mobileads/PangleAdBanner;->j:I

    .line 96
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/PangleAdBanner;->d:Ljava/lang/String;

    aput-object v5, v2, v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BannerWidth = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/mopub/mobileads/PangleAdBanner;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", BannerHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mopub/mobileads/PangleAdBanner;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {p2, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 99
    new-instance p2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    sget-object v1, Lcom/mopub/mobileads/PangleAdBanner;->e:Ljava/lang/String;

    .line 100
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 101
    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 102
    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    iget v1, p0, Lcom/mopub/mobileads/PangleAdBanner;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mopub/mobileads/PangleAdBanner;->j:I

    int-to-float v2, v2

    .line 103
    invoke-virtual {p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 104
    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p2

    .line 106
    new-instance v1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdBanner;->g:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;-><init>(Lcom/mopub/mobileads/PangleAdBanner;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/PangleAdBanner;->h:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    .line 107
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    iget-object v2, p0, Lcom/mopub/mobileads/PangleAdBanner;->g:Landroid/content/Context;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->loadAdExpressBanner(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V

    .line 109
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-static {p1, p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner;->h:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->destroy()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner;->h:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    :cond_0
    return-void
.end method

.method public shouldReportImpressionAndClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
