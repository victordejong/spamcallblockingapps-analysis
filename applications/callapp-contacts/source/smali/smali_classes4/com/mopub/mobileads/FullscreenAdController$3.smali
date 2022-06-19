.class final Lcom/mopub/mobileads/FullscreenAdController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FullscreenAdController;->onCompanionAdsReady(Ljava/util/Set;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastResource;

.field final synthetic b:Lcom/mopub/mobileads/FullscreenAdController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;Lcom/mopub/mobileads/VastResource;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->b:Lcom/mopub/mobileads/FullscreenAdController;

    iput-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->a:Lcom/mopub/mobileads/VastResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 513
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->a:Lcom/mopub/mobileads/VastResource;

    .line 514
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastResource;->getResource()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Failed to retrieve image at %s"

    .line 513
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    .line 499
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 500
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->b:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {p2}, Lcom/mopub/mobileads/FullscreenAdController;->c(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 501
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->b:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {p2}, Lcom/mopub/mobileads/FullscreenAdController;->c(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 502
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->b:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {p2}, Lcom/mopub/mobileads/FullscreenAdController;->c(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/widget/ImageView;

    move-result-object p2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p2, 0xa0

    .line 504
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 505
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->b:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {p2}, Lcom/mopub/mobileads/FullscreenAdController;->c(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 507
    :cond_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v0, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController$3;->a:Lcom/mopub/mobileads/VastResource;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getResource()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s returned null bitmap"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
