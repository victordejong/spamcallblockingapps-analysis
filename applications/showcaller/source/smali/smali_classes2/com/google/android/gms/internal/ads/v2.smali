.class public abstract Lcom/google/android/gms/internal/ads/v2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/t6;
.implements Lcom/google/android/gms/internal/ads/u6;


# instance fields
.field private final d:I

.field private final e:Lcom/google/android/gms/internal/ads/v4;

.field private f:Lcom/google/android/gms/internal/ads/v6;

.field private g:I

.field private h:I

.field private i:Lcom/google/android/gms/internal/ads/bm3;

.field private j:[Lcom/google/android/gms/internal/ads/u4;

.field private k:J

.field private l:J

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/v2;->d:I

    new-instance p1, Lcom/google/android/gms/internal/ads/v4;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/v4;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v2;->e:Lcom/google/android/gms/internal/ads/v4;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bm3;->c()V

    return-void
.end method

.method public final L()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->p()V

    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->o()V

    return-void
.end method

.method public final N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    return v0
.end method

.method public final O()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v2;->d:I

    return v0
.end method

.method public final P()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->e:Lcom/google/android/gms/internal/ads/v4;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/v4;->b:Lcom/google/android/gms/internal/ads/hp2;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/u4;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->r()V

    return-void
.end method

.method public final S(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/v2;->g:I

    return-void
.end method

.method public final T()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    return v0
.end method

.method public final V(Lcom/google/android/gms/internal/ads/v6;[Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/bm3;JZZJJ)V
    .locals 9

    move-object v7, p0

    move v8, p6

    .line 1
    iget v0, v7, Lcom/google/android/gms/internal/ads/v2;->h:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/v2;->f:Lcom/google/android/gms/internal/ads/v6;

    iput v1, v7, Lcom/google/android/gms/internal/ads/v2;->h:I

    move/from16 v0, p7

    .line 2
    invoke-virtual {p0, p6, v0}, Lcom/google/android/gms/internal/ads/v2;->m(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/v2;->X([Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/bm3;JJ)V

    move-wide v0, p4

    .line 4
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/v2;->n(JZ)V

    return-void
.end method

.method public final W()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    return-wide v0
.end method

.method public final X([Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/bm3;JJ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v2;->j:[Lcom/google/android/gms/internal/ads/u4;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/v2;->k:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/v2;->e([Lcom/google/android/gms/internal/ads/u4;JJ)V

    return-void
.end method

.method public final Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    return-void
.end method

.method public final Z()Lcom/google/android/gms/internal/ads/u6;
    .locals 0

    return-object p0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a0()Lcom/google/android/gms/internal/ads/bm3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    return-object v0
.end method

.method public b0(FF)V
    .locals 0

    return-void
.end method

.method public final c0()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->e:Lcom/google/android/gms/internal/ads/v4;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/v4;->b:Lcom/google/android/gms/internal/ads/hp2;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/u4;

    iput v2, p0, Lcom/google/android/gms/internal/ads/v2;->h:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/v2;->j:[Lcom/google/android/gms/internal/ads/u4;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->q()V

    return-void
.end method

.method public final d0(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/v2;->n(JZ)V

    return-void
.end method

.method protected abstract e([Lcom/google/android/gms/internal/ads/u4;JJ)V
.end method

.method protected final f()Lcom/google/android/gms/internal/ads/v4;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->e:Lcom/google/android/gms/internal/ads/v4;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/v4;->b:Lcom/google/android/gms/internal/ads/hp2;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/u4;

    return-object v0
.end method

.method protected final g()[Lcom/google/android/gms/internal/ads/u4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->j:[Lcom/google/android/gms/internal/ads/u4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final h()Lcom/google/android/gms/internal/ads/v6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->f:Lcom/google/android/gms/internal/ads/v6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final i(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/u4;ZI)Lcom/google/android/gms/internal/ads/zzaeg;
    .locals 9

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/v2;->n:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/v2;->n:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/u6;->d(Lcom/google/android/gms/internal/ads/u4;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/v2;->n:Z

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/v2;->n:Z

    .line 3
    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/v2;->n:Z

    :cond_0
    const/4 v6, 0x4

    .line 4
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/t6;->c()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/v2;->g:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/u4;IZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    return-object p1
.end method

.method protected final j(Lcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/z3;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bm3;->d(Lcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/z3;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/a24;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/z3;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/v2;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/z3;->e:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    .line 4
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/v2;->l:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/u4;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/u4;->r:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 7
    new-instance p3, Lcom/google/android/gms/internal/ads/s4;

    const/4 v1, 0x0

    .line 8
    invoke-direct {p3, v0, v1}, Lcom/google/android/gms/internal/ads/s4;-><init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/t4;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/u4;->r:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/v2;->k:J

    add-long/2addr v2, v4

    .line 9
    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/internal/ads/s4;->r(J)Lcom/google/android/gms/internal/ads/s4;

    new-instance v0, Lcom/google/android/gms/internal/ads/u4;

    .line 10
    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/ads/u4;-><init>(Lcom/google/android/gms/internal/ads/s4;Lcom/google/android/gms/internal/ads/t4;)V

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/u4;

    return p2

    :cond_3
    :goto_0
    return p3
.end method

.method protected final k(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/v2;->k:J

    sub-long/2addr p1, v1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bm3;->a(J)I

    move-result p1

    return p1
.end method

.method protected final l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v2;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/v2;->m:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v2;->i:Lcom/google/android/gms/internal/ads/bm3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bm3;->b()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected m(ZZ)V
    .locals 0

    return-void
.end method

.method protected abstract n(JZ)V
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method protected abstract q()V
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public zzi()Lcom/google/android/gms/internal/ads/u9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
