.class final Landroidx/media2/exoplayer/external/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/media2/exoplayer/external/al;

.field b:I

.field c:Z

.field d:Landroidx/media2/exoplayer/external/z;

.field e:Landroidx/media2/exoplayer/external/z;

.field f:Landroidx/media2/exoplayer/external/z;

.field g:I

.field h:Ljava/lang/Object;

.field private final i:Landroidx/media2/exoplayer/external/al$a;

.field private final j:Landroidx/media2/exoplayer/external/al$b;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroidx/media2/exoplayer/external/al$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/al$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    .line 66
    new-instance v0, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    .line 67
    sget-object v0, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    return-void
.end method

.method private a(Ljava/lang/Object;)J
    .locals 6

    .line 431
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 432
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 433
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 435
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    .line 4795
    invoke-virtual {v4, v1, v5, v2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v1

    .line 435
    iget v1, v1, Landroidx/media2/exoplayer/external/al$a;->c:I

    if-ne v1, v0, :cond_0

    .line 438
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ab;->l:J

    return-wide v0

    .line 442
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    :goto_0
    if-eqz v1, :cond_2

    .line 444
    iget-object v4, v1, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    iget-object p1, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    return-wide v0

    .line 5340
    :cond_1
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    goto :goto_0

    .line 450
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    :goto_1
    if-eqz p1, :cond_4

    .line 452
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v4, p1, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 454
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    .line 5795
    invoke-virtual {v4, v1, v5, v2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v1

    .line 454
    iget v1, v1, Landroidx/media2/exoplayer/external/al$a;->c:I

    if-ne v1, v0, :cond_3

    .line 457
    iget-object p1, p1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    return-wide v0

    .line 6340
    :cond_3
    iget-object p1, p1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    goto :goto_1

    .line 463
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ab;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/ab;->k:J

    return-wide v0
.end method

.method private a(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/aa;
    .locals 16

    move-object/from16 v0, p0

    .line 688
    new-instance v7, Landroidx/media2/exoplayer/external/source/t$a;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 690
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    .line 692
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v1

    iget v2, v7, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v3, v7, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    .line 693
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/al$a;->c(II)J

    move-result-wide v9

    .line 695
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/al$a;->b(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    .line 696
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    .line 11514
    iget-object v1, v1, Landroidx/media2/exoplayer/external/al$a;->f:Landroidx/media2/exoplayer/external/source/ads/a;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/ads/a;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    .line 698
    new-instance v13, Landroidx/media2/exoplayer/external/aa;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Landroidx/media2/exoplayer/external/aa;-><init>(Landroidx/media2/exoplayer/external/source/t$a;JJJJZZ)V

    return-object v13
.end method

.method private a(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 7

    .line 411
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 412
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/al$a;->a(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 414
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/al$a;->b(J)I

    move-result p2

    .line 415
    new-instance p3, Landroidx/media2/exoplayer/external/source/t$a;

    invoke-direct {p3, p1, p4, p5, p2}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 417
    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/al$a;->b(I)I

    move-result v4

    .line 418
    new-instance p2, Landroidx/media2/exoplayer/external/source/t$a;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/t$a;)Z
    .locals 1

    .line 733
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/media2/exoplayer/external/source/t$a;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroidx/media2/exoplayer/external/source/t$a;Z)Z
    .locals 8

    .line 737
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v2

    .line 738
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    const/4 v7, 0x0

    .line 11795
    invoke-virtual {p1, v2, v0, v7}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    .line 738
    iget p1, p1, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 739
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    const-wide/16 v3, 0x0

    .line 12648
    invoke-virtual {v0, p1, v1, v3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p1

    .line 739
    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/al$b;->f:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    iget v5, p0, Landroidx/media2/exoplayer/external/ab;->b:I

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/ab;->c:Z

    .line 740
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/al;->b(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v7
.end method

.method private b(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/aa;
    .locals 14

    move-object v0, p0

    .line 710
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/al$a;->b(J)I

    move-result v1

    .line 711
    new-instance v3, Landroidx/media2/exoplayer/external/source/t$a;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;JI)V

    .line 712
    invoke-static {v3}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/t$a;)Z

    move-result v12

    .line 713
    invoke-direct {p0, v3, v12}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/t$a;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 716
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/al$a;->a(I)J

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

    .line 720
    :cond_2
    :goto_1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/al$a;->d:J

    move-wide v10, v1

    .line 722
    :goto_2
    new-instance v1, Landroidx/media2/exoplayer/external/aa;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/aa;-><init>(Landroidx/media2/exoplayer/external/source/t$a;JJJJZZ)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/aa;)Landroidx/media2/exoplayer/external/aa;
    .locals 13

    .line 362
    iget-object v1, p1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    .line 363
    invoke-static {v1}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/t$a;)Z

    move-result v10

    .line 364
    invoke-direct {p0, v1, v10}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/t$a;Z)Z

    move-result v11

    .line 365
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 367
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget v2, v1, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v3, v1, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/al$a;->c(II)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    goto :goto_2

    .line 369
    :cond_0
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/aa;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/aa;->d:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/aa;->d:J

    goto :goto_0

    .line 370
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    .line 4373
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/al$a;->d:J

    goto :goto_0

    .line 372
    :goto_2
    new-instance v12, Landroidx/media2/exoplayer/external/aa;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/aa;->c:J

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/aa;->d:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/aa;-><init>(Landroidx/media2/exoplayer/external/source/t$a;JJJJZZ)V

    return-object v12
.end method

.method final a(Landroidx/media2/exoplayer/external/source/t$a;JJ)Landroidx/media2/exoplayer/external/aa;
    .locals 8

    .line 666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 667
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object p4, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget p5, p1, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v0, p1, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    invoke-virtual {p4, p5, v0}, Landroidx/media2/exoplayer/external/al$a;->b(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 671
    :cond_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget v2, p1, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object p1

    return-object p1

    .line 678
    :cond_1
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ab;->b(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroidx/media2/exoplayer/external/z;J)Landroidx/media2/exoplayer/external/aa;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 546
    iget-object v1, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    .line 10127
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/z;->j:J

    .line 551
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/aa;->e:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 552
    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/aa;->f:Z

    const/4 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    .line 553
    iget-object v4, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v12, v1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v14

    .line 554
    iget-object v13, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v15, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget-object v4, v8, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    iget v12, v8, Landroidx/media2/exoplayer/external/ab;->b:I

    iget-boolean v5, v8, Landroidx/media2/exoplayer/external/ab;->c:Z

    move-object/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v5

    .line 555
    invoke-virtual/range {v13 .. v18}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)I

    move-result v4

    if-ne v4, v7, :cond_0

    return-object v11

    .line 564
    :cond_0
    iget-object v5, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    const/4 v7, 0x1

    .line 565
    invoke-virtual {v5, v4, v6, v7}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v5

    iget v15, v5, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 566
    iget-object v5, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    .line 567
    iget-object v1, v1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    .line 568
    iget-object v1, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v12, v8, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    .line 10648
    invoke-virtual {v1, v15, v12, v9, v10}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v1

    .line 568
    iget v1, v1, Landroidx/media2/exoplayer/external/al$b;->g:I

    if-ne v1, v4, :cond_3

    .line 573
    iget-object v12, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    iget-object v14, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 579
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 574
    invoke-virtual/range {v12 .. v19}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v11

    .line 583
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 584
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 11340
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v0, :cond_2

    .line 586
    iget-object v1, v0, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    goto :goto_0

    .line 589
    :cond_2
    iget-wide v0, v8, Landroidx/media2/exoplayer/external/ab;->k:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Landroidx/media2/exoplayer/external/ab;->k:J

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

    .line 597
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v1

    move-wide v2, v9

    move-wide v4, v6

    .line 598
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/t$a;JJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object v0

    return-object v0

    .line 601
    :cond_4
    iget-object v0, v1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    .line 602
    iget-object v4, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 603
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 604
    iget v4, v0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    .line 605
    iget-object v5, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/al$a;->c(I)I

    move-result v5

    if-ne v5, v7, :cond_5

    return-object v11

    .line 609
    :cond_5
    iget-object v6, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget v7, v0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    .line 610
    invoke-virtual {v6, v4, v7}, Landroidx/media2/exoplayer/external/al$a;->a(II)I

    move-result v6

    if-ge v6, v5, :cond_7

    .line 613
    iget-object v2, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v2, v4, v6}, Landroidx/media2/exoplayer/external/al$a;->b(II)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v11

    .line 615
    :cond_6
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-wide v9, v1, Landroidx/media2/exoplayer/external/aa;->c:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object v0

    return-object v0

    .line 623
    :cond_7
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/aa;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    .line 627
    iget-object v12, v8, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    iget-object v14, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget v15, v14, Landroidx/media2/exoplayer/external/al$a;->c:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 633
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 628
    invoke-virtual/range {v12 .. v19}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v11

    .line 637
    :cond_8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_2

    :cond_9
    move-wide v2, v4

    .line 639
    :goto_2
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ab;->b(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object v0

    return-object v0

    .line 644
    :cond_a
    iget-object v2, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/aa;->d:J

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/al$a;->a(J)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 647
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/aa;->e:J

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ab;->b(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object v0

    return-object v0

    .line 652
    :cond_b
    iget-object v3, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/al$a;->b(I)I

    move-result v3

    .line 653
    iget-object v4, v8, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v4, v2, v3}, Landroidx/media2/exoplayer/external/al$a;->b(II)Z

    move-result v4

    if-nez v4, :cond_c

    return-object v11

    .line 655
    :cond_c
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/aa;->e:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 6

    .line 392
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 393
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p1

    return-object p1
.end method

.method public final a()Landroidx/media2/exoplayer/external/z;
    .locals 3

    .line 225
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 228
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-ne v0, v2, :cond_1

    .line 1340
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 229
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    .line 231
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/z;->e()V

    .line 232
    iget v0, p0, Landroidx/media2/exoplayer/external/ab;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/ab;->g:I

    if-nez v0, :cond_2

    .line 234
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 235
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->h:Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/ab;->l:J

    .line 238
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 2340
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 238
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/z;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 274
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, v0, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ab;->h:Ljava/lang/Object;

    .line 277
    iget-object p1, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/ab;->l:J

    .line 278
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    .line 279
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/z;->e()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 281
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ab;->h:Ljava/lang/Object;

    .line 283
    :cond_2
    :goto_1
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 284
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 285
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    const/4 p1, 0x0

    .line 286
    iput p1, p0, Landroidx/media2/exoplayer/external/ab;->g:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/z;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 251
    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 253
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 3340
    :goto_1
    iget-object v2, p1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v2, :cond_2

    .line 4340
    iget-object p1, p1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 256
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-ne p1, v2, :cond_1

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    const/4 v0, 0x1

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/z;->e()V

    .line 261
    iget v2, p0, Landroidx/media2/exoplayer/external/ab;->g:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/ab;->g:I

    goto :goto_1

    .line 263
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/z;->a(Landroidx/media2/exoplayer/external/z;)V

    return v0
.end method

.method final b()Z
    .locals 8

    .line 487
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 491
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 493
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ab;->i:Landroidx/media2/exoplayer/external/al$a;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ab;->j:Landroidx/media2/exoplayer/external/al$b;

    iget v6, p0, Landroidx/media2/exoplayer/external/ab;->b:I

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/ab;->c:Z

    .line 494
    invoke-virtual/range {v2 .. v7}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)I

    move-result v3

    .line 7340
    :goto_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v2, :cond_1

    .line 496
    iget-object v2, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/aa;->f:Z

    if-nez v2, :cond_1

    .line 8340
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    goto :goto_1

    .line 9340
    :cond_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 505
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v5, v2, Landroidx/media2/exoplayer/external/z;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    move-result v2

    .line 517
    iget-object v3, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/aa;)Landroidx/media2/exoplayer/external/aa;

    move-result-object v3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    if-nez v2, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
