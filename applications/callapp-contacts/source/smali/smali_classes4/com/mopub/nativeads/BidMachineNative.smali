.class public Lcom/mopub/nativeads/BidMachineNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "BidMachineNative"


# instance fields
.field private b:Lcom/mopub/nativeads/BidMachineNativeAd;

.field private c:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

.field private d:Ljava/lang/String;

.field private e:D

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/mopub/nativeads/BidMachineNative;->e:D

    .line 34
    new-instance v0, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->c:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->b:Lcom/mopub/nativeads/BidMachineNativeAd;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/mopub/nativeads/BidMachineNativeAd;->destroy()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->b:Lcom/mopub/nativeads/BidMachineNativeAd;

    :cond_0
    return-void
.end method

.method public loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
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

    .line 43
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->c:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-virtual {v0, p1, p4}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 45
    invoke-static {p4}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/BidMachineNative;->e:D

    const-string v0, "app_bidder_request_id"

    .line 46
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->f:Ljava/lang/String;

    const-string v0, "com_mopub_ad_unit_id"

    .line 47
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->d:Ljava/lang/String;

    const-string v0, "bm_id"

    .line 50
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/nativead/NativeRequest;

    const/4 v0, 0x2

    if-nez p3, :cond_0

    .line 53
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v6, "Fetched AdRequest not found"

    aput-object v6, v4, v3

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 58
    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v5, v4, v0

    .line 56
    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    aput-object v4, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fetched request resolved: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Lio/bidmachine/nativead/NativeRequest;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 61
    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->c:Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    invoke-virtual {v0, p1, p4}, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    if-eqz p3, :cond_2

    .line 70
    new-instance p4, Lcom/mopub/nativeads/BidMachineNativeAd;

    invoke-direct {p4}, Lcom/mopub/nativeads/BidMachineNativeAd;-><init>()V

    iput-object p4, p0, Lcom/mopub/nativeads/BidMachineNative;->b:Lcom/mopub/nativeads/BidMachineNativeAd;

    .line 71
    iget-object v0, p0, Lcom/mopub/nativeads/BidMachineNative;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mopub/nativeads/BidMachineNative;->e:D

    iget-object v1, p0, Lcom/mopub/nativeads/BidMachineNative;->f:Ljava/lang/String;

    .line 1040
    new-instance v6, Lio/bidmachine/nativead/NativeAd;

    invoke-direct {v6, p1}, Lio/bidmachine/nativead/NativeAd;-><init>(Landroid/content/Context;)V

    iput-object v6, p4, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    .line 1041
    iget-object p1, p4, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    new-instance v6, Lcom/mopub/nativeads/BidMachineNativeAd$a;

    invoke-direct {v6, p4, p2}, Lcom/mopub/nativeads/BidMachineNativeAd$a;-><init>(Lcom/mopub/nativeads/BidMachineNativeAd;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    invoke-virtual {p1, v6}, Lio/bidmachine/nativead/NativeAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 1042
    iget-object p1, p4, Lcom/mopub/nativeads/BidMachineNativeAd;->a:Lio/bidmachine/nativead/NativeAd;

    invoke-virtual {p1, p3}, Lio/bidmachine/nativead/NativeAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    .line 1043
    iput-object v0, p4, Lcom/mopub/nativeads/BidMachineNativeAd;->b:Ljava/lang/String;

    .line 1044
    iput-wide v4, p4, Lcom/mopub/nativeads/BidMachineNativeAd;->c:D

    .line 1045
    iput-object v1, p4, Lcom/mopub/nativeads/BidMachineNativeAd;->d:Ljava/lang/String;

    .line 73
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v3, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/nativeads/BidMachineNative;->a:Ljava/lang/String;

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_2
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
