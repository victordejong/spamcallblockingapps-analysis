.class Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Lcom/pubmatic/sdk/video/player/POBPlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->c(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Lcom/pubmatic/sdk/video/player/POBPlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onProgressUpdate(I)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->d(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$d;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener;->onProgressUpdate(I)V

    :cond_1
    return-void
.end method
