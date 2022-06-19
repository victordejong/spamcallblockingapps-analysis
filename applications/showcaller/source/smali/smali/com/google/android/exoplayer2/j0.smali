.class final Lcom/google/android/exoplayer2/j0;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/y0$b;

.field private final b:Lcom/google/android/exoplayer2/y0$c;

.field private c:J

.field private d:Lcom/google/android/exoplayer2/y0;

.field private e:I

.field private f:Z

.field private g:Lcom/google/android/exoplayer2/h0;

.field private h:Lcom/google/android/exoplayer2/h0;

.field private i:Lcom/google/android/exoplayer2/h0;

.field private j:I

.field private k:Ljava/lang/Object;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/y0$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/y0$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/y0$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/y0$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/y0;->a:Lcom/google/android/exoplayer2/y0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    return-void
.end method

.method private A()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v3, v0, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v4, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    iget v6, p0, Lcom/google/android/exoplayer2/j0;->e:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/j0;->f:Z

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/y0;->d(ILcom/google/android/exoplayer2/y0$b;Lcom/google/android/exoplayer2/y0$c;IZ)I

    move-result v3

    .line 5
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/i0;->f:Z

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v5, v2, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j0;->u(Lcom/google/android/exoplayer2/h0;)Z

    move-result v2

    .line 10
    iget-object v3, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j0;->p(Lcom/google/android/exoplayer2/i0;)Lcom/google/android/exoplayer2/i0;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    xor-int/lit8 v0, v2, 0x1

    return v0
.end method

.method private c(JJ)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

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

.method private d(Lcom/google/android/exoplayer2/i0;Lcom/google/android/exoplayer2/i0;)Z
    .locals 5

    .line 1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i0;->b:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/i0;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-object p2, p2, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/v$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(Lcom/google/android/exoplayer2/k0;)Lcom/google/android/exoplayer2/i0;
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/google/android/exoplayer2/k0;->c:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/k0;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/k0;->d:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->j(Lcom/google/android/exoplayer2/source/v$a;JJ)Lcom/google/android/exoplayer2/i0;

    move-result-object p1

    return-object p1
.end method

