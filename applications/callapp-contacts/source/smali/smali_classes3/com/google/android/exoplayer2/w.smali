.class final Lcom/google/android/exoplayer2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Z

.field c:Lcom/google/android/exoplayer2/u;

.field d:Lcom/google/android/exoplayer2/u;

.field e:Lcom/google/android/exoplayer2/u;

.field f:I

.field g:Ljava/lang/Object;

.field private final h:Lcom/google/android/exoplayer2/al$a;

.field private final i:Lcom/google/android/exoplayer2/al$b;

.field private final j:Lcom/google/android/exoplayer2/a/a;

.field private final k:Landroid/os/Handler;

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a/a;Landroid/os/Handler;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/w;->j:Lcom/google/android/exoplayer2/a/a;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/w;->k:Landroid/os/Handler;

    .line 74
    new-instance p1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    .line 75
    new-instance p1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;)J
    .locals 6

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/w;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 481
    iget-object v4, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    .line 6955
    invoke-virtual {p1, v1, v4, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    .line 481
    iget v1, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    if-ne v1, v0, :cond_0

    .line 484
    iget-wide p1, p0, Lcom/google/android/exoplayer2/w;->m:J

    return-wide p1

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    :goto_0
    if-eqz v1, :cond_2

    .line 490
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    iget-object p1, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/r$a;->d:J

    return-wide p1

    .line 7343
    :cond_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_0

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    :goto_1
    if-eqz v1, :cond_4

    .line 498
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 500
    iget-object v5, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    .line 7955
    invoke-virtual {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v4

    .line 500
    iget v4, v4, Lcom/google/android/exoplayer2/al$a;->c:I

    if-ne v4, v0, :cond_3

    .line 503
    iget-object p1, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/r$a;->d:J

    return-wide p1

    .line 8343
    :cond_3
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_1

    .line 509
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/w;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/w;->l:J

    .line 510
    iget-object p1, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-nez p1, :cond_5

    .line 512
    iput-object p2, p0, Lcom/google/android/exoplayer2/w;->g:Ljava/lang/Object;

    .line 513
    iput-wide v0, p0, Lcom/google/android/exoplayer2/w;->m:J

    :cond_5
    return-wide v0
.end method

.method private static a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJLcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 6

    .line 456
    invoke-virtual {p0, p1, p6}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 457
    invoke-virtual {p6, p2, p3}, Lcom/google/android/exoplayer2/al$a;->a(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_0

    .line 459
    invoke-virtual {p6, p2, p3}, Lcom/google/android/exoplayer2/al$a;->b(J)I

    move-result p0

    .line 460
    new-instance p2, Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 462
    :cond_0
    invoke-virtual {p6, v2}, Lcom/google/android/exoplayer2/al$a;->b(I)I

    move-result v3

    .line 463
    new-instance p0, Lcom/google/android/exoplayer2/source/r$a;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/v;
    .locals 17

    move-object/from16 v0, p0

    .line 760
    new-instance v7, Lcom/google/android/exoplayer2/source/r$a;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 762
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    move-object/from16 v3, p1

    .line 764
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v2, v7, Lcom/google/android/exoplayer2/source/r$a;->b:I

    iget v3, v7, Lcom/google/android/exoplayer2/source/r$a;->c:I

    .line 765
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/al$a;->b(II)J

    move-result-wide v9

    .line 767
    iget-object v1, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/al$a;->b(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    .line 768
    iget-object v1, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    .line 13647
    iget-object v1, v1, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v9, v11

    if-eqz v1, :cond_1

    cmp-long v1, v4, v9

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    .line 772
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    move-wide v3, v4

    .line 774
    :goto_1
    new-instance v14, Lcom/google/android/exoplayer2/v;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v1, v14

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJJJZZZ)V

    return-object v14
.end method

.method private a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/v;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 791
    iget-object v5, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 792
    iget-object v5, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/al$a;->b(J)I

    move-result v5

    .line 793
    new-instance v7, Lcom/google/android/exoplayer2/source/r$a;

    move-wide/from16 v8, p7

    invoke-direct {v7, v2, v8, v9, v5}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;JI)V

    .line 794
    invoke-static {v7}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v2

    .line 795
    invoke-direct {v0, v1, v7}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v17

    .line 796
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Z)Z

    move-result v18

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    .line 799
    iget-object v1, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/al$a;->a(I)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_0

    :cond_0
    move-wide v12, v8

    :goto_0
    cmp-long v1, v12, v8

    if-eqz v1, :cond_2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v12, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v14, v12

    goto :goto_2

    .line 803
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/al$a;->d:J

    move-wide v14, v5

    :goto_2
    cmp-long v1, v14, v8

    if-eqz v1, :cond_3

    cmp-long v1, v3, v14

    if-ltz v1, :cond_3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    sub-long v5, v14, v5

    .line 807
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v8, v3

    .line 809
    new-instance v1, Lcom/google/android/exoplayer2/v;

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJJJZZZ)V

    return-object v1
.end method

