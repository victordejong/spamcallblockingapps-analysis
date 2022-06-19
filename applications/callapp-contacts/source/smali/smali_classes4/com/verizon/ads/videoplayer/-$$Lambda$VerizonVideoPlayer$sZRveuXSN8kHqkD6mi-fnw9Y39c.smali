.class public final synthetic Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

.field public final synthetic f$1:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;->f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    iput-object p2, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;->f$1:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;->f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    iget-object v1, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;->f$1:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;

    invoke-static {v0, v1, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->lambda$sZRveuXSN8kHqkD6mi-fnw9Y39c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;Landroid/media/MediaPlayer;)V

    return-void
.end method
