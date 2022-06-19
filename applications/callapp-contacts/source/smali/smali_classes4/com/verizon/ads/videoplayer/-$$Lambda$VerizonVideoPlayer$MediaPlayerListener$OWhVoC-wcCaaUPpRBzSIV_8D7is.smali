.class public final synthetic Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;->f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    iput p2, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;->f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    iget v1, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC-wcCaaUPpRBzSIV_8D7is;->f$1:I

    invoke-static {v0, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;->lambda$OWhVoC-wcCaaUPpRBzSIV_8D7is(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V

    return-void
.end method
