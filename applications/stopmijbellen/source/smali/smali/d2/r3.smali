.class public Ld2/r3;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/r3$b;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ld2/t0;

.field public F:Ld2/j0;

.field public G:Landroid/graphics/SurfaceTexture;

.field public H:Landroid/graphics/RectF;

.field public I:Ld2/r3$b;

.field public J:Landroid/widget/ProgressBar;

.field public K:Landroid/media/MediaPlayer;

.field public L:Ld2/f4;

.field public M:Ljava/util/concurrent/ExecutorService;

.field public N:Ld2/t0;

.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:Z

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:D

.field public q:D

.field public r:J

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ld2/r3;->f:Z

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ld2/r3;->g:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ld2/r3;->h:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ld2/r3;->H:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 7
    iput-object p1, p0, Ld2/r3;->L:Ld2/f4;

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    .line 9
    iput-object p4, p0, Ld2/r3;->F:Ld2/j0;

    .line 10
    iput-object p2, p0, Ld2/r3;->E:Ld2/t0;

    .line 11
    iput p3, p0, Ld2/r3;->m:I

    .line 12
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static a(Ld2/r3;Ld2/t0;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "id"

    .line 3
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ld2/r3;->m:I

    if-ne v0, v1, :cond_0

    const-string v0, "container_id"

    .line 4
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ld2/r3;->F:Ld2/j0;

    .line 5
    iget v1, v1, Ld2/j0;->j:I

    if-ne v0, v1, :cond_0

    const-string v0, "ad_session_id"

    .line 6
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p0, p0, Ld2/r3;->F:Ld2/j0;

    .line 8
    iget-object p0, p0, Ld2/j0;->l:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    iget-object v1, p0, Ld2/r3;->D:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    new-instance v1, Ld2/t0;

    iget-object v2, p0, Ld2/r3;->F:Ld2/j0;

    .line 4
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdSession.on_error"

    .line 5
    invoke-direct {v1, v3, v2, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ld2/r3;->s:Z

    return-void
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld2/r3;->w:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "ADCVideoView pause() called while MediaPlayer is not prepared."

    .line 2
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v2, v0, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Ld2/r3;->u:Z

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 6
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Ld2/r3;->q:D

    .line 7
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 8
    iput-boolean v2, p0, Ld2/r3;->v:Z

    return v2
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ld2/r3;->w:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Ld2/r3;->v:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ld2/t;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 4
    new-instance v0, Ld2/s3;

    invoke-direct {v0, p0}, Ld2/s3;-><init>(Ld2/r3;)V

    .line 5
    :try_start_0
    iget-object v2, p0, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-virtual {p0}, Ld2/r3;->b()V

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v0, p0, Ld2/r3;->s:Z

    if-nez v0, :cond_3

    sget-boolean v0, Ld2/t;->d:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 9
    iput-boolean v1, p0, Ld2/r3;->v:Z

    .line 10
    iget-object v0, p0, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Ld2/s3;

    invoke-direct {v0, p0}, Ld2/s3;-><init>(Ld2/r3;)V

    .line 12
    :try_start_1
    iget-object v2, p0, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 13
    :catch_1
    invoke-virtual {p0}, Ld2/r3;->b()V

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Ld2/r3;->I:Ld2/r3$b;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 4

    const-string v0, "MediaPlayer stopped and released."

    .line 1
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {v2, v1, v0, v3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 3
    :try_start_0
    iget-boolean v0, p0, Ld2/r3;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld2/r3;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Caught IllegalStateException when calling stop on MediaPlayer"

    .line 5
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v2, v3, v0, v3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Ld2/r3;->J:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Ld2/r3;->F:Ld2/j0;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 9
    :cond_1
    iput-boolean v3, p0, Ld2/r3;->s:Z

    .line 10
    iput-boolean v2, p0, Ld2/r3;->w:Z

    .line 11
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget v0, p0, Ld2/r3;->k:I

    int-to-double v0, v0

    iget v2, p0, Ld2/r3;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 2
    iget v2, p0, Ld2/r3;->l:I

    int-to-double v2, v2

    iget v4, p0, Ld2/r3;->o:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 4
    iget v2, p0, Ld2/r3;->n:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    double-to-int v2, v2

    .line 5
    iget v3, p0, Ld2/r3;->o:I

    int-to-double v3, v3

    mul-double v3, v3, v0

    double-to-int v0, v3

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMeasuredDimension to "

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by "

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 12
    invoke-static {v5, v3, v1, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 13
    invoke-virtual {p0, v2, v0}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    .line 14
    iget-boolean v1, p0, Ld2/r3;->y:Z

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 18
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Ld2/r3;->s:Z

    .line 2
    iget-wide v0, p0, Ld2/r3;->q:D

    iput-wide v0, p0, Ld2/r3;->p:D

    .line 3
    iget-object p1, p0, Ld2/r3;->L:Ld2/f4;

    iget v0, p0, Ld2/r3;->m:I

    const-string v1, "id"

    invoke-static {p1, v1, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 4
    iget-object p1, p0, Ld2/r3;->L:Ld2/f4;

    iget-object v0, p0, Ld2/r3;->F:Ld2/j0;

    .line 5
    iget v0, v0, Ld2/j0;->j:I

    const-string v1, "container_id"

    .line 6
    invoke-static {p1, v1, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 7
    iget-object p1, p0, Ld2/r3;->L:Ld2/f4;

    iget-object v0, p0, Ld2/r3;->D:Ljava/lang/String;

    const-string v1, "ad_session_id"

    invoke-static {p1, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    iget-object p1, p0, Ld2/r3;->L:Ld2/f4;

    iget-wide v0, p0, Ld2/r3;->p:D

    const-string v2, "elapsed"

    invoke-static {p1, v2, v0, v1}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 9
    iget-object p1, p0, Ld2/r3;->L:Ld2/f4;

    iget-wide v0, p0, Ld2/r3;->q:D

    const-string v2, "duration"

    invoke-static {p1, v2, v0, v1}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 10
    new-instance p1, Ld2/t0;

    iget-object v0, p0, Ld2/r3;->F:Ld2/j0;

    .line 11
    iget v0, v0, Ld2/j0;->k:I

    .line 12
    iget-object v1, p0, Ld2/r3;->L:Ld2/f4;

    const-string v2, "VideoView.on_progress"

    invoke-direct {p1, v2, v0, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld2/r3;->b()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-static {p2, p2, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld2/r3;->f()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ld2/r3;->w:Z

    .line 2
    iget-boolean v1, p0, Ld2/r3;->B:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Ld2/r3;->F:Ld2/j0;

    iget-object v2, p0, Ld2/r3;->J:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-boolean v1, p0, Ld2/r3;->y:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Ld2/r3;->n:I

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, p0, Ld2/r3;->o:I

    .line 7
    invoke-virtual {p0}, Ld2/r3;->f()V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer getVideoWidth = "

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 14
    invoke-virtual {v2, v3, v4, v1, v0}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer getVideoHeight = "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {v3, v4, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 21
    :cond_1
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 22
    iget v0, p0, Ld2/r3;->m:I

    const-string v1, "id"

    invoke-static {p1, v1, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 23
    iget-object v0, p0, Ld2/r3;->F:Ld2/j0;

    .line 24
    iget v0, v0, Ld2/j0;->j:I

    const-string v1, "container_id"

    .line 25
    invoke-static {p1, v1, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 26
    iget-object v0, p0, Ld2/r3;->D:Ljava/lang/String;

    const-string v1, "ad_session_id"

    invoke-static {p1, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    new-instance v0, Ld2/t0;

    iget-object v1, p0, Ld2/r3;->F:Ld2/j0;

    .line 28
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "VideoView.on_ready"

    .line 29
    invoke-direct {v0, v2, v1, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Ld2/r3;->M:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld2/r3$a;

    invoke-direct {v0, p0}, Ld2/r3$a;-><init>(Ld2/r3;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-virtual {p0}, Ld2/r3;->b()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p3, p0, Ld2/r3;->x:Z

    if-eqz p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p3, "IllegalStateException thrown when calling MediaPlayer.setSurface()"

    .line 4
    invoke-static {p3}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2, p2, p3, p2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 7
    invoke-virtual {p0}, Ld2/r3;->b()V

    .line 8
    :goto_0
    iput-object p1, p0, Ld2/r3;->G:Landroid/graphics/SurfaceTexture;

    return-void

    :cond_1
    :goto_1
    const-string p1, "Null texture provided by system\'s onSurfaceTextureAvailable or "

    const-string p3, "MediaPlayer has been destroyed."

    .line 9
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    .line 10
    invoke-static {p2, p2, p1, p3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Ld2/r3;->G:Landroid/graphics/SurfaceTexture;

    .line 2
    iget-boolean v0, p0, Ld2/r3;->x:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/r3;->G:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/r3;->G:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ld2/f1;->l()Ld2/k0;

    move-result-object v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    if-eq v4, v9, :cond_0

    if-eq v4, v7, :cond_0

    if-eq v4, v8, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    .line 6
    new-instance v12, Ld2/f4;

    invoke-direct {v12}, Ld2/f4;-><init>()V

    .line 7
    iget v13, v0, Ld2/r3;->m:I

    const-string v14, "view_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 8
    iget-object v13, v0, Ld2/r3;->D:Ljava/lang/String;

    const-string v14, "ad_session_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    iget v13, v0, Ld2/r3;->i:I

    add-int/2addr v13, v10

    const-string v14, "container_x"

    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 10
    iget v13, v0, Ld2/r3;->j:I

    add-int/2addr v13, v11

    const-string v15, "container_y"

    invoke-static {v12, v15, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v13, "view_x"

    .line 11
    invoke-static {v12, v13, v10}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v10, "view_y"

    .line 12
    invoke-static {v12, v10, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 13
    iget-object v11, v0, Ld2/r3;->F:Ld2/j0;

    .line 14
    iget v11, v11, Ld2/j0;->j:I

    const-string v5, "id"

    .line 15
    invoke-static {v12, v5, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v5, "AdContainer.on_touch_began"

    if-eqz v4, :cond_8

    const-string v11, "AdContainer.on_touch_ended"

    if-eq v4, v9, :cond_6

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_4

    const v7, 0xff00

    if-eq v4, v6, :cond_3

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x8

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Ld2/r3;->i:I

    add-int/2addr v5, v6

    invoke-static {v12, v14, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Ld2/r3;->j:I

    add-int/2addr v5, v6

    invoke-static {v12, v15, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 19
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v12, v13, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v10, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 21
    iget-object v1, v0, Ld2/r3;->F:Ld2/j0;

    .line 22
    iget-boolean v1, v1, Ld2/j0;->u:Z

    if-nez v1, :cond_2

    .line 23
    iget-object v1, v3, Ld2/k0;->f:Ljava/util/Map;

    .line 24
    iget-object v3, v0, Ld2/r3;->D:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 25
    iput-object v1, v2, Ld2/f1;->n:Ld2/j;

    .line 26
    :cond_2
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/r3;->F:Ld2/j0;

    .line 27
    iget v2, v2, Ld2/j0;->k:I

    .line 28
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto/16 :goto_0

    .line 29
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v7

    shr-int/lit8 v2, v2, 0x8

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ld2/r3;->i:I

    add-int/2addr v3, v4

    invoke-static {v12, v14, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ld2/r3;->j:I

    add-int/2addr v3, v4

    invoke-static {v12, v15, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v13, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v10, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 34
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/r3;->F:Ld2/j0;

    .line 35
    iget v2, v2, Ld2/j0;->k:I

    .line 36
    invoke-direct {v1, v5, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 37
    :cond_4
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/r3;->F:Ld2/j0;

    .line 38
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_cancelled"

    .line 39
    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 40
    :cond_5
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/r3;->F:Ld2/j0;

    .line 41
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_moved"

    .line 42
    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 43
    :cond_6
    iget-object v1, v0, Ld2/r3;->F:Ld2/j0;

    .line 44
    iget-boolean v1, v1, Ld2/j0;->u:Z

    if-nez v1, :cond_7

    .line 45
    iget-object v1, v3, Ld2/k0;->f:Ljava/util/Map;

    .line 46
    iget-object v3, v0, Ld2/r3;->D:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 47
    iput-object v1, v2, Ld2/f1;->n:Ld2/j;

    .line 48
    :cond_7
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/r3;->F:Ld2/j0;

    .line 49
    iget v2, v2, Ld2/j0;->k:I

    .line 50
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 51
    :cond_8
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/r3;->F:Ld2/j0;

    .line 52
    iget v2, v2, Ld2/j0;->k:I

    .line 53
    invoke-direct {v1, v5, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    :goto_0
    return v9
.end method
