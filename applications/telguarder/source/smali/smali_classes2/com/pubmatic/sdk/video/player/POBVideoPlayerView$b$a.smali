.class Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;

    iget-object v0, v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    const/16 v1, -0x6e

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;I)Z

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;

    iget-object v0, v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;

    iget-object v0, v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$b;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
