.class Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/b;Lcom/bytedance/sdk/openadsdk/core/video/d/b;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 348
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AndroidMediaPlayer"

    const-string v0, "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: "

    .line 353
    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 360
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AndroidMediaPlayer"

    const-string v1, "AndroidMediaPlayerListenerHolder.onCompletion error: "

    .line 365
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 p1, 0x0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(II)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :catchall_0
    move-exception p2

    const-string p3, "AndroidMediaPlayer"

    const-string v0, "AndroidMediaPlayerListenerHolder.onError error: "

    .line 315
    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 p1, 0x0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b(II)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :catchall_0
    move-exception p2

    const-string p3, "AndroidMediaPlayer"

    const-string v0, "AndroidMediaPlayerListenerHolder.onInfo error: "

    .line 303
    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 372
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AndroidMediaPlayer"

    const-string v1, "AndroidMediaPlayerListenerHolder.onPrepared error: "

    .line 377
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 336
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AndroidMediaPlayer"

    const-string v1, "AndroidMediaPlayerListenerHolder.onSeekComplete error: "

    .line 341
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 324
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AndroidMediaPlayer"

    const-string p3, "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: "

    .line 329
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
