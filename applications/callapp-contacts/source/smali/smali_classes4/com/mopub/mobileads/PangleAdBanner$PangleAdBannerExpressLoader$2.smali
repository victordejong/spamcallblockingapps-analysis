.class final Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Pangle DislikeInteractionCallback onCancel()"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRefuse()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object v0, v0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "Pangle DislikeInteractionCallback onRefuse()"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSelected(ILjava/lang/String;)V
    .locals 4

    .line 285
    iget-object p1, p0, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader$2;->a:Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;

    iget-object p1, p1, Lcom/mopub/mobileads/PangleAdBanner$PangleAdBannerExpressLoader;->a:Lcom/mopub/mobileads/PangleAdBanner;

    invoke-virtual {p1}, Lcom/mopub/mobileads/PangleAdBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/PangleAdBanner;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Pangle DislikeInteractionCallback onSelected(): "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
