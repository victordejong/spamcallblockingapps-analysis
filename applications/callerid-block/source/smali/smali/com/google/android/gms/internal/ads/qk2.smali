.class public abstract Lcom/google/android/gms/internal/ads/qk2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hl2;
.implements Lcom/google/android/gms/internal/ads/il2;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/internal/ads/kl2;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/bq2;

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/qk2;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qk2;->g:Z

    return-void
.end method


# virtual methods
.method protected abstract A(JZ)V
.end method

.method protected abstract B()V
.end method

.method protected abstract C()V
.end method

.method protected abstract D()V
.end method

.method protected final E()Lcom/google/android/gms/internal/ads/kl2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qk2;->b:Lcom/google/android/gms/internal/ads/kl2;

    return-object v0
.end method

.method protected final F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->c:I

    return v0
.end method

.method public final H(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/qk2;->c:I

    return-void
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/il2;
    .locals 0

    return-object p0
.end method

.method public final d([Lcom/google/android/gms/internal/ads/zzit;Lcom/google/android/gms/internal/ads/bq2;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/qk2;->g:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/qk2;->f:J

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/qk2;->z([Lcom/google/android/gms/internal/ads/zzit;J)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/kl2;[Lcom/google/android/gms/internal/ads/zzit;Lcom/google/android/gms/internal/ads/bq2;JZJ)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qk2;->b:Lcom/google/android/gms/internal/ads/kl2;

    iput v1, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/qk2;->x(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/qk2;->d([Lcom/google/android/gms/internal/ads/zzit;Lcom/google/android/gms/internal/ads/bq2;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/qk2;->A(JZ)V

    return-void
.end method

.method public f()Lcom/google/android/gms/internal/ads/nr2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qk2;->B()V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->g:Z

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/bq2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    return-object v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bq2;->b()V

    return-void
.end method

.method public final n()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qk2;->D()V

    return-void
.end method

.method public final q()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/qk2;->d:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qk2;->C()V

    return-void
.end method

.method public final r(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->g:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/qk2;->A(JZ)V

    return-void
.end method

.method protected final u(Lcom/google/android/gms/internal/ads/fl2;Lcom/google/android/gms/internal/ads/sm2;Z)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    move/from16 v4, p3

    invoke-interface {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/bq2;->a(Lcom/google/android/gms/internal/ads/fl2;Lcom/google/android/gms/internal/ads/sm2;Z)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/nm2;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/qk2;->g:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const/4 v1, -0x3

    return v1

    :cond_1
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/sm2;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/qk2;->f:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/sm2;->d:J

    goto/16 :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne v3, v2, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fl2;->a:Lcom/google/android/gms/internal/ads/zzit;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzit;->x:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/qk2;->f:J

    new-instance v3, Lcom/google/android/gms/internal/ads/zzit;

    move-object v9, v3

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzit;->b:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzit;->f:Ljava/lang/String;

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzit;->g:Ljava/lang/String;

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzit;->d:Ljava/lang/String;

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzit;->c:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/zzit;->h:I

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->k:I

    move/from16 v16, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->l:I

    move/from16 v17, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->m:F

    move/from16 v18, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->n:I

    move/from16 v19, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->o:F

    move/from16 v20, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzit;->q:[B

    move-object/from16 v21, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->p:I

    move/from16 v22, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzit;->r:Lcom/google/android/gms/internal/ads/zzqm;

    move-object/from16 v23, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->s:I

    move/from16 v24, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->t:I

    move/from16 v25, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->u:I

    move/from16 v26, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->v:I

    move/from16 v27, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->w:I

    move/from16 v28, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->y:I

    move/from16 v29, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzit;->z:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzit;->A:I

    move/from16 v31, v2

    add-long v32, v5, v7

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzit;->i:Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzit;->j:Lcom/google/android/gms/internal/ads/zzkq;

    move-object/from16 v35, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzit;->e:Lcom/google/android/gms/internal/ads/zzmz;

    move-object/from16 v36, v2

    invoke-direct/range {v9 .. v36}, Lcom/google/android/gms/internal/ads/zzit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqm;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzkq;Lcom/google/android/gms/internal/ads/zzmz;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/fl2;->a:Lcom/google/android/gms/internal/ads/zzit;

    const/4 v1, -0x5

    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method protected final v(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/qk2;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bq2;->d(J)V

    return-void
.end method

.method protected final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qk2;->h:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qk2;->e:Lcom/google/android/gms/internal/ads/bq2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bq2;->zza()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract x(Z)V
.end method

.method protected z([Lcom/google/android/gms/internal/ads/zzit;J)V
    .locals 0

    return-void
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/qk2;->a:I

    return v0
.end method
