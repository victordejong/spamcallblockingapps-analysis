.class public Lcom/mopub/nativeads/PangleAdNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PangleAdNative"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private e:Lcom/mopub/mobileads/PangleAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/PangleAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/PangleAdNative;->e:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    return-void
.end method

.method static synthetic a(I)Lcom/mopub/nativeads/NativeErrorCode;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 5410
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 5408
    :sswitch_0
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 5403
    :sswitch_1
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 5401
    :sswitch_2
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 5405
    :sswitch_3
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4e21 -> :sswitch_3
        0x9c40 -> :sswitch_2
        0x9c41 -> :sswitch_1
        0x9c44 -> :sswitch_0
        0x9c46 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;
    .locals 0

    .line 5157
    iget-object p0, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mopub/nativeads/PangleAdNative;->d:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/mopub/nativeads/PangleAdNative;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdNative;->c:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/mopub/nativeads/PangleAdNative;->d:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 63
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative;->e:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-virtual {v0, p1, p4}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    .line 65
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "ad_placement_id"

    .line 67
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 70
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p4, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/nativeads/PangleAdNative;->a:Ljava/lang/String;

    aput-object v0, p4, v2

    const-string v0, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard."

    aput-object v0, p4, v3

    invoke-static {p1, p3, p4}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 75
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "adm"

    .line 79
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v4

    .line 83
    iget-object v5, p0, Lcom/mopub/nativeads/PangleAdNative;->e:Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-virtual {v5, p1, p4}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    move-object p1, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    const/16 p4, 0x280

    const/16 v4, 0x140

    .line 89
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getMediaViewWidth()I

    move-result v5

    if-lez v5, :cond_3

    .line 90
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getMediaViewWidth()I

    move-result p4

    .line 92
    :cond_3
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getMediaViewHeight()I

    move-result v5

    if-lez v5, :cond_4

    .line 93
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getMediaViewHeight()I

    move-result v4

    .line 2157
    :cond_4
    iget-object v5, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 96
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v7, v1, [Ljava/lang/Object;

    sget-object v8, Lcom/mopub/nativeads/PangleAdNative;->a:Ljava/lang/String;

    aput-object v8, v7, v2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "extras: mediaViewWidth="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mediaViewHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v5, v6, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v5, "app_bidder_request_id"

    .line 100
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 103
    iget-object p2, p0, Lcom/mopub/nativeads/PangleAdNative;->c:Landroid/content/Context;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p2

    .line 104
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p4, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p4

    .line 108
    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 3157
    iget-object p4, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v8, v1, v2

    invoke-static {p4, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 112
    new-instance p4, Lcom/mopub/nativeads/PangleAdNative$1;

    invoke-direct {p4, p0, p3}, Lcom/mopub/nativeads/PangleAdNative$1;-><init>(Lcom/mopub/nativeads/PangleAdNative;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    return-void

    .line 4157
    :cond_5
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative;->b:Ljava/lang/String;

    .line 147
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object v8, p4, v2

    const-string v0, "The ad manager cannot be created. Please make sure to pass the correct app id."

    aput-object v0, p4, v3

    invoke-static {p1, p3, p4}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    .line 151
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_6
    return-void
.end method
