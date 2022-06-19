.class final Lcom/google/android/gms/internal/ads/c3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u9;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/na;

.field private final e:Lcom/google/android/gms/internal/ads/b3;

.field private f:Lcom/google/android/gms/internal/ads/t6;

.field private g:Lcom/google/android/gms/internal/ads/u9;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/b3;Lcom/google/android/gms/internal/ads/z8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->e:Lcom/google/android/gms/internal/ads/b3;

    new-instance p1, Lcom/google/android/gms/internal/ads/na;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/na;-><init>(Lcom/google/android/gms/internal/ads/z8;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/c3;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/c3;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/na;->a()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/d6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/u9;->b(Lcom/google/android/gms/internal/ads/d6;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u9;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/na;->b(Lcom/google/android/gms/internal/ads/d6;)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/c3;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/na;->c()V

    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/na;->d(J)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/t6;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/t6;->zzi()Lcom/google/android/gms/internal/ads/u9;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/t6;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/na;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/u9;->b(Lcom/google/android/gms/internal/ads/d6;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    .line 7
    throw p1

    :cond_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/t6;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/t6;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/t6;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/c3;->h:Z

    :cond_0
    return-void
.end method

.method public final g(Z)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/t6;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/t6;->G()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/t6;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/t6;->J()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/t6;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/t6;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u9;->v()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/c3;->h:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/na;->v()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/na;->c()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/c3;->h:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/c3;->i:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/na;->a()V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/na;->d(J)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u9;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/na;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/d6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/na;->b(Lcom/google/android/gms/internal/ads/d6;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->e:Lcom/google/android/gms/internal/ads/b3;

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/b3;->a(Lcom/google/android/gms/internal/ads/d6;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/c3;->h:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/c3;->i:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/na;->a()V

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/c3;->h:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/na;->v()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u9;->v()J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final u()Lcom/google/android/gms/internal/ads/d6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->g:Lcom/google/android/gms/internal/ads/u9;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/u9;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:Lcom/google/android/gms/internal/ads/na;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/na;->u()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final v()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
