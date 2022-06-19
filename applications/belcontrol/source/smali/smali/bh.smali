.class public final Lbh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lph$b;

.field public final b:Lph$c;

.field public c:J

.field public d:Lph;

.field public e:I

.field public f:Z

.field public g:Lzg;

.field public h:Lzg;

.field public i:Lzg;

.field public j:I

.field public k:Ljava/lang/Object;

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lph$b;

    invoke-direct {v0}, Lph$b;-><init>()V

    iput-object v0, p0, Lbh;->a:Lph$b;

    new-instance v0, Lph$c;

    invoke-direct {v0}, Lph$c;-><init>()V

    iput-object v0, p0, Lbh;->b:Lph$c;

    sget-object v0, Lph;->a:Lph;

    iput-object v0, p0, Lbh;->d:Lph;

    return-void
.end method


# virtual methods
.method public A(Lph;)V
    .locals 0

    iput-object p1, p0, Lbh;->d:Lph;

    return-void
.end method

.method public B()Z
    .locals 5

    iget-object v0, p0, Lbh;->i:Lzg;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lzg;->f:Lah;

    iget-boolean v1, v1, Lah;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lzg;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbh;->i:Lzg;

    iget-object v0, v0, Lzg;->f:Lah;

    iget-wide v0, v0, Lah;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lbh;->j:I

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

