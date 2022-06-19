.class Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;


# direct methods
.method constructor <init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 107
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-virtual {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->play()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/view/SurfaceHolder;

    .line 117
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;->a:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
