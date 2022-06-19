.class public Lcom/mopub/nativeads/PubNativeNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PubNativeNative"


# instance fields
.field private b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private c:Landroid/content/Context;

.field private d:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;

.field private e:D

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/mopub/nativeads/PubNativeNative;->e:D

    .line 40
    new-instance v0, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/PubNativeNative;->h:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/PubNativeNative;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mopub/nativeads/PubNativeNative;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
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

    .line 48
    iput-object p1, p0, Lcom/mopub/nativeads/PubNativeNative;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/mopub/nativeads/PubNativeNative;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 51
    iget-object p2, p0, Lcom/mopub/nativeads/PubNativeNative;->h:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-virtual {p2, p1, p4}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const-string p2, "pn_zone_id"

    .line 53
    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 54
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/nativeads/PubNativeNative;->g:Ljava/lang/String;

    .line 61
    iget-object p2, p0, Lcom/mopub/nativeads/PubNativeNative;->h:Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    invoke-virtual {p2, p1, p4}, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 63
    invoke-static {p4}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/mopub/nativeads/PubNativeNative;->e:D

    const-string p1, "app_bidder_request_id"

    .line 64
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/nativeads/PubNativeNative;->f:Ljava/lang/String;

    .line 66
    new-instance p1, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/PubNativeNative;->d:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->setMediation(Z)V

    .line 68
    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative;->d:Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;

    iget-object p2, p0, Lcom/mopub/nativeads/PubNativeNative;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest;->load(Ljava/lang/String;Lnet/pubnative/lite/sdk/request/HyBidNativeAdRequest$RequestListener;)V

    return-void

    .line 56
    :cond_0
    sget-object p1, Lcom/mopub/nativeads/PubNativeNative;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onRequestFail(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/mopub/nativeads/PubNativeNative;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    if-eqz p1, :cond_0

    .line 79
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lnet/pubnative/lite/sdk/models/NativeAd;)V
    .locals 8

    .line 73
    new-instance v0, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;

    new-instance v3, Lcom/mopub/nativeads/ImpressionTracker;

    iget-object v1, p0, Lcom/mopub/nativeads/PubNativeNative;->c:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/mopub/nativeads/PubNativeNative;->b:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    iget-wide v5, p0, Lcom/mopub/nativeads/PubNativeNative;->e:D

    iget-object v7, p0, Lcom/mopub/nativeads/PubNativeNative;->g:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/mopub/nativeads/PubNativeNative$HyBidStaticNativeAd;-><init>(Lcom/mopub/nativeads/PubNativeNative;Lnet/pubnative/lite/sdk/models/NativeAd;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;DLjava/lang/String;)V

    return-void
.end method
