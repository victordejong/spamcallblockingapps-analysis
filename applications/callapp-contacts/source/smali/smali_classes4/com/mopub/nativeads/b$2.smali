.class final Lcom/mopub/nativeads/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/mopub/nativeads/b;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/b;D)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    iput-wide p2, p0, Lcom/mopub/nativeads/b$2;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    .line 4032
    iget-boolean v0, v0, Lcom/mopub/nativeads/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onNativeAdFailed with code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 182
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    .line 5032
    invoke-virtual {v0}, Lcom/mopub/nativeads/b;->b()V

    .line 185
    iget-object v0, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    .line 6032
    iget-object v0, v0, Lcom/mopub/nativeads/b;->a:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 185
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public final onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    .line 1032
    iget-boolean v0, v0, Lcom/mopub/nativeads/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onNativeAdLoaded"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    .line 2032
    invoke-virtual {v0}, Lcom/mopub/nativeads/b;->b()V

    .line 172
    invoke-virtual {p1}, Lcom/mopub/nativeads/BaseNativeAd;->getCallAppExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-wide v1, p0, Lcom/mopub/nativeads/b$2;->a:D

    const-string v3, "callapp_floor_price"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 174
    iget-object v0, p0, Lcom/mopub/nativeads/b$2;->b:Lcom/mopub/nativeads/b;

    .line 3032
    iget-object v0, v0, Lcom/mopub/nativeads/b;->a:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 174
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    return-void
.end method