.method public final C()Z
    .locals 8

    invoke-virtual {p0}, Lbh;->i()Lzg;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lbh;->d:Lph;

    iget-object v3, v0, Lzg;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lph;->b(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v2, p0, Lbh;->d:Lph;

    iget-object v4, p0, Lbh;->a:Lph$b;

    iget-object v5, p0, Lbh;->b:Lph$c;

    iget v6, p0, Lbh;->e:I

    iget-boolean v7, p0, Lbh;->f:Z

    invoke-virtual/range {v2 .. v7}, Lph;->d(ILph$b;Lph$c;IZ)I

    move-result v3

    :goto_1
    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lzg;->f:Lah;

    iget-boolean v2, v2, Lah;->f:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lbh;->d:Lph;

    iget-object v5, v2, Lzg;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lph;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lbh;->w(Lzg;)Z

    move-result v2

    iget-object v3, v0, Lzg;->f:Lah;

    invoke-virtual {p0, v3}, Lbh;->q(Lah;)Lah;

    move-result-object v3

    iput-object v3, v0, Lzg;->f:Lah;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lbh;->r()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    return v1
.end method

.method public D(JJ)Z
    .locals 8

    invoke-virtual {p0}, Lbh;->i()Lzg;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget-object v3, v0, Lzg;->f:Lah;

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lbh;->q(Lah;)Lah;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lbh;->h(Lzg;J)Lah;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Lbh;->w(Lzg;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    invoke-virtual {p0, v3, v4}, Lbh;->d(Lah;Lah;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v1}, Lbh;->w(Lzg;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    move-object v1, v4

    :goto_1
    iget-wide v4, v3, Lah;->c:J

    invoke-virtual {v1, v4, v5}, Lah;->a(J)Lah;

    move-result-object v4

    iput-object v4, v0, Lzg;->f:Lah;

    iget-wide v3, v3, Lah;->e:J

    iget-wide v5, v1, Lah;->e:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lbh;->c(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    iget-wide p1, v1, Lah;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v3

    if-nez v1, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, p2}, Lzg;->y(J)J

    move-result-wide p1

    :goto_2
    iget-object v1, p0, Lbh;->h:Lzg;

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

    :goto_3
    invoke-virtual {p0, v0}, Lbh;->w(Lzg;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    :cond_7
    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public E(I)Z
    .locals 0

    iput p1, p0, Lbh;->e:I

    invoke-virtual {p0}, Lbh;->C()Z

    move-result p1

    return p1
.end method

.method public F(Z)Z
    .locals 0

    iput-boolean p1, p0, Lbh;->f:Z

    invoke-virtual {p0}, Lbh;->C()Z

    move-result p1

    return p1
.end method

.method public a()Lzg;
    .locals 2

    iget-object v0, p0, Lbh;->g:Lzg;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbh;->h:Lzg;

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    iput-object v0, p0, Lbh;->h:Lzg;

    :cond_0
    iget-object v0, p0, Lbh;->g:Lzg;

    invoke-virtual {v0}, Lzg;->t()V

    iget v0, p0, Lbh;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbh;->j:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lbh;->i:Lzg;

    iget-object v0, p0, Lbh;->g:Lzg;

    iget-object v1, v0, Lzg;->b:Ljava/lang/Object;

    iput-object v1, p0, Lbh;->k:Ljava/lang/Object;

    iget-object v0, v0, Lzg;->f:Lah;

    iget-object v0, v0, Lah;->a:Lhp$a;

    iget-wide v0, v0, Lhp$a;->d:J

    iput-wide v0, p0, Lbh;->l:J

    :cond_1
    iget-object v0, p0, Lbh;->g:Lzg;

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    iput-object v0, p0, Lbh;->g:Lzg;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbh;->i:Lzg;

    iput-object v0, p0, Lbh;->g:Lzg;

    iput-object v0, p0, Lbh;->h:Lzg;

    :goto_0
    iget-object v0, p0, Lbh;->g:Lzg;

    return-object v0
.end method

.method public b()Lzg;
    .locals 1

    iget-object v0, p0, Lbh;->h:Lzg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p0, Lbh;->h:Lzg;

    invoke-virtual {v0}, Lzg;->j()Lzg;

    move-result-object v0

    iput-object v0, p0, Lbh;->h:Lzg;

    return-object v0
.end method

.method public final c(JJ)Z
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

.method public final d(Lah;Lah;)Z
    .locals 5

    iget-wide v0, p1, Lah;->b:J

    iget-wide v2, p2, Lah;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lah;->a:Lhp$a;

    iget-object p2, p2, Lah;->a:Lhp$a;

    invoke-virtual {p1, p2}, Lhp$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Z)V
    .locals 4

    invoke-virtual {p0}, Lbh;->i()Lzg;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lzg;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lbh;->k:Ljava/lang/Object;

    iget-object p1, v0, Lzg;->f:Lah;

    iget-object p1, p1, Lah;->a:Lhp$a;

    iget-wide v2, p1, Lhp$a;->d:J

    iput-wide v2, p0, Lbh;->l:J

    invoke-virtual {v0}, Lzg;->t()V

    invoke-virtual {p0, v0}, Lbh;->w(Lzg;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iput-object v1, p0, Lbh;->k:Ljava/lang/Object;

    :cond_2
    :goto_1
    iput-object v1, p0, Lbh;->g:Lzg;

    iput-object v1, p0, Lbh;->i:Lzg;

    iput-object v1, p0, Lbh;->h:Lzg;

    const/4 p1, 0x0

    iput p1, p0, Lbh;->j:I

    return-void
.end method

.method public f([Lkh;Lbs;Les;Lhp;Lah;)Lfp;
    .locals 10

    iget-object v0, p0, Lbh;->i:Lzg;

    if-nez v0, :cond_0

    iget-wide v0, p5, Lah;->b:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lzg;->l()J

    move-result-wide v0

    iget-object v2, p0, Lbh;->i:Lzg;

    iget-object v2, v2, Lzg;->f:Lah;

    iget-wide v2, v2, Lah;->e:J

    add-long/2addr v0, v2

    :goto_0
    move-wide v4, v0

    new-instance v0, Lzg;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lzg;-><init>([Lkh;JLbs;Les;Lhp;Lah;)V

    iget-object p1, p0, Lbh;->i:Lzg;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lbh;->r()Z

    move-result p1

    invoke-static {p1}, Lit;->f(Z)V

    iget-object p1, p0, Lbh;->i:Lzg;

    invoke-virtual {p1, v0}, Lzg;->w(Lzg;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lbh;->k:Ljava/lang/Object;

    iput-object v0, p0, Lbh;->i:Lzg;

    iget p1, p0, Lbh;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lbh;->j:I

    iget-object p1, v0, Lzg;->a:Lfp;

    return-object p1
.end method

.method public final g(Ldh;)Lah;
    .locals 6

    iget-object v1, p1, Ldh;->c:Lhp$a;

    iget-wide v2, p1, Ldh;->e:J

    iget-wide v4, p1, Ldh;->d:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbh;->k(Lhp$a;JJ)Lah;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lzg;J)Lah;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-object v1, v0, Lzg;->f:Lah;

    invoke-virtual/range {p1 .. p1}, Lzg;->l()J

    move-result-wide v2

    iget-wide v4, v1, Lah;->e:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    iget-boolean v4, v1, Lah;->f:Z

    const/4 v5, 0x1

    const/4 v6, -0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    iget-object v4, v8, Lbh;->d:Lph;

    iget-object v11, v1, Lah;->a:Lhp$a;

    iget-object v11, v11, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v11}, Lph;->b(Ljava/lang/Object;)I

    move-result v13

    iget-object v12, v8, Lbh;->d:Lph;

    iget-object v14, v8, Lbh;->a:Lph$b;

    iget-object v15, v8, Lbh;->b:Lph$c;

    iget v4, v8, Lbh;->e:I

    iget-boolean v11, v8, Lbh;->f:Z

    move/from16 v16, v4

    move/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lph;->d(ILph$b;Lph$c;IZ)I

    move-result v4

    if-ne v4, v6, :cond_0

    return-object v7

    :cond_0
    iget-object v6, v8, Lbh;->d:Lph;

    iget-object v11, v8, Lbh;->a:Lph$b;

    invoke-virtual {v6, v4, v11, v5}, Lph;->g(ILph$b;Z)Lph$b;

    move-result-object v5

    iget v14, v5, Lph$b;->c:I

    iget-object v5, v8, Lbh;->a:Lph$b;

    iget-object v5, v5, Lph$b;->b:Ljava/lang/Object;

    iget-object v1, v1, Lah;->a:Lhp$a;

    iget-wide v11, v1, Lhp$a;->d:J

    iget-object v1, v8, Lbh;->d:Lph;

    iget-object v6, v8, Lbh;->b:Lph$c;

    invoke-virtual {v1, v14, v6}, Lph;->m(ILph$c;)Lph$c;

    move-result-object v1

    iget v1, v1, Lph$c;->f:I

    if-ne v1, v4, :cond_3

    iget-object v11, v8, Lbh;->d:Lph;

    iget-object v12, v8, Lbh;->b:Lph$c;

    iget-object v13, v8, Lbh;->a:Lph$b;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-virtual/range {v11 .. v18}, Lph;->k(Lph$c;Lph$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v7

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lzg;->j()Lzg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lzg;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lzg;->f:Lah;

    iget-object v0, v0, Lah;->a:Lhp$a;

    iget-wide v0, v0, Lhp$a;->d:J

    goto :goto_0

    :cond_2
    iget-wide v0, v8, Lbh;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lbh;->c:J

    :goto_0
    move-wide v9, v3

    move-wide v4, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v5

    move-wide v4, v11

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v9

    invoke-virtual/range {v0 .. v5}, Lbh;->y(Ljava/lang/Object;JJ)Lhp$a;

    move-result-object v1

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lbh;->k(Lhp$a;JJ)Lah;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, v1, Lah;->a:Lhp$a;

    iget-object v4, v8, Lbh;->d:Lph;

    iget-object v11, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-object v12, v8, Lbh;->a:Lph$b;

    invoke-virtual {v4, v11, v12}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    invoke-virtual {v0}, Lhp$a;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v0, Lhp$a;->b:I

    iget-object v11, v8, Lbh;->a:Lph$b;

    invoke-virtual {v11, v4}, Lph$b;->a(I)I

    move-result v11

    if-ne v11, v6, :cond_5

    return-object v7

    :cond_5
    iget-object v6, v8, Lbh;->a:Lph$b;

    iget v12, v0, Lhp$a;->c:I

    invoke-virtual {v6, v4, v12}, Lph$b;->j(II)I

    move-result v6

    if-ge v6, v11, :cond_7

    iget-object v2, v8, Lbh;->a:Lph$b;

    invoke-virtual {v2, v4, v6}, Lph$b;->m(II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-wide v9, v1, Lah;->c:J

    iget-wide v11, v0, Lhp$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    invoke-virtual/range {v0 .. v7}, Lbh;->l(Ljava/lang/Object;IIJJ)Lah;

    move-result-object v7

    :goto_2
    return-object v7

    :cond_7
    iget-wide v11, v1, Lah;->c:J

    iget-object v1, v8, Lbh;->a:Lph$b;

    invoke-virtual {v1}, Lph$b;->c()I

    move-result v1

    if-ne v1, v5, :cond_9

    iget-object v1, v8, Lbh;->a:Lph$b;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lph$b;->f(I)J

    move-result-wide v4

    cmp-long v1, v4, v9

    if-nez v1, :cond_9

    iget-object v13, v8, Lbh;->d:Lph;

    iget-object v14, v8, Lbh;->b:Lph$c;

    iget-object v15, v8, Lbh;->a:Lph$b;

    iget v1, v15, Lph$b;->c:I

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    move/from16 v16, v1

    invoke-virtual/range {v13 .. v20}, Lph;->k(Lph$c;Lph$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v7

    :cond_8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_3

    :cond_9
    move-wide v2, v11

    :goto_3
    iget-object v1, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lhp$a;->d:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lbh;->m(Ljava/lang/Object;JJ)Lah;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v2, v8, Lbh;->a:Lph$b;

    iget-wide v3, v1, Lah;->d:J

    invoke-virtual {v2, v3, v4}, Lph$b;->e(J)I

    move-result v2

    if-ne v2, v6, :cond_b

    iget-object v2, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lah;->e:J

    iget-wide v5, v0, Lhp$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lbh;->m(Ljava/lang/Object;JJ)Lah;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v3, v8, Lbh;->a:Lph$b;

    invoke-virtual {v3, v2}, Lph$b;->i(I)I

    move-result v3

    iget-object v4, v8, Lbh;->a:Lph$b;

    invoke-virtual {v4, v2, v3}, Lph$b;->m(II)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    iget-object v4, v0, Lhp$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lah;->e:J

    iget-wide v9, v0, Lhp$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Lbh;->l(Ljava/lang/Object;IIJJ)Lah;

    move-result-object v7

    :goto_4
    return-object v7
.end method

.method public i()Lzg;
    .locals 1

    invoke-virtual {p0}, Lbh;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbh;->g:Lzg;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbh;->i:Lzg;

    :goto_0
    return-object v0
.end method

.method public j()Lzg;
    .locals 1

    iget-object v0, p0, Lbh;->i:Lzg;

    return-object v0
.end method

.method public final k(Lhp$a;JJ)Lah;
    .locals 8

    iget-object v0, p0, Lbh;->d:Lph;

    iget-object v1, p1, Lhp$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0, v1, v2}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    invoke-virtual {p1}, Lhp$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p4, p0, Lbh;->a:Lph$b;

    iget p5, p1, Lhp$a;->b:I

    iget v0, p1, Lhp$a;->c:I

    invoke-virtual {p4, p5, v0}, Lph$b;->m(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p1, Lhp$a;->a:Ljava/lang/Object;

    iget v2, p1, Lhp$a;->b:I

    iget v3, p1, Lhp$a;->c:I

    iget-wide v6, p1, Lhp$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lbh;->l(Ljava/lang/Object;IIJJ)Lah;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p1, Lhp$a;->a:Ljava/lang/Object;

    iget-wide v4, p1, Lhp$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-virtual/range {v0 .. v5}, Lbh;->m(Ljava/lang/Object;JJ)Lah;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;IIJJ)Lah;
    .locals 16

    move-object/from16 v0, p0

    new-instance v7, Lhp$a;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lhp$a;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v0, Lbh;->d:Lph;

    iget-object v2, v7, Lhp$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Lbh;->a:Lph$b;

    invoke-virtual {v1, v2, v3}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    move-result-object v1

    iget v2, v7, Lhp$a;->b:I

    iget v3, v7, Lhp$a;->c:I

    invoke-virtual {v1, v2, v3}, Lph$b;->b(II)J

    move-result-wide v9

    iget-object v1, v0, Lbh;->a:Lph$b;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lph$b;->i(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lbh;->a:Lph$b;

    invoke-virtual {v1}, Lph$b;->g()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    new-instance v13, Lah;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lah;-><init>(Lhp$a;JJJJZZ)V

    return-object v13
.end method

.method public final m(Ljava/lang/Object;JJ)Lah;
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lbh;->a:Lph$b;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Lph$b;->d(J)I

    move-result v1

    new-instance v3, Lhp$a;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Lhp$a;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v3}, Lbh;->s(Lhp$a;)Z

    move-result v12

    invoke-virtual {p0, v3, v12}, Lbh;->t(Lhp$a;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lbh;->a:Lph$b;

    invoke-virtual {v2, v1}, Lph$b;->f(I)J

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

    :cond_2
    :goto_1
    iget-object v1, v0, Lbh;->a:Lph$b;

    iget-wide v1, v1, Lph$b;->d:J

    move-wide v10, v1

    :goto_2
    new-instance v1, Lah;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lah;-><init>(Lhp$a;JJJJZZ)V

    return-object v1
.end method

.method public n(JLdh;)Lah;
    .locals 1

    iget-object v0, p0, Lbh;->i:Lzg;

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lbh;->g(Ldh;)Lah;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lbh;->h(Lzg;J)Lah;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public o()Lzg;
    .locals 1

    iget-object v0, p0, Lbh;->g:Lzg;

    return-object v0
.end method

.method public p()Lzg;
    .locals 1

    iget-object v0, p0, Lbh;->h:Lzg;

    return-object v0
.end method

.method public q(Lah;)Lah;
    .locals 13

    iget-object v1, p1, Lah;->a:Lhp$a;

    invoke-virtual {p0, v1}, Lbh;->s(Lhp$a;)Z

    move-result v10

    invoke-virtual {p0, v1, v10}, Lbh;->t(Lhp$a;Z)Z

    move-result v11

    iget-object v0, p0, Lbh;->d:Lph;

    iget-object v2, p1, Lah;->a:Lhp$a;

    iget-object v2, v2, Lhp$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0, v2, v3}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    invoke-virtual {v1}, Lhp$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbh;->a:Lph$b;

    iget v2, v1, Lhp$a;->b:I

    iget v3, v1, Lhp$a;->c:I

    invoke-virtual {v0, v2, v3}, Lph$b;->b(II)J

    move-result-wide v2

    :cond_0
    :goto_0
    move-wide v8, v2

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lah;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0}, Lph$b;->h()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    new-instance v12, Lah;

    iget-wide v2, p1, Lah;->b:J

    iget-wide v4, p1, Lah;->c:J

    iget-wide v6, p1, Lah;->d:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lah;-><init>(Lhp$a;JJJJZZ)V

    return-object v12
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lbh;->g:Lzg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s(Lhp$a;)Z
    .locals 1

    invoke-virtual {p1}, Lhp$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lhp$a;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final t(Lhp$a;Z)Z
    .locals 7

    iget-object v0, p0, Lbh;->d:Lph;

    iget-object p1, p1, Lhp$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lph;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object p1, p0, Lbh;->d:Lph;

    iget-object v0, p0, Lbh;->a:Lph$b;

    invoke-virtual {p1, v2, v0}, Lph;->f(ILph$b;)Lph$b;

    move-result-object p1

    iget p1, p1, Lph$b;->c:I

    iget-object v0, p0, Lbh;->d:Lph;

    iget-object v1, p0, Lbh;->b:Lph$c;

    invoke-virtual {v0, p1, v1}, Lph;->m(ILph$c;)Lph$c;

    move-result-object p1

    iget-boolean p1, p1, Lph$c;->e:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lbh;->d:Lph;

    iget-object v3, p0, Lbh;->a:Lph$b;

    iget-object v4, p0, Lbh;->b:Lph$c;

    iget v5, p0, Lbh;->e:I

    iget-boolean v6, p0, Lbh;->f:Z

    invoke-virtual/range {v1 .. v6}, Lph;->r(ILph$b;Lph$c;IZ)Z

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

.method public u(Lfp;)Z
    .locals 1

    iget-object v0, p0, Lbh;->i:Lzg;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzg;->a:Lfp;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(J)V
    .locals 1

    iget-object v0, p0, Lbh;->i:Lzg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lzg;->s(J)V

    :cond_0
    return-void
.end method

.method public w(Lzg;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lit;->f(Z)V

    iput-object p1, p0, Lbh;->i:Lzg;

    :goto_1
    invoke-virtual {p1}, Lzg;->j()Lzg;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lzg;->j()Lzg;

    move-result-object p1

    iget-object v2, p0, Lbh;->h:Lzg;

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lbh;->g:Lzg;

    iput-object v0, p0, Lbh;->h:Lzg;

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Lzg;->t()V

    iget v2, p0, Lbh;->j:I

    sub-int/2addr v2, v1

    iput v2, p0, Lbh;->j:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lbh;->i:Lzg;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lzg;->w(Lzg;)V

    return v0
.end method

.method public x(Ljava/lang/Object;J)Lhp$a;
    .locals 6

    invoke-virtual {p0, p1}, Lbh;->z(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lbh;->y(Ljava/lang/Object;JJ)Lhp$a;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/lang/Object;JJ)Lhp$a;
    .locals 7

    iget-object v0, p0, Lbh;->d:Lph;

    iget-object v1, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0, p1, v1}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    iget-object v0, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0, p2, p3}, Lph$b;->e(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0, p2, p3}, Lph$b;->d(J)I

    move-result p2

    new-instance p3, Lhp$a;

    invoke-direct {p3, p1, p4, p5, p2}, Lhp$a;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    :cond_0
    iget-object p2, p0, Lbh;->a:Lph$b;

    invoke-virtual {p2, v3}, Lph$b;->i(I)I

    move-result v4

    new-instance p2, Lhp$a;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lhp$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method public final z(Ljava/lang/Object;)J
    .locals 5

    iget-object v0, p0, Lbh;->d:Lph;

    iget-object v1, p0, Lbh;->a:Lph$b;

    invoke-virtual {v0, p1, v1}, Lph;->h(Ljava/lang/Object;Lph$b;)Lph$b;

    move-result-object v0

    iget v0, v0, Lph$b;->c:I

    iget-object v1, p0, Lbh;->k:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lbh;->d:Lph;

    invoke-virtual {v3, v1}, Lph;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lbh;->d:Lph;

    iget-object v4, p0, Lbh;->a:Lph$b;

    invoke-virtual {v3, v1, v4}, Lph;->f(ILph$b;)Lph$b;

    move-result-object v1

    iget v1, v1, Lph$b;->c:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lbh;->l:J

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lbh;->i()Lzg;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lzg;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v1, Lzg;->f:Lah;

    iget-object p1, p1, Lah;->a:Lhp$a;

    iget-wide v0, p1, Lhp$a;->d:J

    return-wide v0

    :cond_1
    invoke-virtual {v1}, Lzg;->j()Lzg;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lbh;->i()Lzg;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Lbh;->d:Lph;

    iget-object v3, p1, Lzg;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lph;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v3, p0, Lbh;->d:Lph;

    iget-object v4, p0, Lbh;->a:Lph$b;

    invoke-virtual {v3, v1, v4}, Lph;->f(ILph$b;)Lph$b;

    move-result-object v1

    iget v1, v1, Lph$b;->c:I

    if-ne v1, v0, :cond_3

    iget-object p1, p1, Lzg;->f:Lah;

    iget-object p1, p1, Lah;->a:Lhp$a;

    iget-wide v0, p1, Lhp$a;->d:J

    return-wide v0

    :cond_3
    invoke-virtual {p1}, Lzg;->j()Lzg;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lbh;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lbh;->c:J

    return-wide v0
.end method
