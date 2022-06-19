.class final Lcom/google/android/exoplayer2/z;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/z$a;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/exoplayer2/util/a0;

.field private final e:Lcom/google/android/exoplayer2/z$a;

.field private f:Lcom/google/android/exoplayer2/r0;

.field private g:Lcom/google/android/exoplayer2/util/q;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/z$a;Lcom/google/android/exoplayer2/util/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/z$a;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/a0;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/a0;-><init>(Lcom/google/android/exoplayer2/util/f;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/z;->h:Z

    return-void
.end method

.method private e(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->f:Lcom/google/android/exoplayer2/r0;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/r0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->f:Lcom/google/android/exoplayer2/r0;

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/r0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->f:Lcom/google/android/exoplayer2/r0;

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/r0;->j()Z

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

.method private j(Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/z;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/z;->h:Z

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/z;->i:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->b()V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q;->n()J

    move-result-wide v0

    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/z;->h:Z

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->n()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->c()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/z;->h:Z

    .line 10
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/z;->i:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->b()V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a0;->a(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/l0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/a0;->h(Lcom/google/android/exoplayer2/l0;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/z$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/z$a;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/l0;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/r0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->f:Lcom/google/android/exoplayer2/r0;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/z;->f:Lcom/google/android/exoplayer2/r0;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/z;->h:Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/r0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/r0;->x()Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/z;->f:Lcom/google/android/exoplayer2/r0;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/q;->h(Lcom/google/android/exoplayer2/l0;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/a0;->a(J)V

    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/q;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/z;->i:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->b()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/z;->i:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->c()V

    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/l0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/q;->h(Lcom/google/android/exoplayer2/l0;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/a0;->h(Lcom/google/android/exoplayer2/l0;)V

    return-void
.end method

.method public i(Z)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/z;->j(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/z;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/z;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->d:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->n()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/util/q;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/q;->n()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
