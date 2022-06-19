.class public abstract Lcom/google/android/exoplayer2/u;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/r0;
.implements Lcom/google/android/exoplayer2/t0;


# instance fields
.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/f0;

.field private f:Lcom/google/android/exoplayer2/u0;

.field private g:I

.field private h:I

.field private i:Lcom/google/android/exoplayer2/source/b0;

.field private j:[Lcom/google/android/exoplayer2/Format;

.field private k:J

.field private l:J

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/u;->d:I

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/f0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/f0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->e:Lcom/google/android/exoplayer2/f0;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/u;->l:J

    return-void
.end method

.method protected static P(Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/drm/k;->f(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final A()Lcom/google/android/exoplayer2/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/u0;

    return-object v0
.end method

.method protected final B()Lcom/google/android/exoplayer2/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->e:Lcom/google/android/exoplayer2/f0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f0;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->e:Lcom/google/android/exoplayer2/f0;

    return-object v0
.end method

.method protected final C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->g:I

    return v0
.end method

.method protected final D()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->j:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method protected final E(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/drm/m;",
            ">(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    return-object p4

    .line 3
    :cond_1
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 5
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/drm/k;->e(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Media requires a DrmSessionManager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/u;->z(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 7
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/DrmSession;->b()V

    :cond_4
    return-object v1
.end method

.method protected final F()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->m:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->e()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract G()V
.end method

.method protected H(Z)V
    .locals 0

    return-void
.end method

.method protected abstract I(JZ)V
.end method

.method protected J()V
    .locals 0

    return-void
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected L()V
    .locals 0

    return-void
.end method

.method protected M([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    return-void
.end method

.method protected final N(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b0;->a(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/b1/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/u;->l:J

    .line 4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/u;->m:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/b1/e;->f:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/u;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/b1/e;->f:J

    .line 6
    iget-wide p1, p0, Lcom/google/android/exoplayer2/u;->l:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/u;->l:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 7
    iget-object p2, p1, Lcom/google/android/exoplayer2/f0;->c:Lcom/google/android/exoplayer2/Format;

    .line 8
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Format;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    iget-wide v2, p0, Lcom/google/android/exoplayer2/u;->k:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/Format;->k(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 10
    iput-object p2, p1, Lcom/google/android/exoplayer2/f0;->c:Lcom/google/android/exoplayer2/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method protected O(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/u;->k:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->c(J)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->e:Lcom/google/android/exoplayer2/f0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f0;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->J()V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->e:Lcom/google/android/exoplayer2/f0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f0;->a()V

    .line 3
    iput v2, p0, Lcom/google/android/exoplayer2/u;->h:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/u;->j:[Lcom/google/android/exoplayer2/Format;

    .line 6
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/u;->m:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->G()V

    return-void
.end method

.method public final g()Lcom/google/android/exoplayer2/source/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->d:I

    return v0
.end method

.method public final j()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/u;->l:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(Lcom/google/android/exoplayer2/u0;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/b0;JZJ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/u0;

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/u;->h:I

    .line 4
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/u;->H(Z)V

    .line 5
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/exoplayer2/u;->y([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/b0;J)V

    .line 6
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/u;->I(JZ)V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u;->m:Z

    return-void
.end method

.method public final m()Lcom/google/android/exoplayer2/t0;
    .locals 0

    return-object p0
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/u;->g:I

    return-void
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public synthetic s(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q0;->a(Lcom/google/android/exoplayer2/r0;F)V

    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->K()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/u;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/u;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->L()V

    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->b()V

    return-void
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/u;->l:J

    return-wide v0
.end method

.method public final v(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u;->m:Z

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/u;->l:J

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/u;->I(JZ)V

    return-void
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->m:Z

    return v0
.end method

.method public x()Lcom/google/android/exoplayer2/util/q;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/b0;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->m:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/b0;

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/u;->l:J

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/u;->j:[Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/u;->k:J

    .line 6
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/exoplayer2/u;->M([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected final z(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u;->n:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/t0;->b(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/s0;->d(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u;->n:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u;->n:Z

    .line 5
    throw p1

    .line 6
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u;->n:Z

    :cond_0
    const/4 v1, 0x4

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->C()I

    move-result v0

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;ILcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method
