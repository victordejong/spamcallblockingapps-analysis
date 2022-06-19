.class Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;I)Z

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method
