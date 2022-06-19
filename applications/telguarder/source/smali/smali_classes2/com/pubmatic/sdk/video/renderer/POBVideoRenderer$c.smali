.class Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->onVideoStarted(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;FF)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    iput p2, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->a:F

    iput p3, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->d(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->setTrackView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->impressionOccurred()V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object v0

    iget v1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->a:F

    iget v2, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->b:F

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->start(FF)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->e(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->NORMAL:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->FULLSCREEN:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    :goto_0
    iget-object v1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$c;->c:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->c(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;->signalPlayerStateChange(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;)V

    :cond_1
    return-void
.end method