.method private h(Lcom/google/android/exoplayer2/h0;J)Lcom/google/android/exoplayer2/i0;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/h0;->l()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/exoplayer2/i0;->e:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 3
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/i0;->f:Z

    const/4 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    .line 4
    iget-object v4, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v12, v1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v14

    .line 5
    iget-object v13, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v15, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget-object v4, v8, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    iget v12, v8, Lcom/google/android/exoplayer2/j0;->e:I

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/j0;->f:Z

    move-object/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v5

    .line 6
    invoke-virtual/range {v13 .. v18}, Lcom/google/android/exoplayer2/y0;->d(ILcom/google/android/exoplayer2/y0$b;Lcom/google/android/exoplayer2/y0$c;IZ)I

    move-result v4

    if-ne v4, v7, :cond_0

    return-object v11

    .line 7
    :cond_0
    iget-object v5, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v6, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    const/4 v7, 0x1

    .line 8
    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/exoplayer2/y0;->g(ILcom/google/android/exoplayer2/y0$b;Z)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v5

    iget v15, v5, Lcom/google/android/exoplayer2/y0$b;->c:I

    .line 9
    iget-object v5, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget-object v5, v5, Lcom/google/android/exoplayer2/y0$b;->b:Ljava/lang/Object;

    .line 10
    iget-object v1, v1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    .line 11
    iget-object v1, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v12, v8, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v1, v15, v12}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/y0$c;->j:I

    if-ne v1, v4, :cond_3

    .line 12
    iget-object v12, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v13, v8, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    iget-object v14, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 14
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/exoplayer2/y0;->k(Lcom/google/android/exoplayer2/y0$c;Lcom/google/android/exoplayer2/y0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v11

    .line 15
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v1, v0, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iget-object v0, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/v$a;->d:J

    goto :goto_0

    .line 20
    :cond_2
    iget-wide v0, v8, Lcom/google/android/exoplayer2/j0;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lcom/google/android/exoplayer2/j0;->c:J

    :goto_0
    move-wide v6, v3

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v5

    move-wide v4, v6

    move-wide v6, v9

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v6

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->w(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/v$a;

    move-result-object v1

    move-wide v2, v9

    move-wide v4, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->j(Lcom/google/android/exoplayer2/source/v$a;JJ)Lcom/google/android/exoplayer2/i0;

    move-result-object v0

    return-object v0

    .line 23
    :cond_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    .line 24
    iget-object v4, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v6, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 26
    iget v4, v0, Lcom/google/android/exoplayer2/source/v$a;->b:I

    .line 27
    iget-object v5, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/y0$b;->a(I)I

    move-result v5

    if-ne v5, v7, :cond_5

    return-object v11

    .line 28
    :cond_5
    iget-object v6, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget v7, v0, Lcom/google/android/exoplayer2/source/v$a;->c:I

    .line 29
    invoke-virtual {v6, v4, v7}, Lcom/google/android/exoplayer2/y0$b;->j(II)I

    move-result v6

    if-ge v6, v5, :cond_7

    .line 30
    iget-object v2, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/y0$b;->n(II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/i0;->c:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/v$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/j0;->k(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/i0;

    move-result-object v11

    :goto_2
    return-object v11

    .line 32
    :cond_7
    iget-wide v4, v1, Lcom/google/android/exoplayer2/i0;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    .line 33
    iget-object v12, v8, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v13, v8, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    iget-object v14, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget v15, v14, Lcom/google/android/exoplayer2/y0$b;->c:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 35
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/exoplayer2/y0;->k(Lcom/google/android/exoplayer2/y0$c;Lcom/google/android/exoplayer2/y0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v11

    .line 36
    :cond_8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_3

    :cond_9
    move-wide v2, v4

    .line 37
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/v$a;->d:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->l(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/i0;

    move-result-object v0

    return-object v0

    .line 38
    :cond_a
    iget-object v2, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/i0;->d:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/y0$b;->e(J)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 39
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/i0;->e:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/v$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->l(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/i0;

    move-result-object v0

    return-object v0

    .line 40
    :cond_b
    iget-object v3, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/y0$b;->i(I)I

    move-result v3

    .line 41
    iget-object v4, v8, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/y0$b;->n(II)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/i0;->e:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/v$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/j0;->k(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/i0;

    move-result-object v11

    :goto_4
    return-object v11
.end method

.method private j(Lcom/google/android/exoplayer2/source/v$a;JJ)Lcom/google/android/exoplayer2/i0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p4, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget p5, p1, Lcom/google/android/exoplayer2/source/v$a;->b:I

    iget v0, p1, Lcom/google/android/exoplayer2/source/v$a;->c:I

    invoke-virtual {p4, p5, v0}, Lcom/google/android/exoplayer2/y0$b;->n(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/exoplayer2/source/v$a;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/v$a;->c:I

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/j0;->k(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/i0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->l(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/i0;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/i0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/google/android/exoplayer2/source/v$a;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/v$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v1

    iget v2, v7, Lcom/google/android/exoplayer2/source/v$a;->b:I

    iget v3, v7, Lcom/google/android/exoplayer2/source/v$a;->c:I

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/y0$b;->b(II)J

    move-result-wide v9

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    move/from16 v2, p2

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/y0$b;->i(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y0$b;->g()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    .line 8
    new-instance v13, Lcom/google/android/exoplayer2/i0;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/i0;-><init>(Lcom/google/android/exoplayer2/source/v$a;JJJJZZ)V

    return-object v13
.end method

.method private l(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/i0;
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/y0$b;->d(J)I

    move-result v1

    .line 2
    new-instance v3, Lcom/google/android/exoplayer2/source/v$a;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Lcom/google/android/exoplayer2/source/v$a;-><init>(Ljava/lang/Object;JI)V

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/j0;->q(Lcom/google/android/exoplayer2/source/v$a;)Z

    move-result v12

    .line 4
    invoke-direct {p0, v3, v12}, Lcom/google/android/exoplayer2/j0;->r(Lcom/google/android/exoplayer2/source/v$a;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/y0$b;->f(I)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    cmp-long v1, v8, v6

    if-eqz v1, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v6, v8, v1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v10, v8

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/y0$b;->d:J

    move-wide v10, v1

    .line 8
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/i0;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/i0;-><init>(Lcom/google/android/exoplayer2/source/v$a;JJJJZZ)V

    return-object v1
.end method

.method private q(Lcom/google/android/exoplayer2/source/v$a;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/source/v$a;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private r(Lcom/google/android/exoplayer2/source/v$a;Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v2

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/y0$b;->c:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/y0;->n(ILcom/google/android/exoplayer2/y0$c;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/y0$c;->h:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/j0;->b:Lcom/google/android/exoplayer2/y0$c;

    iget v5, p0, Lcom/google/android/exoplayer2/j0;->e:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/j0;->f:Z

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/y0;->r(ILcom/google/android/exoplayer2/y0$b;Lcom/google/android/exoplayer2/y0$c;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private w(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/v$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/y0$b;->e(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/y0$b;->d(J)I

    move-result p2

    .line 4
    new-instance p3, Lcom/google/android/exoplayer2/source/v$a;

    invoke-direct {p3, p1, p4, p5, p2}, Lcom/google/android/exoplayer2/source/v$a;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/y0$b;->i(I)I

    move-result v4

    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/source/v$a;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/v$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method private x(Ljava/lang/Object;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/y0$b;->c:I

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->k:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v4, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/y0$b;->c:I

    if-ne v1, v0, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j0;->l:J

    return-wide v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v1, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p1, v1, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    :goto_1
    if-eqz v1, :cond_4

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v4, v1, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/y0;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v5, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/y0;->f(ILcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/y0$b;->c:I

    if-ne v3, v0, :cond_3

    .line 13
    iget-object p1, v1, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    return-wide v0

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j0;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/j0;->c:J

    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    if-nez v2, :cond_5

    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0;->k:Ljava/lang/Object;

    .line 18
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j0;->l:J

    :cond_5
    return-wide v0
.end method


# virtual methods
.method public B(JJ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j0;->p(Lcom/google/android/exoplayer2/i0;)Lcom/google/android/exoplayer2/i0;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/j0;->h(Lcom/google/android/exoplayer2/h0;J)Lcom/google/android/exoplayer2/i0;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j0;->u(Lcom/google/android/exoplayer2/h0;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 6
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/j0;->d(Lcom/google/android/exoplayer2/i0;Lcom/google/android/exoplayer2/i0;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j0;->u(Lcom/google/android/exoplayer2/h0;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    move-object v1, v4

    .line 8
    :goto_1
    iget-wide v4, v3, Lcom/google/android/exoplayer2/i0;->c:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/i0;->a(J)Lcom/google/android/exoplayer2/i0;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    .line 9
    iget-wide v3, v3, Lcom/google/android/exoplayer2/i0;->e:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/i0;->e:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/j0;->c(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 10
    iget-wide p1, v1, Lcom/google/android/exoplayer2/i0;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v3

    if-nez v1, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/h0;->z(J)J

    move-result-wide p1

    .line 12
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, p3, v4

    if-eqz v1, :cond_4

    cmp-long v1, p3, p1

    if-ltz v1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 13
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j0;->u(Lcom/google/android/exoplayer2/h0;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 14
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public C(I)Z
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/j0;->e:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/j0;->A()Z

    move-result p1

    return p1
.end method

.method public D(Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/j0;->f:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/j0;->A()Z

    move-result p1

    return p1
.end method

.method public a()Lcom/google/android/exoplayer2/h0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->t()V

    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/j0;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/j0;->j:I

    if-nez v0, :cond_2

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    iget-object v1, v0, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/j0;->k:Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/v$a;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/j0;->l:J

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    return-object v0
.end method

.method public e(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, v0, Lcom/google/android/exoplayer2/h0;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0;->k:Ljava/lang/Object;

    .line 3
    iget-object p1, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/v$a;->d:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/j0;->l:J

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j0;->u(Lcom/google/android/exoplayer2/h0;)Z

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->t()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/j0;->k:Ljava/lang/Object;

    .line 7
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/j0;->j:I

    return-void
.end method

.method public f([Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/i0;Lcom/google/android/exoplayer2/trackselection/i;)Lcom/google/android/exoplayer2/h0;
    .locals 11

    move-object v0, p0

    move-object/from16 v8, p5

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v8, Lcom/google/android/exoplayer2/i0;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/h0;->l()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    iget-object v3, v3, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/i0;->e:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/google/android/exoplayer2/i0;->b:J

    sub-long/2addr v1, v3

    :goto_0
    move-wide v3, v1

    .line 4
    new-instance v10, Lcom/google/android/exoplayer2/h0;

    move-object v1, v10

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/h0;-><init>([Lcom/google/android/exoplayer2/t0;JLcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/i0;Lcom/google/android/exoplayer2/trackselection/i;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/h0;->w(Lcom/google/android/exoplayer2/h0;)V

    goto :goto_1

    .line 7
    :cond_2
    iput-object v10, v0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    .line 8
    iput-object v10, v0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    :goto_1
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/android/exoplayer2/j0;->k:Ljava/lang/Object;

    .line 10
    iput-object v10, v0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    .line 11
    iget v1, v0, Lcom/google/android/exoplayer2/j0;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/j0;->j:I

    return-object v10
.end method

.method public i()Lcom/google/android/exoplayer2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    return-object v0
.end method

.method public m(JLcom/google/android/exoplayer2/k0;)Lcom/google/android/exoplayer2/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/j0;->g(Lcom/google/android/exoplayer2/k0;)Lcom/google/android/exoplayer2/i0;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/j0;->h(Lcom/google/android/exoplayer2/h0;J)Lcom/google/android/exoplayer2/i0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public n()Lcom/google/android/exoplayer2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    return-object v0
.end method

.method public o()Lcom/google/android/exoplayer2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    return-object v0
.end method

.method public p(Lcom/google/android/exoplayer2/i0;)Lcom/google/android/exoplayer2/i0;
    .locals 13

    .line 1
    iget-object v1, p1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/j0;->q(Lcom/google/android/exoplayer2/source/v$a;)Z

    move-result v10

    .line 3
    invoke-direct {p0, v1, v10}, Lcom/google/android/exoplayer2/j0;->r(Lcom/google/android/exoplayer2/source/v$a;Z)Z

    move-result v11

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    iget-object v2, p1, Lcom/google/android/exoplayer2/i0;->a:Lcom/google/android/exoplayer2/source/v$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/v$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/y0;->h(Ljava/lang/Object;Lcom/google/android/exoplayer2/y0$b;)Lcom/google/android/exoplayer2/y0$b;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    iget v2, v1, Lcom/google/android/exoplayer2/source/v$a;->b:I

    iget v3, v1, Lcom/google/android/exoplayer2/source/v$a;->c:I

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/y0$b;->b(II)J

    move-result-wide v2

    :cond_0
    :goto_0
    move-wide v8, v2

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lcom/google/android/exoplayer2/i0;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->a:Lcom/google/android/exoplayer2/y0$b;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y0$b;->h()J

    move-result-wide v2

    goto :goto_0

    .line 8
    :goto_1
    new-instance v12, Lcom/google/android/exoplayer2/i0;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/i0;->b:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/i0;->c:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/i0;->d:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/i0;-><init>(Lcom/google/android/exoplayer2/source/v$a;JJJJZZ)V

    return-object v12
.end method

.method public s(Lcom/google/android/exoplayer2/source/u;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/h0;->a:Lcom/google/android/exoplayer2/source/u;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/h0;->s(J)V

    :cond_0
    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/h0;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h0;->j()Lcom/google/android/exoplayer2/h0;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    if-ne p1, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->g:Lcom/google/android/exoplayer2/h0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/j0;->h:Lcom/google/android/exoplayer2/h0;

    const/4 v0, 0x1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h0;->t()V

    .line 8
    iget v2, p0, Lcom/google/android/exoplayer2/j0;->j:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/j0;->j:I

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/h0;->w(Lcom/google/android/exoplayer2/h0;)V

    return v0
.end method

.method public v(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/v$a;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/j0;->x(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/j0;->w(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/v$a;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/google/android/exoplayer2/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0;->d:Lcom/google/android/exoplayer2/y0;

    return-void
.end method

.method public z()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/i0;->g:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/j0;->i:Lcom/google/android/exoplayer2/h0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/h0;->f:Lcom/google/android/exoplayer2/i0;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/i0;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/j0;->j:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
