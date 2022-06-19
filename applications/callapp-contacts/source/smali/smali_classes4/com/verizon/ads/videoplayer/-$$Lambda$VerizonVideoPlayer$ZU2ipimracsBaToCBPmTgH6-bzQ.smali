.class public final synthetic Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

.field public final synthetic f$1:Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;->f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    iput-object p2, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;->f$1:Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;->f$0:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    iget-object v1, p0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;->f$1:Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    invoke-static {v0, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->lambda$ZU2ipimracsBaToCBPmTgH6-bzQ(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    return-void
.end method
