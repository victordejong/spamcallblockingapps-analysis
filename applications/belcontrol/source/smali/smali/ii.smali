.class public final Lii;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lii$a;
    }
.end annotation


# instance fields
.field public final a:Lii$a;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:I

.field public f:Lhi;

.field public g:I

.field public h:Z

.field public i:J

.field public j:J

.field public k:J

.field public l:Ljava/lang/reflect/Method;

.field public m:J

.field public n:Z

.field public o:Z

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:I

.field public u:I

.field public v:J

.field public w:J

.field public x:J

.field public y:J


# direct methods
.method public constructor <init>(Lii$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lii$a;

    iput-object p1, p0, Lii;->a:Lii$a;

    sget p1, Lnu;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lii;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lii;->b:[J

    return-void
.end method

.method public static o(I)Z
    .locals 2

    sget v0, Lnu;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-boolean v0, p0, Lii;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lii;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lii;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lii;->g:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public c(J)I
    .locals 4

    invoke-virtual {p0}, Lii;->e()J

    move-result-wide v0

    iget v2, p0, Lii;->d:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lii;->e:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public d(Z)J
    .locals 7

    iget-object v0, p0, Lii;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lii;->m()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lii;->f:Lhi;

    invoke-static {v2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lhi;

    invoke-virtual {v2}, Lhi;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lhi;->b()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lii;->b(J)J

    move-result-wide v3

    invoke-virtual {v2}, Lhi;->e()Z

    move-result p1

    if-nez p1, :cond_1

    return-wide v3

    :cond_1
    invoke-virtual {v2}, Lhi;->c()J

    move-result-wide v5

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    return-wide v3

    :cond_2
    iget v2, p0, Lii;->u:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lii;->f()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lii;->j:J

    add-long/2addr v0, v2

    :goto_0
    if-nez p1, :cond_4

    iget-wide v2, p0, Lii;->m:J

    sub-long/2addr v0, v2

    :cond_4
    return-wide v0
.end method

.method public final e()J
    .locals 11

    iget-object v0, p0, Lii;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    iget-wide v1, p0, Lii;->v:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lii;->v:J

    sub-long/2addr v0, v2

    iget v2, p0, Lii;->g:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lii;->y:J

    iget-wide v4, p0, Lii;->x:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    const-wide v7, 0xffffffffL

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    iget-boolean v0, p0, Lii;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    iget-wide v9, p0, Lii;->q:J

    iput-wide v9, p0, Lii;->s:J

    :cond_2
    iget-wide v9, p0, Lii;->s:J

    add-long/2addr v7, v9

    :cond_3
    sget v0, Lnu;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    iget-wide v9, p0, Lii;->q:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    iget-wide v0, p0, Lii;->w:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lii;->w:J

    :cond_4
    iget-wide v0, p0, Lii;->q:J

    return-wide v0

    :cond_5
    iput-wide v3, p0, Lii;->w:J

    :cond_6
    iget-wide v0, p0, Lii;->q:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    iget-wide v0, p0, Lii;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lii;->r:J

    :cond_7
    iput-wide v7, p0, Lii;->q:J

    iget-wide v0, p0, Lii;->r:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method public final f()J
    .locals 2

    invoke-virtual {p0}, Lii;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lii;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)V
    .locals 4

    invoke-virtual {p0}, Lii;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lii;->x:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lii;->v:J

    iput-wide p1, p0, Lii;->y:J

    return-void
.end method

.method public h(J)Z
    .locals 3

    invoke-virtual {p0}, Lii;->e()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lii;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lii;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(J)Z
    .locals 5

    iget-wide v0, p0, Lii;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lii;->w:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(J)Z
    .locals 8

    iget-object v0, p0, Lii;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lii;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lii;->n:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lii;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-boolean v1, p0, Lii;->n:Z

    invoke-virtual {p0, p1, p2}, Lii;->h(J)Z

    move-result p1

    iput-boolean p1, p0, Lii;->n:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lii;->a:Lii$a;

    if-eqz p1, :cond_2

    iget p2, p0, Lii;->e:I

    iget-wide v0, p0, Lii;->i:J

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lii$a;->onUnderrun(IJ)V

    :cond_2
    return v2
.end method

.method public final l(JJ)V
    .locals 11

    iget-object v0, p0, Lii;->f:Lhi;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lhi;

    invoke-virtual {v0, p1, p2}, Lhi;->f(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lhi;->c()J

    move-result-wide v5

    invoke-virtual {v0}, Lhi;->b()J

    move-result-wide v3

    sub-long v1, v5, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v9, v1, v7

    if-lez v9, :cond_1

    iget-object v2, p0, Lii;->a:Lii$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lii$a;->onSystemTimeUsMismatch(JJJJ)V

    :goto_0
    invoke-virtual {v0}, Lhi;->g()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v4}, Lii;->b(J)J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v9, v1, v7

    if-lez v9, :cond_2

    iget-object v2, p0, Lii;->a:Lii$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lii$a;->onPositionFramesMismatch(JJJJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lhi;->a()V

    :goto_1
    return-void
.end method

.method public final m()V
    .locals 13

    invoke-virtual {p0}, Lii;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lii;->k:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    iget-object v6, p0, Lii;->b:[J

    iget v7, p0, Lii;->t:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    rem-int/2addr v7, v6

    iput v7, p0, Lii;->t:I

    iget v7, p0, Lii;->u:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lii;->u:I

    :cond_1
    iput-wide v4, p0, Lii;->k:J

    iput-wide v2, p0, Lii;->j:J

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lii;->u:I

    if-ge v2, v3, :cond_2

    iget-wide v6, p0, Lii;->j:J

    iget-object v8, p0, Lii;->b:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lii;->j:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lii;->h:Z

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v4, v5, v0, v1}, Lii;->l(JJ)V

    invoke-virtual {p0, v4, v5}, Lii;->n(J)V

    return-void
.end method

.method public final n(J)V
    .locals 7

    iget-boolean v0, p0, Lii;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lii;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lii;->p:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    :try_start_0
    iget-object v1, p0, Lii;->c:Landroid/media/AudioTrack;

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lii;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lii;->m:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lii;->m:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iget-object v4, p0, Lii;->a:Lii$a;

    invoke-interface {v4, v0, v1}, Lii$a;->onInvalidLatency(J)V

    iput-wide v2, p0, Lii;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lii;->l:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    iput-wide p1, p0, Lii;->p:J

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 5

    invoke-virtual {p0}, Lii;->r()V

    iget-wide v0, p0, Lii;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lii;->f:Lhi;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lhi;

    invoke-virtual {v0}, Lhi;->h()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 1

    invoke-virtual {p0}, Lii;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lii;->c:Landroid/media/AudioTrack;

    iput-object v0, p0, Lii;->f:Lhi;

    return-void
.end method

.method public final r()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lii;->j:J

    const/4 v2, 0x0

    iput v2, p0, Lii;->u:I

    iput v2, p0, Lii;->t:I

    iput-wide v0, p0, Lii;->k:J

    return-void
.end method

.method public s(Landroid/media/AudioTrack;III)V
    .locals 2

    iput-object p1, p0, Lii;->c:Landroid/media/AudioTrack;

    iput p3, p0, Lii;->d:I

    iput p4, p0, Lii;->e:I

    new-instance v0, Lhi;

    invoke-direct {v0, p1}, Lhi;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lii;->f:Lhi;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lii;->g:I

    invoke-static {p2}, Lii;->o(I)Z

    move-result p1

    iput-boolean p1, p0, Lii;->h:Z

    invoke-static {p2}, Lnu;->S(I)Z

    move-result p1

    iput-boolean p1, p0, Lii;->o:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    div-int/2addr p4, p3

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Lii;->b(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lii;->i:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lii;->q:J

    iput-wide p1, p0, Lii;->r:J

    iput-wide p1, p0, Lii;->s:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lii;->n:Z

    iput-wide v0, p0, Lii;->v:J

    iput-wide v0, p0, Lii;->w:J

    iput-wide p1, p0, Lii;->m:J

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lii;->f:Lhi;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lhi;

    invoke-virtual {v0}, Lhi;->h()V

    return-void
.end method
