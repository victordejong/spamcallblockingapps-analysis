.class abstract Lcom/google/android/exoplayer2/c1/c0/i;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c1/c0/i$c;,
        Lcom/google/android/exoplayer2/c1/c0/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/c1/c0/e;

.field private b:Lcom/google/android/exoplayer2/c1/v;

.field private c:Lcom/google/android/exoplayer2/c1/j;

.field private d:Lcom/google/android/exoplayer2/c1/c0/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lcom/google/android/exoplayer2/c1/c0/i$b;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c1/c0/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/c1/i;)I
    .locals 17

    move-object/from16 v11, p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1
    iget-object v1, v11, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/c1/c0/e;->d(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    .line 2
    iput v0, v11, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/exoplayer2/c1/c0/i;->f:J

    sub-long/2addr v3, v5

    iput-wide v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->k:J

    .line 4
    iget-object v1, v11, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c1/c0/e;->c()Lcom/google/android/exoplayer2/util/v;

    move-result-object v1

    iget-wide v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->f:J

    iget-object v5, v11, Lcom/google/android/exoplayer2/c1/c0/i;->j:Lcom/google/android/exoplayer2/c1/c0/i$b;

    invoke-virtual {v11, v1, v3, v4, v5}, Lcom/google/android/exoplayer2/c1/c0/i;->h(Lcom/google/android/exoplayer2/util/v;JLcom/google/android/exoplayer2/c1/c0/i$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v3

    iput-wide v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->f:J

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    .line 6
    iget-object v1, v11, Lcom/google/android/exoplayer2/c1/c0/i;->j:Lcom/google/android/exoplayer2/c1/c0/i$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c1/c0/i$b;->a:Lcom/google/android/exoplayer2/Format;

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->z:I

    iput v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->i:I

    .line 7
    iget-boolean v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->m:Z

    if-nez v3, :cond_3

    .line 8
    iget-object v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->b:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 9
    iput-boolean v0, v11, Lcom/google/android/exoplayer2/c1/c0/i;->m:Z

    .line 10
    :cond_3
    iget-object v1, v11, Lcom/google/android/exoplayer2/c1/c0/i;->j:Lcom/google/android/exoplayer2/c1/c0/i$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c1/c0/i$b;->b:Lcom/google/android/exoplayer2/c1/c0/g;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    .line 11
    iput-object v1, v11, Lcom/google/android/exoplayer2/c1/c0/i;->d:Lcom/google/android/exoplayer2/c1/c0/g;

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/c1/c0/i$c;

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer2/c1/c0/i$c;-><init>(Lcom/google/android/exoplayer2/c1/c0/i$a;)V

    iput-object v0, v11, Lcom/google/android/exoplayer2/c1/c0/i;->d:Lcom/google/android/exoplayer2/c1/c0/g;

    goto :goto_2

    .line 14
    :cond_5
    iget-object v1, v11, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c1/c0/e;->b()Lcom/google/android/exoplayer2/c1/c0/f;

    move-result-object v1

    .line 15
    iget v3, v1, Lcom/google/android/exoplayer2/c1/c0/f;->b:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    .line 16
    :goto_1
    new-instance v14, Lcom/google/android/exoplayer2/c1/c0/b;

    iget-wide v3, v11, Lcom/google/android/exoplayer2/c1/c0/i;->f:J

    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v5

    iget v0, v1, Lcom/google/android/exoplayer2/c1/c0/f;->h:I

    iget v2, v1, Lcom/google/android/exoplayer2/c1/c0/f;->i:I

    add-int/2addr v0, v2

    int-to-long v7, v0

    iget-wide v1, v1, Lcom/google/android/exoplayer2/c1/c0/f;->c:J

    move-object v0, v14

    move-wide v15, v1

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v15

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/c1/c0/b;-><init>(Lcom/google/android/exoplayer2/c1/c0/i;JJJJZ)V

    iput-object v14, v11, Lcom/google/android/exoplayer2/c1/c0/i;->d:Lcom/google/android/exoplayer2/c1/c0/g;

    .line 18
    :goto_2
    iput-object v13, v11, Lcom/google/android/exoplayer2/c1/c0/i;->j:Lcom/google/android/exoplayer2/c1/c0/i$b;

    const/4 v0, 0x2

    .line 19
    iput v0, v11, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    .line 20
    iget-object v0, v11, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/c0/e;->f()V

    return v12
.end method

.method private i(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/c1/c0/i;->d:Lcom/google/android/exoplayer2/c1/c0/g;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/c1/c0/g;->b(Lcom/google/android/exoplayer2/c1/i;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 2
    iput-wide v2, v7, Lcom/google/android/exoplayer2/c1/s;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/c1/c0/i;->d(J)V

    .line 4
    :cond_1
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/c1/c0/i;->l:Z

    if-nez v2, :cond_2

    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/c1/c0/i;->d:Lcom/google/android/exoplayer2/c1/c0/g;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/c1/c0/g;->a()Lcom/google/android/exoplayer2/c1/t;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lcom/google/android/exoplayer2/c1/c0/i;->c:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    .line 7
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/c1/c0/i;->l:Z

    .line 8
    :cond_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/c1/c0/i;->k:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/c1/c0/e;->d(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 9
    iput v1, v0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    const/4 v1, -0x1

    return v1

    .line 10
    :cond_4
    :goto_0
    iput-wide v5, v0, Lcom/google/android/exoplayer2/c1/c0/i;->k:J

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c1/c0/e;->c()Lcom/google/android/exoplayer2/util/v;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c1/c0/i;->e(Lcom/google/android/exoplayer2/util/v;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 13
    iget-wide v4, v0, Lcom/google/android/exoplayer2/c1/c0/i;->g:J

    add-long v9, v4, v2

    iget-wide v11, v0, Lcom/google/android/exoplayer2/c1/c0/i;->e:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    .line 14
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/c1/c0/i;->a(J)J

    move-result-wide v10

    .line 15
    iget-object v4, v0, Lcom/google/android/exoplayer2/c1/c0/i;->b:Lcom/google/android/exoplayer2/c1/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 16
    iget-object v9, v0, Lcom/google/android/exoplayer2/c1/c0/i;->b:Lcom/google/android/exoplayer2/c1/v;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    .line 17
    iput-wide v7, v0, Lcom/google/android/exoplayer2/c1/c0/i;->e:J

    .line 18
    :cond_5
    iget-wide v4, v0, Lcom/google/android/exoplayer2/c1/c0/i;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/c1/c0/i;->g:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected b(J)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method c(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->c:Lcom/google/android/exoplayer2/c1/j;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/c1/c0/i;->b:Lcom/google/android/exoplayer2/c1/v;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/c1/c0/i;->j(Z)V

    return-void
.end method

.method protected d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->g:J

    return-void
.end method

.method protected abstract e(Lcom/google/android/exoplayer2/util/v;)J
.end method

.method final f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/c1/c0/i;->i(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 5
    iput v2, p0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/c0/i;->g(Lcom/google/android/exoplayer2/c1/i;)I

    move-result p1

    return p1
.end method

.method protected abstract h(Lcom/google/android/exoplayer2/util/v;JLcom/google/android/exoplayer2/c1/c0/i$b;)Z
.end method

.method protected j(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/c1/c0/i$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/c0/i$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->j:Lcom/google/android/exoplayer2/c1/c0/i$b;

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->f:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c1/c0/i;->e:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->g:J

    return-void
.end method

.method final k(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/i;->a:Lcom/google/android/exoplayer2/c1/c0/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/c0/e;->e()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/c1/c0/i;->j(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/c1/c0/i;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->e:J

    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/c1/c0/i;->d:Lcom/google/android/exoplayer2/c1/c0/g;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/c1/c0/g;->c(J)V

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/c1/c0/i;->h:I

    :cond_1
    :goto_0
    return-void
.end method
