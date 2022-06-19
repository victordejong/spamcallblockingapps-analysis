.class public Lcom/mopub/nativeads/GooglePlayServicesNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/GooglePlayServicesNative$a;,
        Lcom/mopub/nativeads/GooglePlayServicesNative$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GooglePlayServicesNative"


# instance fields
.field private b:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    .line 112
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative;->b:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/mopub/nativeads/GooglePlayServicesNative;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
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

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative;->b:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-virtual {v0, p1, p4}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "adunit"

    .line 123
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 127
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    sget-object p4, Lcom/mopub/nativeads/GooglePlayServicesNative;->a:Ljava/lang/String;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 128
    invoke-virtual {p4}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x2

    sget-object p4, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object p4, p2, p3

    .line 127
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_0
    invoke-static {p4}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v6

    .line 135
    new-instance v1, Lcom/mopub/nativeads/GooglePlayServicesNative$a;

    invoke-direct {v1, p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;-><init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    const-string p2, "google"

    .line 136
    invoke-static {p4, p2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/mopub/nativeads/GooglePlayServicesNative$a;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;DLjava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNative;->b:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-virtual {p2, p1, p4}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