.method private synthetic a(Lcom/google/common/collect/v$a;Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->j:Lcom/google/android/exoplayer2/a/a;

    invoke-virtual {p1}, Lcom/google/common/collect/v$a;->a()Lcom/google/common/collect/v;

    move-result-object p1

    .line 15170
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/a;->a:Lcom/google/android/exoplayer2/a/a$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/ac;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ac;

    .line 15984
    invoke-static {p1}, Lcom/google/common/collect/v;->a(Ljava/util/Collection;)Lcom/google/common/collect/v;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    .line 15985
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 15986
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/r$a;

    iput-object p1, v1, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    .line 15987
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/r$a;

    iput-object p1, v1, Lcom/google/android/exoplayer2/a/a$a;->e:Lcom/google/android/exoplayer2/source/r$a;

    .line 15989
    :cond_0
    iget-object p1, v1, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    if-nez p1, :cond_1

    .line 15990
    iget-object p1, v1, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    iget-object p2, v1, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/a/a$a;->a:Lcom/google/android/exoplayer2/al$a;

    .line 15991
    invoke-static {v0, p1, p2, v2}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/ac;Lcom/google/common/collect/v;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    .line 15994
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/al;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z
    .locals 5

    .line 825
    invoke-static {p2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 829
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p2

    .line 830
    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v3, 0x0

    .line 13809
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p1

    .line 830
    iget p1, p1, Lcom/google/android/exoplayer2/al$b;->o:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Z)Z
    .locals 7

    .line 835
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v1

    .line 836
    iget-object p2, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    const/4 v6, 0x0

    .line 13955
    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    .line 836
    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v2, 0x0

    .line 14809
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p2

    .line 837
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    iget v4, p0, Lcom/google/android/exoplayer2/w;->a:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/w;->b:Z

    move-object v0, p1

    .line 838
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/al;->b(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method private static a(Lcom/google/android/exoplayer2/source/r$a;)Z
    .locals 1

    .line 821
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/source/r$a;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$VPEmLSD6CVHb-HerMpsUb0yzRig(Lcom/google/android/exoplayer2/w;Lcom/google/common/collect/v$a;Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/common/collect/v$a;Lcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/r$a;
    .locals 7

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;)J

    move-result-wide v4

    .line 417
    iget-object v6, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJLcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/google/android/exoplayer2/u;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-ne v0, v2, :cond_1

    .line 1343
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 240
    iput-object v0, p0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->e()V

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer2/w;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/w;->f:I

    if-nez v0, :cond_2

    .line 245
    iput-object v1, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/w;->g:Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/r$a;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/w;->m:J

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 2343
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 249
    iput-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 250
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/w;->c()V

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    return-object v0
.end method

.method final a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/v;
    .locals 12

    move-object v0, p2

    .line 734
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 735
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/r$a;->c:I

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/r$a;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0

    .line 744
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/r$a;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/u;J)Lcom/google/android/exoplayer2/v;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 606
    iget-object v11, v10, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 12126
    iget-wide v0, v10, Lcom/google/android/exoplayer2/u;->k:J

    .line 611
    iget-wide v2, v11, Lcom/google/android/exoplayer2/v;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 612
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/v;->f:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 613
    iget-object v0, v11, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v1

    .line 614
    iget-object v2, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget-object v3, v9, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    iget v0, v9, Lcom/google/android/exoplayer2/w;->a:I

    iget-boolean v5, v9, Lcom/google/android/exoplayer2/w;->b:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    .line 615
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)I

    move-result v0

    if-ne v0, v14, :cond_0

    return-object v15

    .line 624
    :cond_0
    iget-object v1, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    const/4 v2, 0x1

    .line 625
    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 626
    iget-object v1, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    .line 627
    iget-object v2, v11, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/r$a;->d:J

    .line 628
    iget-object v2, v9, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    .line 12809
    invoke-virtual {v8, v3, v2, v12, v13}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v2

    .line 628
    iget v2, v2, Lcom/google/android/exoplayer2/al$b;->n:I

    if-ne v2, v0, :cond_3

    .line 634
    iget-object v1, v9, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    iget-object v2, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 640
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 635
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    .line 644
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 645
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 13343
    iget-object v0, v10, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-eqz v0, :cond_2

    .line 647
    iget-object v4, v0, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/r$a;->d:J

    goto :goto_0

    .line 650
    :cond_2
    iget-wide v4, v9, Lcom/google/android/exoplayer2/w;->l:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/android/exoplayer2/w;->l:J

    :goto_0
    move-wide v12, v2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v12

    .line 657
    :goto_1
    iget-object v6, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    move-object/from16 v0, p1

    move-wide v2, v12

    .line 658
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJLcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v16

    move-wide v5, v12

    .line 660
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v12, 0x0

    .line 663
    iget-object v10, v11, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 664
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v8, v0, v1}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 665
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 666
    iget v3, v10, Lcom/google/android/exoplayer2/source/r$a;->b:I

    .line 667
    iget-object v0, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/al$a;->d(I)I

    move-result v0

    if-ne v0, v14, :cond_5

    return-object v15

    .line 671
    :cond_5
    iget-object v1, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget v2, v10, Lcom/google/android/exoplayer2/source/r$a;->c:I

    .line 672
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/al$a;->a(II)I

    move-result v4

    if-ge v4, v0, :cond_6

    .line 675
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/v;->c:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/r$a;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0

    .line 684
    :cond_6
    iget-wide v0, v11, Lcom/google/android/exoplayer2/v;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    .line 689
    iget-object v1, v9, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    iget-object v2, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget v3, v2, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 695
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 690
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v15

    .line 699
    :cond_7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_8
    move-wide v3, v0

    .line 701
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/v;->c:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/r$a;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0

    .line 710
    :cond_9
    iget-object v0, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget-wide v1, v11, Lcom/google/android/exoplayer2/v;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/al$a;->a(J)I

    move-result v3

    if-ne v3, v14, :cond_a

    .line 713
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-wide v3, v11, Lcom/google/android/exoplayer2/v;->e:J

    iget-wide v5, v11, Lcom/google/android/exoplayer2/v;->e:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/r$a;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0

    .line 720
    :cond_a
    iget-object v0, v9, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/al$a;->b(I)I

    move-result v4

    .line 721
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/v;->e:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/r$a;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/v;)Lcom/google/android/exoplayer2/v;
    .locals 13

    .line 382
    iget-object v1, p2, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 383
    invoke-static {v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v10

    .line 384
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v11

    .line 385
    invoke-direct {p0, p1, v1, v10}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Z)Z

    move-result v12

    .line 386
    iget-object v0, p2, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 388
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget v0, v1, Lcom/google/android/exoplayer2/source/r$a;->b:I

    iget v2, v1, Lcom/google/android/exoplayer2/source/r$a;->c:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/al$a;->b(II)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    goto :goto_2

    .line 390
    :cond_0
    iget-wide v2, p2, Lcom/google/android/exoplayer2/v;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget-wide v2, p2, Lcom/google/android/exoplayer2/v;->d:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    iget-wide v2, p2, Lcom/google/android/exoplayer2/v;->d:J

    goto :goto_0

    .line 391
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    .line 5514
    iget-wide v2, p1, Lcom/google/android/exoplayer2/al$a;->d:J

    goto :goto_0

    .line 393
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/v;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/v;->b:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/v;->c:J

    iget-wide v6, p2, Lcom/google/android/exoplayer2/v;->d:J

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJJJZZZ)V

    return-object p1
