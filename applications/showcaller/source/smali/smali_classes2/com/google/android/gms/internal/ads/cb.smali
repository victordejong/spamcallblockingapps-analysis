.class public abstract Lcom/google/android/gms/internal/ads/cb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ub;
.implements Lcom/google/android/gms/internal/ads/vb;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/internal/ads/wb;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/tg;

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/cb;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cb;->g:Z

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/cb;->c:I

    return-void
.end method

.method public final D(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->g:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/cb;->s(JZ)V

    return-void
.end method

.method public final E(Lcom/google/android/gms/internal/ads/wb;[Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/tg;JZJ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cb;->b:Lcom/google/android/gms/internal/ads/wb;

    iput v1, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    .line 2
    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/cb;->q(Z)V

    .line 3
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/cb;->F([Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/tg;J)V

    .line 4
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/cb;->s(JZ)V

    return-void
.end method

.method public final F([Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/tg;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/cb;->g:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/cb;->f:J

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/cb;->r([Lcom/google/android/gms/internal/ads/zzanm;J)V

    return-void
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/vb;
    .locals 0

    return-object p0
.end method

.method public e()Lcom/google/android/gms/internal/ads/gi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final f(Lcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/hd;Z)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    move/from16 v4, p3

    invoke-interface {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/tg;->d(Lcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/hd;Z)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/cd;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/cb;->g:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const/4 v1, -0x3

    return v1

    :cond_1
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/hd;->d:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/cb;->f:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/hd;->d:J

    goto/16 :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne v3, v2, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/sb;->a:Lcom/google/android/gms/internal/ads/zzanm;

    .line 2
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzanm;->z:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/cb;->f:J

    new-instance v3, Lcom/google/android/gms/internal/ads/zzanm;

    move-object v9, v3

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzanm;->d:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzanm;->h:Ljava/lang/String;

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzanm;->i:Ljava/lang/String;

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzanm;->f:Ljava/lang/String;

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzanm;->e:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/zzanm;->j:I

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->m:I

    move/from16 v16, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->n:I

    move/from16 v17, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->o:F

    move/from16 v18, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->p:I

    move/from16 v19, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->q:F

    move/from16 v20, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->s:[B

    move-object/from16 v21, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->r:I

    move/from16 v22, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->t:Lcom/google/android/gms/internal/ads/zzavh;

    move-object/from16 v23, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->u:I

    move/from16 v24, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->v:I

    move/from16 v25, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->w:I

    move/from16 v26, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->x:I

    move/from16 v27, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->y:I

    move/from16 v28, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->A:I

    move/from16 v29, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->B:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->C:I

    move/from16 v31, v2

    add-long v32, v5, v7

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->k:Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->l:Lcom/google/android/gms/internal/ads/zzapk;

    move-object/from16 v35, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->g:Lcom/google/android/gms/internal/ads/zzaru;

    move-object/from16 v36, v2

    .line 3
    invoke-direct/range {v9 .. v36}, Lcom/google/android/gms/internal/ads/zzanm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzavh;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzapk;Lcom/google/android/gms/internal/ads/zzaru;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/sb;->a:Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v1, -0x5

    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->g:Z

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tg;->c()V

    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->v()V

    return-void
.end method

.method protected final m(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/cb;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/tg;->a(J)V

    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->u()V

    return-void
.end method

.method protected final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cb;->h:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tg;->b()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract q(Z)V
.end method

.method protected r([Lcom/google/android/gms/internal/ads/zzanm;J)V
    .locals 0

    return-void
.end method

.method protected abstract s(JZ)V
.end method

.method protected abstract t()V
.end method

.method protected abstract u()V
.end method

.method protected abstract v()V
.end method

.method protected final w()Lcom/google/android/gms/internal/ads/wb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cb;->b:Lcom/google/android/gms/internal/ads/wb;

    return-object v0
.end method

.method protected final x()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->c:I

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->a:I

    return v0
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/cb;->d:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cb;->t()V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/tg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cb;->e:Lcom/google/android/gms/internal/ads/tg;

    return-object v0
.end method
