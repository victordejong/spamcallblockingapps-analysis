.class Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Landroid/os/Looper;I)V
    .locals 0

    .line 951
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 945
    iput-boolean p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->b:Z

    .line 953
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a:Ljava/lang/ref/WeakReference;

    .line 954
    iput p3, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 1026
    iget-boolean v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1030
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    invoke-static {}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Stopping progress handler."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 1034
    iput-boolean v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->b:Z

    .line 1035
    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->removeMessages(I)V

    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V
    .locals 2

    .line 1048
    invoke-static {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 1049
    invoke-interface {v1, p0, p1}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onProgress(Lcom/verizon/ads/VideoPlayer;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 1002
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1006
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 1010
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1011
    invoke-static {}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Starting progress handler with interval %d ms."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1014
    :cond_2
    iput-boolean v2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->b:Z

    if-eqz p1, :cond_3

    .line 1017
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1019
    :cond_3
    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static synthetic lambda$9KoNkfEXfr-QEMKg1oRKnQ8GF4s(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 962
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 976
    invoke-static {}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Invalid what %d sent to ProgressHandler."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 973
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2060
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    .line 2062
    iget-boolean p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->b:Z

    if-eqz p1, :cond_1

    .line 2066
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a()V

    .line 2068
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2069
    invoke-direct {p0, v2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a(Z)V

    :cond_1
    return-void

    .line 2041
    :cond_2
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    if-eqz p1, :cond_3

    .line 2044
    invoke-static {p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 2046
    new-instance v1, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ProgressHandler$9KoNkfEXfr-QEMKg1oRKnQ8GF4s;

    invoke-direct {v1, p1, v0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ProgressHandler$9KoNkfEXfr-QEMKg1oRKnQ8GF4s;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)V

    invoke-virtual {p1, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    .line 2053
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->c:I

    int-to-long v0, p1

    invoke-virtual {p0, v3, v0, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    .line 967
    :cond_4
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a()V

    return-void

    .line 964
    :cond_5
    invoke-direct {p0, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->a(Z)V

    return-void
.end method
