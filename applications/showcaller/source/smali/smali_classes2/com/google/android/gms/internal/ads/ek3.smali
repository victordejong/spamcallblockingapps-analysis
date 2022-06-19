.class public final Lcom/google/android/gms/internal/ads/ek3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lk3;
.implements Lcom/google/android/gms/internal/ads/kk3;


# instance fields
.field public final d:Lcom/google/android/gms/internal/ads/mk3;

.field private final e:J

.field private f:Lcom/google/android/gms/internal/ads/ok3;

.field private g:Lcom/google/android/gms/internal/ads/lk3;

.field private h:Lcom/google/android/gms/internal/ads/kk3;

.field private i:J

.field private final j:Lcom/google/android/gms/internal/ads/tn3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->d:Lcom/google/android/gms/internal/ads/mk3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ek3;->j:Lcom/google/android/gms/internal/ads/tn3;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ek3;->e:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ek3;->i:J

    return-void
.end method

.method private final u(J)J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ek3;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ek3;->e:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lk3;->b(J)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lk3;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->f:Lcom/google/android/gms/internal/ads/ok3;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ok3;->zzu()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 3
    throw v0
.end method

.method public final d(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lk3;->d(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/dv3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lk3;->e()Lcom/google/android/gms/internal/ads/dv3;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lk3;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/lk3;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->h:Lcom/google/android/gms/internal/ads/kk3;

    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/kk3;->g(Lcom/google/android/gms/internal/ads/lk3;)V

    return-void
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lk3;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i([Lcom/google/android/gms/internal/ads/mm3;[Z[Lcom/google/android/gms/internal/ads/bm3;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/ek3;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/ek3;->e:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/ek3;->i:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 2
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/lk3;->i([Lcom/google/android/gms/internal/ads/mm3;[Z[Lcom/google/android/gms/internal/ads/bm3;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lk3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/internal/ads/dm3;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/lk3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->h:Lcom/google/android/gms/internal/ads/kk3;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/cm3;->k(Lcom/google/android/gms/internal/ads/dm3;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/kk3;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->h:Lcom/google/android/gms/internal/ads/kk3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/ek3;->e:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/ek3;->u(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/lk3;->l(Lcom/google/android/gms/internal/ads/kk3;J)V

    :cond_0
    return-void
.end method

.method public final m(JLcom/google/android/gms/internal/ads/x6;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/lk3;->m(JLcom/google/android/gms/internal/ads/x6;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final n(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lk3;->n(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final o(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ek3;->i:J

    return-void
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ek3;->i:J

    return-wide v0
.end method

.method public final q(JZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/lk3;->q(JZ)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/ok3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->f:Lcom/google/android/gms/internal/ads/ok3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->f:Lcom/google/android/gms/internal/ads/ok3;

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/mk3;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ek3;->e:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ek3;->u(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ek3;->f:Lcom/google/android/gms/internal/ads/ok3;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ek3;->j:Lcom/google/android/gms/internal/ads/tn3;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/ok3;->e(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/lk3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ek3;->h:Lcom/google/android/gms/internal/ads/kk3;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/lk3;->l(Lcom/google/android/gms/internal/ads/kk3;J)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ek3;->f:Lcom/google/android/gms/internal/ads/ok3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ok3;->c(Lcom/google/android/gms/internal/ads/lk3;)V

    :cond_0
    return-void
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek3;->g:Lcom/google/android/gms/internal/ads/lk3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lk3;->zzg()J

    move-result-wide v0

    return-wide v0
.end method
