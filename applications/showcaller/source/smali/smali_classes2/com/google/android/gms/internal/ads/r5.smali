.class final Lcom/google/android/gms/internal/ads/r5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/m7;

.field private final b:Lcom/google/android/gms/internal/ads/o7;

.field private final c:Lcom/google/android/gms/internal/ads/rz0;

.field private final d:Landroid/os/Handler;

.field private e:J

.field private f:I

.field private g:Z

.field private h:Lcom/google/android/gms/internal/ads/o5;

.field private i:Lcom/google/android/gms/internal/ads/o5;

.field private j:Lcom/google/android/gms/internal/ads/o5;

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rz0;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->c:Lcom/google/android/gms/internal/ads/rz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r5;->d:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/gms/internal/ads/m7;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/m7;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/o7;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/o7;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    return-void
.end method

.method private final A(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/p5;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/mk3;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/mk3;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    move-object/from16 v3, p1

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v3, v7, Lcom/google/android/gms/internal/ads/ar3;->c:I

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/m7;->h(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    move/from16 v2, p3

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/m7;->c(I)I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/m7;->i()J

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v2, v7, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/m7;->j(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v1

    if-eqz v5, :cond_1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_1

    const-wide/16 v1, -0x1

    add-long/2addr v1, v9

    .line 7
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/ads/p5;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    .line 8
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/p5;-><init>(Lcom/google/android/gms/internal/ads/mk3;JJJJZZZZ)V

    return-object v15
.end method

.method private final B(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/p5;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 2
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/m7;->f(J)I

    move-result v5

    new-instance v7, Lcom/google/android/gms/internal/ads/mk3;

    move-wide/from16 v8, p7

    .line 3
    invoke-direct {v7, v2, v8, v9, v5}, Lcom/google/android/gms/internal/ads/mk3;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/r5;->c(Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v2

    .line 4
    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/r5;->C(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v18

    .line 5
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/r5;->a(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Z)Z

    move-result v19

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 6
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/m7;->j(I)Z

    :cond_0
    const-wide/16 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/m7;->b(I)J

    move-wide v12, v8

    goto :goto_0

    :cond_1
    move-wide v12, v10

    :goto_0
    cmp-long v1, v12, v10

    if-eqz v1, :cond_2

    move-wide v14, v12

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/m7;->e:J

    move-wide v14, v5

    :goto_1
    cmp-long v1, v14, v10

    if-eqz v1, :cond_3

    cmp-long v1, v3, v14

    if-ltz v1, :cond_3

    const-wide/16 v3, -0x1

    add-long/2addr v3, v14

    .line 9
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v8, v3

    new-instance v1, Lcom/google/android/gms/internal/ads/p5;

    const/16 v16, 0x0

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v17, v2

    .line 10
    invoke-direct/range {v6 .. v19}, Lcom/google/android/gms/internal/ads/p5;-><init>(Lcom/google/android/gms/internal/ads/mk3;JJJJZZZZ)V

    return-object v1
.end method

.method private final C(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/r5;->c(Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/o7;->r:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Z)Z
    .locals 7

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    const/4 v6, 0x0

    .line 2
    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    move-result-object p2

    .line 3
    iget p2, p2, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object p2

    .line 5
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/o7;->k:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    iget v4, p0, Lcom/google/android/gms/internal/ads/r5;->f:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/r5;->g:Z

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p7;->l(ILcom/google/android/gms/internal/ads/m7;Lcom/google/android/gms/internal/ads/o7;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method private final b(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;I)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/m7;->b(I)J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/m7;->k(I)J

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private static final c(Lcom/google/android/gms/internal/ads/mk3;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/ar3;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final v()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/ax2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ax2;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->d:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/q5;

    .line 6
    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/q5;-><init>(Lcom/google/android/gms/internal/ads/r5;Lcom/google/android/gms/internal/ads/ax2;Lcom/google/android/gms/internal/ads/mk3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static w(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/mk3;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p6}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 2
    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/m7;->e(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_0

    .line 3
    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/m7;->f(J)I

    move-result p0

    new-instance p2, Lcom/google/android/gms/internal/ads/mk3;

    .line 4
    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/gms/internal/ads/mk3;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p6, v2}, Lcom/google/android/gms/internal/ads/m7;->c(I)I

    move-result v3

    new-instance p0, Lcom/google/android/gms/internal/ads/mk3;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/mk3;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private final x(Lcom/google/android/gms/internal/ads/p7;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    iget v6, p0, Lcom/google/android/gms/internal/ads/r5;->f:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/r5;->g:Z

    move-object v2, p1

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/p7;->l(ILcom/google/android/gms/internal/ads/m7;Lcom/google/android/gms/internal/ads/o7;IZ)I

    move-result v3

    .line 3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/p5;->g:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 8
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    move-result v2

    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/ads/r5;->r(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p5;)Lcom/google/android/gms/internal/ads/p5;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    if-nez v2, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private final y(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/o5;J)Lcom/google/android/gms/internal/ads/p5;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/p5;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 2
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/p5;->g:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    iget v0, v9, Lcom/google/android/gms/internal/ads/r5;->f:I

    iget-boolean v5, v9, Lcom/google/android/gms/internal/ads/r5;->g:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p7;->l(ILcom/google/android/gms/internal/ads/m7;Lcom/google/android/gms/internal/ads/o7;IZ)I

    move-result v0

    if-ne v0, v14, :cond_0

    return-object v15

    :cond_0
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/m7;->c:Ljava/lang/Object;

    .line 6
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/ar3;->d:J

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    .line 7
    invoke-virtual {v8, v3, v2, v12, v13}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v2

    .line 8
    iget v2, v2, Lcom/google/android/gms/internal/ads/o7;->q:I

    if-ne v2, v0, :cond_3

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/p7;->n(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    .line 11
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    .line 13
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/ar3;->d:J

    goto :goto_0

    .line 15
    :cond_2
    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/r5;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/android/gms/internal/ads/r5;->e:J

    :goto_0
    move-wide v10, v2

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v10, v12

    .line 16
    :goto_1
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    move-object/from16 v0, p1

    move-wide v2, v10

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/r5;->w(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/r5;->z(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v12, 0x0

    .line 19
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 20
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v3, v10, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/m7;->g(I)I

    move-result v0

    if-ne v0, v14, :cond_5

    return-object v15

    :cond_5
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v1, v10, Lcom/google/android/gms/internal/ads/ar3;->c:I

    .line 22
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/m7;->d(II)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 23
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/p5;->c:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/ar3;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/r5;->A(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0

    .line 24
    :cond_6
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/p5;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/r5;->b:Lcom/google/android/gms/internal/ads/o7;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v3, v2, Lcom/google/android/gms/internal/ads/m7;->d:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 26
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/p7;->n(Lcom/google/android/gms/internal/ads/o7;Lcom/google/android/gms/internal/ads/m7;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v15

    .line 27
    :cond_7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_8
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 28
    invoke-direct {v9, v8, v2, v3}, Lcom/google/android/gms/internal/ads/r5;->b(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    .line 29
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/p5;->c:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/ar3;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/r5;->B(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v1, v10, Lcom/google/android/gms/internal/ads/ar3;->e:I

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m7;->c(I)I

    move-result v4

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v1, v10, Lcom/google/android/gms/internal/ads/ar3;->e:I

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m7;->g(I)I

    move-result v0

    if-ne v4, v0, :cond_a

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget v1, v10, Lcom/google/android/gms/internal/ads/ar3;->e:I

    .line 33
    invoke-direct {v9, v8, v0, v1}, Lcom/google/android/gms/internal/ads/r5;->b(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 34
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/p5;->e:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/ar3;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/r5;->B(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/ar3;->e:I

    .line 35
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/p5;->e:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/ar3;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/r5;->A(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0
.end method

.method private final z(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJ)Lcom/google/android/gms/internal/ads/p5;
    .locals 12

    move-object v0, p2

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/ar3;->c:I

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/ar3;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/r5;->A(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/ar3;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/r5;->B(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/internal/ads/p7;I)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/r5;->f:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/r5;->x(Lcom/google/android/gms/internal/ads/p7;)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/p7;Z)Z
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/r5;->g:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/r5;->x(Lcom/google/android/gms/internal/ads/p7;)Z

    move-result p1

    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/lk3;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->a:Lcom/google/android/gms/internal/ads/lk3;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/o5;->h(J)V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/p5;->i:Z

    if-nez v3, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/p5;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final i(JLcom/google/android/gms/internal/ads/b6;)Lcom/google/android/gms/internal/ads/p5;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    if-nez v0, :cond_0

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/b6;->c:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/b6;->d:J

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/b6;->t:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/r5;->z(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;JJ)Lcom/google/android/gms/internal/ads/p5;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/b6;->b:Lcom/google/android/gms/internal/ads/p7;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/r5;->y(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/o5;J)Lcom/google/android/gms/internal/ads/p5;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final j()Lcom/google/android/gms/internal/ads/o5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/o5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/o5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/o5;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/r5;->v()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/o5;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->m()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->l:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/ar3;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/r5;->m:J

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/r5;->v()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    return-object v0
.end method

.method public final o(Lcom/google/android/gms/internal/ads/o5;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    const/4 v1, 0x1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o5;->m()V

    iget v2, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/o5;->n(Lcom/google/android/gms/internal/ads/o5;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/r5;->v()V

    return v1
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->l:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/ar3;->d:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/r5;->m:J

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->m()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/r5;->k:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/r5;->v()V

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/p7;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/ads/r5;->r(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p5;)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v7, p2

    .line 2
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/r5;->y(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/o5;J)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v9

    if-nez v9, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    return v6

    .line 4
    :cond_2
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/p5;->b:J

    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/p5;->b:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/ar3;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v3, v9

    .line 5
    :goto_1
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/p5;->c:J

    .line 6
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/p5;->b(J)Lcom/google/android/gms/internal/ads/p5;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 7
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/p5;->e:J

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/p5;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v13

    if-eqz v5, :cond_8

    cmp-long v5, v9, v11

    if-nez v5, :cond_3

    goto :goto_4

    .line 8
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->r()V

    .line 9
    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/p5;->e:J

    cmp-long v1, v7, v13

    if-nez v1, :cond_4

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 11
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    if-ne v2, v1, :cond_6

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 12
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/p5;->f:Z

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_5

    cmp-long v1, p4, v7

    if-ltz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 13
    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    return v4

    :cond_7
    return v6

    .line 14
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_0

    .line 15
    :cond_9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/r5;->o(Lcom/google/android/gms/internal/ads/o5;)Z

    move-result v1

    if-nez v1, :cond_a

    return v4

    :cond_a
    return v6

    :cond_b
    return v4
.end method

.method public final r(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/p5;)Lcom/google/android/gms/internal/ads/p5;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/r5;->c(Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v12

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/r5;->C(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;)Z

    move-result v13

    .line 3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/r5;->a(Lcom/google/android/gms/internal/ads/p7;Lcom/google/android/gms/internal/ads/mk3;Z)Z

    move-result v14

    .line 4
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ar3;->a:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lcom/google/android/gms/internal/ads/ar3;->e:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 6
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/m7;->b(I)J

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    .line 7
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v5, v3, Lcom/google/android/gms/internal/ads/ar3;->b:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/ar3;->c:I

    .line 8
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/m7;->h(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_3

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_3

    move-wide v9, v7

    goto :goto_3

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/m7;->e:J

    goto :goto_2

    .line 10
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    iget v4, v3, Lcom/google/android/gms/internal/ads/ar3;->b:I

    .line 11
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/m7;->j(I)Z

    goto :goto_4

    .line 12
    :cond_4
    iget v1, v3, Lcom/google/android/gms/internal/ads/ar3;->e:I

    if-eq v1, v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/m7;->j(I)Z

    .line 14
    :cond_5
    :goto_4
    new-instance v15, Lcom/google/android/gms/internal/ads/p5;

    .line 15
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/p5;->b:J

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/p5;->c:J

    const/4 v11, 0x0

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/p5;-><init>(Lcom/google/android/gms/internal/ads/mk3;JJJJZZZZ)V

    return-object v15
.end method

.method public final s(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/mk3;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/p7;->o(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/m7;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 3
    invoke-virtual {p1, v1, v4, v2}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v1

    .line 4
    iget v1, v1, Lcom/google/android/gms/internal/ads/m7;->d:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/r5;->m:J

    :cond_0
    :goto_0
    move-wide v7, v0

    goto :goto_3

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    .line 6
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/ar3;->d:J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/o5;->b:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 9
    invoke-virtual {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    move-result-object v4

    .line 10
    iget v4, v4, Lcom/google/android/gms/internal/ads/m7;->d:I

    if-ne v4, v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/ar3;->d:J

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->o()Lcom/google/android/gms/internal/ads/o5;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/r5;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/r5;->e:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    if-nez v2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r5;->l:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/r5;->m:J

    goto :goto_0

    .line 12
    :goto_3
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/r5;->a:Lcom/google/android/gms/internal/ads/m7;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    .line 13
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/r5;->w(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/m7;)Lcom/google/android/gms/internal/ads/mk3;

    move-result-object p1

    return-object p1
.end method

.method final synthetic t(Lcom/google/android/gms/internal/ads/ax2;Lcom/google/android/gms/internal/ads/mk3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r5;->c:Lcom/google/android/gms/internal/ads/rz0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ax2;->g()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/rz0;->R(Ljava/util/List;Lcom/google/android/gms/internal/ads/mk3;)V

    return-void
.end method

.method public final u([Lcom/google/android/gms/internal/ads/u6;Lcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/tn3;Lcom/google/android/gms/internal/ads/y5;Lcom/google/android/gms/internal/ads/p5;Lcom/google/android/gms/internal/ads/hn3;)Lcom/google/android/gms/internal/ads/o5;
    .locals 12

    move-object v0, p0

    move-object/from16 v8, p5

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/p5;->a:Lcom/google/android/gms/internal/ads/mk3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ar3;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/p5;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    move-wide v3, v4

    goto :goto_0

    :cond_0
    move-wide v3, v2

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/o5;->a()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/o5;->f:Lcom/google/android/gms/internal/ads/p5;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/p5;->e:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/p5;->b:J

    sub-long/2addr v1, v3

    move-wide v3, v1

    .line 4
    :goto_0
    new-instance v11, Lcom/google/android/gms/internal/ads/o5;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/o5;-><init>([Lcom/google/android/gms/internal/ads/u6;JLcom/google/android/gms/internal/ads/fn3;Lcom/google/android/gms/internal/ads/tn3;Lcom/google/android/gms/internal/ads/y5;Lcom/google/android/gms/internal/ads/p5;Lcom/google/android/gms/internal/ads/hn3;[B)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/o5;->n(Lcom/google/android/gms/internal/ads/o5;)V

    goto :goto_1

    .line 6
    :cond_2
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/r5;->h:Lcom/google/android/gms/internal/ads/o5;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/r5;->i:Lcom/google/android/gms/internal/ads/o5;

    :goto_1
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/r5;->l:Ljava/lang/Object;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/r5;->j:Lcom/google/android/gms/internal/ads/o5;

    iget v1, v0, Lcom/google/android/gms/internal/ads/r5;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/r5;->k:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/r5;->v()V

    return-object v11
.end method
