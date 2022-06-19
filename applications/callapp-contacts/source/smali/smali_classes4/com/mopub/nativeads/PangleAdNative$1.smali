.class final Lcom/mopub/nativeads/PangleAdNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/PangleAdNative;->loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mopub/nativeads/PangleAdNative;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/PangleAdNative;Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    iput-object p2, p0, Lcom/mopub/nativeads/PangleAdNative$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {v0}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading NativeAd encountered an error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(I)Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",error message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 115
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 117
    iget-object p2, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p2}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/PangleAdNative;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 118
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(I)Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 119
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(I)Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 117
    invoke-static {p2, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 121
    iget-object p2, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p2}, Lcom/mopub/nativeads/PangleAdNative;->b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p2}, Lcom/mopub/nativeads/PangleAdNative;->b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p2

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(I)Lcom/mopub/nativeads/NativeErrorCode;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onFeedAdLoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {v2}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/PangleAdNative;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {v0}, Lcom/mopub/nativeads/PangleAdNative;->b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 133
    iget-object v1, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {v1}, Lcom/mopub/nativeads/PangleAdNative;->b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v1

    new-instance v2, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;

    iget-object v3, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    iget-object v4, p0, Lcom/mopub/nativeads/PangleAdNative$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/mopub/nativeads/PangleAdNative$PangleNativeAd;-><init>(Lcom/mopub/nativeads/PangleAdNative;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    goto :goto_0

    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->a(Lcom/mopub/nativeads/PangleAdNative;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/nativeads/PangleAdNative;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 138
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v1, v3, v0

    .line 137
    invoke-static {p1, v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/mopub/nativeads/PangleAdNative$1;->b:Lcom/mopub/nativeads/PangleAdNative;

    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdNative;->b(Lcom/mopub/nativeads/PangleAdNative;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :cond_2
    return-void
.end method