.end method

.method public final a(J)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/u;->a(J)V

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/exoplayer2/al;)Z
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 545
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 547
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/w;->h:Lcom/google/android/exoplayer2/al$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/w;->i:Lcom/google/android/exoplayer2/al$b;

    iget v6, p0, Lcom/google/android/exoplayer2/w;->a:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/w;->b:Z

    move-object v2, p1

    .line 548
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)I

    move-result v3

    .line 9343
    :goto_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-eqz v2, :cond_1

    .line 550
    iget-object v2, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/v;->f:Z

    if-nez v2, :cond_1

    .line 10343
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_1

    .line 11343
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 559
    iget-object v4, v2, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    move-result v2

    .line 571
    iget-object v3, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/v;)Lcom/google/android/exoplayer2/v;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    if-nez v2, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/u;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 263
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 264
    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 268
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 3343
    :goto_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-eqz v2, :cond_3

    .line 4343
    iget-object p1, p1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 271
    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-ne p1, v2, :cond_2

    .line 272
    iget-object v1, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    iput-object v1, p0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    const/4 v1, 0x1

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/u;->e()V

    .line 276
    iget v2, p0, Lcom/google/android/exoplayer2/w;->f:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/w;->f:I

    goto :goto_1

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/u;->a(Lcom/google/android/exoplayer2/u;)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/w;->c()V

    return v1
.end method

.method public final b()V
    .locals 3

    .line 285
    iget v0, p0, Lcom/google/android/exoplayer2/w;->f:I

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/u;

    .line 289
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/w;->g:Ljava/lang/Object;

    .line 290
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/r$a;->d:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/w;->m:J

    :goto_0
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->e()V

    .line 5343
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 296
    iput-object v0, p0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 297
    iput-object v0, p0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/google/android/exoplayer2/w;->f:I

    .line 299
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/w;->c()V

    return-void
.end method

.method final c()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/w;->j:Lcom/google/android/exoplayer2/a/a;

    if-eqz v0, :cond_2

    .line 425
    invoke-static {}, Lcom/google/common/collect/v;->i()Lcom/google/common/collect/v$a;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    :goto_0
    if-eqz v1, :cond_0

    .line 428
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v2, v2, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    .line 6343
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 432
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/w;->k:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/exoplayer2/-$$Lambda$w$VPEmLSD6CVHb-HerMpsUb0yzRig;-><init>(Lcom/google/android/exoplayer2/w;Lcom/google/common/collect/v$a;Lcom/google/android/exoplayer2/source/r$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
