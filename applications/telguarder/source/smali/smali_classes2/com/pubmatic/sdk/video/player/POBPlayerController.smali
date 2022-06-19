.class public abstract Lcom/pubmatic/sdk/video/player/POBPlayerController;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBufferUpdate(I)V
    .locals 0

    return-void
.end method

.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReadyToPlay(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
    .locals 0

    return-void
.end method

.method abstract setVideoPlayerEvents(Lcom/pubmatic/sdk/video/player/POBVideoPlayer;)V
.end method
