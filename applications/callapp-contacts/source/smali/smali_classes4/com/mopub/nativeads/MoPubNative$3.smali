.class final Lcom/mopub/nativeads/MoPubNative$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/network/AdResponse;

.field final synthetic b:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->f(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->f(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/b;->isStoppedByFloorPrice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->g(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;

    .line 272
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/b;

    .line 274
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mopub/nativeads/MoPubNative;->a(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public final onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 8

    .line 237
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/b;

    .line 240
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative;->d:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForAd(Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v6

    if-nez v6, :cond_1

    .line 247
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubNative$3;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->b(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->b(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    new-instance v7, Lcom/mopub/nativeads/NativeAd;

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/network/AdResponse;

    .line 257
    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->c(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Lcom/mopub/network/AdResponse;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 255
    invoke-static {v0, v7}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 260
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubNative;->e(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->d(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V

    return-void
.end method
