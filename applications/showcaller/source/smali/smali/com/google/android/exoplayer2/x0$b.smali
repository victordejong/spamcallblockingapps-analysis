.class final Lcom/google/android/exoplayer2/x0$b;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/q;
.implements Lcom/google/android/exoplayer2/audio/l;
.implements Lcom/google/android/exoplayer2/text/j;
.implements Lcom/google/android/exoplayer2/metadata/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/s$b;
.implements Lcom/google/android/exoplayer2/r$b;
.implements Lcom/google/android/exoplayer2/o0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/exoplayer2/x0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/x0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/x0$b;-><init>(Lcom/google/android/exoplayer2/x0;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->r0(Lcom/google/android/exoplayer2/x0;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/x0;->s0(Lcom/google/android/exoplayer2/x0;I)I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->t0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/k;

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v2}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/k;->a(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/l;

    .line 7
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/l;->a(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/l;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/l;->b(Lcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->Y(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->p0(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/b1/d;)Lcom/google/android/exoplayer2/b1/d;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->s0(Lcom/google/android/exoplayer2/x0;I)I

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/x0;->p0(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/b1/d;)Lcom/google/android/exoplayer2/b1/d;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/l;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/l;->c(Lcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/video/q;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/video/q;->d(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/x0;->w(Z)V

    return-void
.end method

.method public f(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/x0;->f0(Lcom/google/android/exoplayer2/x0;)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/x0;->h()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/x0;->g0(Lcom/google/android/exoplayer2/x0;ZI)V

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/x0;->a0(Lcom/google/android/exoplayer2/x0;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->b0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/j;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/text/j;->h(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->o0(Lcom/google/android/exoplayer2/x0;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->n0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/p;

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/video/p;->onRenderedFirstFrame()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/q;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/q;->k(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public m(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/audio/l;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/l;->m(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->c0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/e;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/metadata/e;->n(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->a(Lcom/google/android/exoplayer2/o0$a;Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->h0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/x0;->i0(Lcom/google/android/exoplayer2/x0;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/x0;->h0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->j0(Lcom/google/android/exoplayer2/x0;Z)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/x0;->i0(Lcom/google/android/exoplayer2/x0;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/x0;->h0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->j0(Lcom/google/android/exoplayer2/x0;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/l0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->c(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/l0;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->d(Lcom/google/android/exoplayer2/o0$a;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->e(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p2}, Lcom/google/android/exoplayer2/x0;->l0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/z0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/z0;->a(Z)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/x0;->l0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/z0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/z0;->a(Z)V

    :goto_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->f(Lcom/google/android/exoplayer2/o0$a;I)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->g(Lcom/google/android/exoplayer2/o0$a;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n0;->h(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n0;->i(Lcom/google/android/exoplayer2/o0$a;Z)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/x0;->d0(Lcom/google/android/exoplayer2/x0;Landroid/view/Surface;Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/x0;->e0(Lcom/google/android/exoplayer2/x0;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/x0;->d0(Lcom/google/android/exoplayer2/x0;Landroid/view/Surface;Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/x0;->e0(Lcom/google/android/exoplayer2/x0;II)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/x0;->e0(Lcom/google/android/exoplayer2/x0;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/y0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n0;->j(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/y0;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/n0;->k(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n0;->l(Lcom/google/android/exoplayer2/o0$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->n0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/p;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v2}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/p;->onVideoSizeChanged(IIIF)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/q;

    .line 5
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/q;->onVideoSizeChanged(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public p(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/q;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/video/q;->p(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/x0;->m0(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/q;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/q;->s(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/x0;->e0(Lcom/google/android/exoplayer2/x0;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/x0;->d0(Lcom/google/android/exoplayer2/x0;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/x0;->d0(Lcom/google/android/exoplayer2/x0;Landroid/view/Surface;Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, v1, v1}, Lcom/google/android/exoplayer2/x0;->e0(Lcom/google/android/exoplayer2/x0;II)V

    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/x0;->Z(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/b1/d;)Lcom/google/android/exoplayer2/b1/d;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/q;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/q;->t(Lcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/x0;->Y(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/l;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/l;->v(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(IJJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/audio/l;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/l;->x(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/b1/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/x0;->k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/q;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/q;->y(Lcom/google/android/exoplayer2/b1/d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->m0(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0$b;->d:Lcom/google/android/exoplayer2/x0;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/x0;->Z(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/b1/d;)Lcom/google/android/exoplayer2/b1/d;

    return-void
.end method
