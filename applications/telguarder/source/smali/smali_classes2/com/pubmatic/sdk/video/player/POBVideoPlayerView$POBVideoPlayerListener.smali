.class public interface abstract Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "POBVideoPlayerListener"
.end annotation


# virtual methods
.method public abstract onBufferUpdate(I)V
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onMute(Z)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onProgressUpdate(I)V
.end method

.method public abstract onReadyToPlay(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method
