.class final Lcom/mopub/nativeads/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/h;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mopub/nativeads/h$3;->a:Lcom/mopub/nativeads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 7

    .line 100
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 101
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    sget-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v0, v3}, Lcom/mopub/network/MoPubNetworkError$Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to load positioning data"

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 103
    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mopub/nativeads/h$3;->a:Lcom/mopub/nativeads/h;

    .line 1055
    iget-object p1, p1, Lcom/mopub/nativeads/h;->b:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 104
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/h$3;->a:Lcom/mopub/nativeads/h;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 2151
    iget v0, p1, Lcom/mopub/nativeads/h;->f:I

    add-int/2addr v0, v2

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-int v0, v3

    .line 2153
    iget v3, p1, Lcom/mopub/nativeads/h;->a:I

    if-lt v0, v3, :cond_3

    .line 2154
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error downloading positioning information"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2155
    iget-object v0, p1, Lcom/mopub/nativeads/h;->e:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    if-eqz v0, :cond_2

    .line 2156
    iget-object v0, p1, Lcom/mopub/nativeads/h;->e:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/PositioningSource$PositioningListener;->onFailed()V

    :cond_2
    const/4 v0, 0x0

    .line 2158
    iput-object v0, p1, Lcom/mopub/nativeads/h;->e:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    return-void

    .line 2162
    :cond_3
    iget v1, p1, Lcom/mopub/nativeads/h;->f:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/mopub/nativeads/h;->f:I

    .line 2163
    iget-object v1, p1, Lcom/mopub/nativeads/h;->c:Landroid/os/Handler;

    iget-object p1, p1, Lcom/mopub/nativeads/h;->d:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
