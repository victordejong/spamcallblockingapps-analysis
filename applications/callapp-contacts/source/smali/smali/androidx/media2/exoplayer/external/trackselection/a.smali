.class public final Landroidx/media2/exoplayer/external/trackselection/a;
.super Landroidx/media2/exoplayer/external/trackselection/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/a$b;,
        Landroidx/media2/exoplayer/external/trackselection/a$a;,
        Landroidx/media2/exoplayer/external/trackselection/a$c;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/trackselection/a$a;

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:F

.field private final j:J

.field private final k:Landroidx/media2/exoplayer/external/util/b;

.field private l:F

.field private m:I

.field private n:I

.field private o:J


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/a$a;JJJFJLandroidx/media2/exoplayer/external/util/b;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/b;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 397
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/a;->a:Landroidx/media2/exoplayer/external/trackselection/a$a;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 398
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/trackselection/a;->f:J

    mul-long p6, p6, p1

    .line 399
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/trackselection/a;->g:J

    mul-long p8, p8, p1

    .line 400
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/trackselection/a;->h:J

    .line 401
    iput p10, p0, Landroidx/media2/exoplayer/external/trackselection/a;->i:F

    .line 403
    iput-wide p11, p0, Landroidx/media2/exoplayer/external/trackselection/a;->j:J

    .line 404
    iput-object p13, p0, Landroidx/media2/exoplayer/external/trackselection/a;->k:Landroidx/media2/exoplayer/external/util/b;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 405
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->l:F

    const/4 p1, 0x0

    .line 406
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->n:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 407
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->o:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/a$a;JJJFJLandroidx/media2/exoplayer/external/util/b;Landroidx/media2/exoplayer/external/trackselection/a$1;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p13}, Landroidx/media2/exoplayer/external/trackselection/a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/a$a;JJJFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/c;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 319
    sget-object v16, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x61a8

    const-wide/16 v10, 0x61a8

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f400000    # 0.75f

    const-wide/16 v14, 0x7d0

    invoke-direct/range {v0 .. v16}, Landroidx/media2/exoplayer/external/trackselection/a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/c;JJJJFFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/upstream/c;JJJJFFJLandroidx/media2/exoplayer/external/util/b;)V
    .locals 14

    .line 374
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/a$b;

    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    move/from16 v4, p12

    invoke-direct {v3, v0, v4, v1, v2}, Landroidx/media2/exoplayer/external/trackselection/a$b;-><init>(Landroidx/media2/exoplayer/external/upstream/c;FJ)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move/from16 v10, p13

    move-wide/from16 v11, p14

    move-object/from16 v13, p16

    invoke-direct/range {v0 .. v13}, Landroidx/media2/exoplayer/external/trackselection/a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/a$a;JJJFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method private a(J)I
    .locals 7

    .line 580
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->a:Landroidx/media2/exoplayer/external/trackselection/a$a;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/a$a;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 582
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/a;->c:I

    if-ge v2, v4, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_0

    .line 583
    invoke-virtual {p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/a;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3111
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v2

    .line 585
    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/a;->l:F

    invoke-static {v3, v4, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/a;->a(IFJ)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static a([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 753
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 754
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 755
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    :cond_0
    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v3, p0, p3

    .line 758
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static a(IFJ)Z
    .locals 1

    int-to-float p0, p0

    mul-float p0, p0, p1

    .line 548
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a([[J)[[[J
    .locals 20

    move-object/from16 v0, p0

    .line 3699
    array-length v1, v0

    new-array v2, v1, [[D

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3700
    :goto_0
    array-length v5, v0

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 3701
    aget-object v5, v0, v4

    array-length v5, v5

    new-array v5, v5, [D

    aput-object v5, v2, v4

    const/4 v5, 0x0

    .line 3702
    :goto_1
    aget-object v8, v0, v4

    array-length v8, v8

    if-ge v5, v8, :cond_1

    .line 3703
    aget-object v8, v2, v4

    aget-object v9, v0, v4

    aget-wide v10, v9, v5

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    move-wide v9, v6

    goto :goto_2

    :cond_0
    aget-object v9, v0, v4

    aget-wide v10, v9, v5

    long-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    :goto_2
    aput-wide v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3716
    :cond_2
    new-array v4, v1, [[D

    const/4 v5, 0x0

    :goto_3
    const/4 v8, 0x1

    if-ge v5, v1, :cond_5

    .line 3718
    aget-object v9, v2, v5

    array-length v9, v9

    sub-int/2addr v9, v8

    new-array v9, v9, [D

    aput-object v9, v4, v5

    .line 3719
    aget-object v9, v4, v5

    array-length v9, v9

    if-eqz v9, :cond_4

    .line 3722
    aget-object v9, v2, v5

    aget-object v10, v2, v5

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-wide v10, v9, v10

    aget-object v9, v2, v5

    aget-wide v12, v9, v3

    sub-double/2addr v10, v12

    const/4 v9, 0x0

    .line 3723
    :goto_4
    aget-object v12, v2, v5

    array-length v12, v12

    sub-int/2addr v12, v8

    if-ge v9, v12, :cond_4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 3724
    aget-object v14, v2, v5

    aget-wide v15, v14, v9

    aget-object v14, v2, v5

    add-int/lit8 v17, v9, 0x1

    aget-wide v18, v14, v17

    add-double v15, v15, v18

    mul-double v15, v15, v12

    .line 3725
    aget-object v12, v4, v5

    cmpl-double v13, v10, v6

    if-nez v13, :cond_3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    .line 3726
    :cond_3
    aget-object v13, v2, v5

    aget-wide v18, v13, v3

    sub-double v15, v15, v18

    div-double v13, v15, v10

    :goto_5
    aput-wide v13, v12, v9

    move/from16 v9, v17

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v1, :cond_6

    .line 3735
    aget-object v7, v4, v5

    .line 3736
    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x3

    add-int/2addr v6, v5

    new-array v5, v5, [I

    const/4 v7, 0x2

    aput v7, v5, v7

    aput v6, v5, v8

    aput v1, v5, v3

    .line 3671
    const-class v9, J

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[J

    .line 3672
    new-array v9, v1, [I

    .line 3673
    invoke-static {v5, v8, v0, v9}, Landroidx/media2/exoplayer/external/trackselection/a;->a([[[JI[[J[I)V

    const/4 v10, 0x2

    :goto_7
    add-int/lit8 v11, v6, -0x1

    if-ge v10, v11, :cond_9

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    if-ge v13, v1, :cond_8

    .line 3678
    aget v15, v9, v13

    add-int/2addr v15, v8

    aget-object v3, v2, v13

    array-length v3, v3

    if-eq v15, v3, :cond_7

    .line 3681
    aget-object v3, v4, v13

    aget v15, v9, v13

    aget-wide v17, v3, v15

    cmpg-double v3, v17, v11

    if-gez v3, :cond_7

    move v14, v13

    move-wide/from16 v11, v17

    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_8

    .line 3687
    :cond_8
    aget v3, v9, v14

    add-int/2addr v3, v8

    aput v3, v9, v14

    .line 3688
    invoke-static {v5, v10, v0, v9}, Landroidx/media2/exoplayer/external/trackselection/a;->a([[[JI[[J[I)V

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_7

    .line 3690
    :cond_9
    array-length v0, v5

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_a

    aget-object v2, v5, v1

    .line 3691
    aget-object v3, v2, v11

    add-int/lit8 v4, v6, -0x2

    aget-object v9, v2, v4

    const/4 v10, 0x0

    aget-wide v12, v9, v10

    const-wide/16 v14, 0x2

    mul-long v12, v12, v14

    aput-wide v12, v3, v10

    .line 3692
    aget-object v3, v2, v11

    aget-object v2, v2, v4

    aget-wide v12, v2, v8

    mul-long v12, v12, v14

    aput-wide v12, v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    return-object v5
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 478
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    return v0
.end method

.method public final a(F)V
    .locals 0

    .line 428
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->l:F

    return-void
.end method

.method public final a(JJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)V"
        }
    .end annotation

    .line 438
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->k:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide p1

    .line 441
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->n:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 442
    iput v1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->n:I

    .line 443
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/a;->a(J)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    return-void

    .line 448
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    .line 449
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/a;->a(J)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    if-ne v2, v0, :cond_1

    return-void

    .line 454
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/a;->b(IJ)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1111
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, p1, v0

    .line 457
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    .line 2111
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget-object p2, v2, p2

    .line 458
    iget v2, p2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-le v2, v3, :cond_4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v2

    if-eqz v4, :cond_2

    .line 2596
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/trackselection/a;->f:J

    cmp-long v4, p5, v2

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    long-to-float p5, p5

    .line 2599
    iget p6, p0, Landroidx/media2/exoplayer/external/trackselection/a;->i:F

    mul-float p5, p5, p6

    float-to-long p5, p5

    goto :goto_1

    .line 2600
    :cond_3
    iget-wide p5, p0, Landroidx/media2/exoplayer/external/trackselection/a;->f:J

    :goto_1
    cmp-long v1, p3, p5

    if-gez v1, :cond_4

    .line 462
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    goto :goto_2

    .line 463
    :cond_4
    iget p2, p2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ge p2, p1, :cond_5

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->g:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_5

    .line 467
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    .line 471
    :cond_5
    :goto_2
    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->m:I

    if-eq p1, v0, :cond_6

    const/4 p1, 0x3

    .line 472
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/a;->n:I

    :cond_6
    return-void
.end method

.method public final b()I
    .locals 1

    .line 483
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->n:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 423
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/a;->o:J

    return-void
.end method
