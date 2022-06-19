.class public interface abstract Lcom/pubmatic/sdk/video/player/POBVideoPlayer;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getControllerView()Lcom/pubmatic/sdk/video/player/POBPlayerController;
.end method

.method public abstract getMediaDuration()I
.end method

.method public abstract getPlayerState()Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;
.end method

.method public abstract isMute()Z
.end method

.method public abstract load(Ljava/lang/String;)V
.end method

.method public abstract mute()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playOnMute(Z)V
.end method

.method public abstract setAutoPlayOnForeground(Z)V
.end method

.method public abstract setControllerView(Lcom/pubmatic/sdk/video/player/POBPlayerController;Landroid/widget/FrameLayout$LayoutParams;)V
.end method

.method public abstract setListener(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;)V
.end method

.method public abstract setPrepareTimeout(I)V
.end method

.method public abstract stop()V
.end method

.method public abstract unMute()V
.end method
