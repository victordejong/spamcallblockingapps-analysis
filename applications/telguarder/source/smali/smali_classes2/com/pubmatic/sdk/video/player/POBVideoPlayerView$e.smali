.class Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$e;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$e;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$e;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->a(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
