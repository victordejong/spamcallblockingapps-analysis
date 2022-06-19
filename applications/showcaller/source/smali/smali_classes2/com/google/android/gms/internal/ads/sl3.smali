.class public final Lcom/google/android/gms/internal/ads/sl3;
.super Lcom/google/android/gms/internal/ads/dg3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jl3;


# instance fields
.field private final g:Lcom/google/android/gms/internal/ads/j5;

.field private final h:Lcom/google/android/gms/internal/ads/i5;

.field private final i:Lcom/google/android/gms/internal/ads/y6;

.field private final j:Lcom/google/android/gms/internal/ads/cl3;

.field private final k:Lcom/google/android/gms/internal/ads/go2;

.field private final l:I

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/ol;

.field private final r:Lcom/google/android/gms/internal/ads/zn3;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/j5;Lcom/google/android/gms/internal/ads/y6;Lcom/google/android/gms/internal/ads/cl3;Lcom/google/android/gms/internal/ads/go2;Lcom/google/android/gms/internal/ads/zn3;ILcom/google/android/gms/internal/ads/rl3;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dg3;-><init>()V

    iget-object p7, p1, Lcom/google/android/gms/internal/ads/j5;->d:Lcom/google/android/gms/internal/ads/i5;

    .line 2
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/sl3;->h:Lcom/google/android/gms/internal/ads/i5;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sl3;->g:Lcom/google/android/gms/internal/ads/j5;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sl3;->i:Lcom/google/android/gms/internal/ads/y6;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sl3;->j:Lcom/google/android/gms/internal/ads/cl3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sl3;->k:Lcom/google/android/gms/internal/ads/go2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/sl3;->r:Lcom/google/android/gms/internal/ads/zn3;

    iput p6, p0, Lcom/google/android/gms/internal/ads/sl3;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sl3;->m:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/sl3;->n:J

    return-void
.end method

.method private final x()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/fm3;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/sl3;->n:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/sl3;->o:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sl3;->p:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/sl3;->g:Lcom/google/android/gms/internal/ads/j5;

    if-eqz v1, :cond_0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/j5;->e:Lcom/google/android/gms/internal/ads/g5;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    .line 2
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/fm3;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/j5;Lcom/google/android/gms/internal/ads/g5;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/sl3;->m:Z

    if-eqz v1, :cond_1

    new-instance v10, Lcom/google/android/gms/internal/ads/ol3;

    move-object/from16 v1, v24

    .line 3
    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/ol3;-><init>(Lcom/google/android/gms/internal/ads/sl3;Lcom/google/android/gms/internal/ads/p7;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    .line 4
    :goto_1
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/dg3;->r(Lcom/google/android/gms/internal/ads/p7;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/lk3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/nl3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nl3;->S()V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/tn3;J)Lcom/google/android/gms/internal/ads/lk3;
    .locals 15

    move-object v13, p0

    .line 1
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/sl3;->i:Lcom/google/android/gms/internal/ads/y6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y6;->zza()Lcom/google/android/gms/internal/ads/w7;

    move-result-object v2

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/sl3;->q:Lcom/google/android/gms/internal/ads/ol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/w7;->f(Lcom/google/android/gms/internal/ads/ol;)V

    .line 3
    :cond_0
    new-instance v14, Lcom/google/android/gms/internal/ads/nl3;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/sl3;->h:Lcom/google/android/gms/internal/ads/i5;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/i5;->a:Landroid/net/Uri;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/sl3;->j:Lcom/google/android/gms/internal/ads/cl3;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cl3;->zza()Lcom/google/android/gms/internal/ads/dl3;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/sl3;->k:Lcom/google/android/gms/internal/ads/go2;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/dg3;->u(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/sl3;->r:Lcom/google/android/gms/internal/ads/zn3;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/dg3;->s(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object v7

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/sl3;->h:Lcom/google/android/gms/internal/ads/i5;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/i5;->d:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v13, Lcom/google/android/gms/internal/ads/sl3;->l:I

    const/4 v12, 0x0

    move-object v0, v14

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/nl3;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/dl3;Lcom/google/android/gms/internal/ads/go2;Lcom/google/android/gms/internal/ads/gj2;Lcom/google/android/gms/internal/ads/zn3;Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/jl3;Lcom/google/android/gms/internal/ads/tn3;Ljava/lang/String;I[B)V

    return-object v14
.end method

.method public final j(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/sl3;->n:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sl3;->m:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/sl3;->n:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sl3;->o:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sl3;->p:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/sl3;->n:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/sl3;->o:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/sl3;->p:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sl3;->m:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sl3;->x()V

    return-void
.end method

.method protected final m(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sl3;->q:Lcom/google/android/gms/internal/ads/ol;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sl3;->x()V

    return-void
.end method

.method protected final p()V
    .locals 0

    return-void
.end method

.method public final q()Lcom/google/android/gms/internal/ads/j5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sl3;->g:Lcom/google/android/gms/internal/ads/j5;

    return-object v0
.end method

.method public final zzu()V
    .locals 0

    return-void
.end method
