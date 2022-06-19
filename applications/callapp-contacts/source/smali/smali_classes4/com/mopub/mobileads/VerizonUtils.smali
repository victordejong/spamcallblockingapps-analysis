.class public final Lcom/mopub/mobileads/VerizonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/mobileads/VerizonUtils;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertErrorInfoToMoPub(Lcom/verizon/ads/ErrorInfo;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1

    if-nez p0, :cond_0

    .line 23
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->getErrorCode()I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 33
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method

.method public static convertErrorInfoToMoPubNative(Lcom/verizon/ads/ErrorInfo;)Lcom/mopub/nativeads/NativeErrorCode;
    .locals 1

    if-nez p0, :cond_0

    .line 39
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->getErrorCode()I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 49
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/mopub/mobileads/VerizonUtils;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
