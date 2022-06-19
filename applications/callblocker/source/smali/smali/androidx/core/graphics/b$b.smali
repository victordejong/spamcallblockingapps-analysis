.class public Landroidx/core/graphics/b$b;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:C

.field public b:[F


# direct methods
.method constructor <init>(C[F)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-char p1, p0, Landroidx/core/graphics/b$b;->a:C

    .line 354
    iput-object p2, p0, Landroidx/core/graphics/b$b;->b:[F

    .line 355
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/b$b;)V
    .locals 3

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iget-char v0, p1, Landroidx/core/graphics/b$b;->a:C

    iput-char v0, p0, Landroidx/core/graphics/b$b;->a:C

    .line 359
    iget-object v0, p1, Landroidx/core/graphics/b$b;->b:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/core/graphics/b$b;->b:[F

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/b;->a([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/b$b;->b:[F

    .line 360
    return-void
.end method

.method private static a(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 35

    .prologue
    .line 750
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    .line 753
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 754
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 755
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 756
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 757
    move-wide/from16 v0, p5

    neg-double v6, v0

    mul-double v6, v6, v22

    mul-double/2addr v6, v4

    mul-double v8, p7, v24

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    .line 758
    move-wide/from16 v0, p5

    neg-double v8, v0

    mul-double v8, v8, v24

    mul-double/2addr v4, v8

    mul-double v8, p7, v22

    mul-double/2addr v2, v8

    add-double/2addr v4, v2

    .line 760
    move/from16 v0, v20

    int-to-double v2, v0

    div-double v26, p17, v2

    .line 761
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 762
    add-double v14, p15, v26

    .line 763
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 764
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 765
    mul-double v12, p5, v22

    mul-double/2addr v12, v10

    add-double v12, v12, p1

    mul-double v16, p7, v24

    mul-double v16, v16, v2

    sub-double v18, v12, v16

    .line 766
    mul-double v12, p5, v24

    mul-double/2addr v12, v10

    add-double v12, v12, p3

    mul-double v16, p7, v22

    mul-double v16, v16, v2

    add-double v16, v16, v12

    .line 767
    move-wide/from16 v0, p5

    neg-double v12, v0

    mul-double v12, v12, v22

    mul-double/2addr v12, v2

    mul-double v28, p7, v24

    mul-double v28, v28, v10

    sub-double v12, v12, v28

    .line 768
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    mul-double v2, v2, v28

    mul-double v28, p7, v22

    mul-double v10, v10, v28

    add-double/2addr v10, v2

    .line 769
    sub-double v2, v14, p15

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v2, v2, v28

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 770
    sub-double v28, v14, p15

    .line 771
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v32, v32, v2

    mul-double v2, v2, v32

    add-double v2, v2, v30

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v2, v2, v30

    mul-double v2, v2, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v2, v2, v28

    .line 772
    mul-double/2addr v6, v2

    add-double v6, v6, p9

    .line 773
    mul-double/2addr v4, v2

    add-double v4, v4, p11

    .line 774
    mul-double v28, v2, v12

    sub-double v28, v18, v28

    .line 775
    mul-double/2addr v2, v10

    sub-double v30, v16, v2

    .line 778
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 780
    double-to-float v3, v6

    double-to-float v4, v4

    move-wide/from16 v0, v28

    double-to-float v5, v0

    move-wide/from16 v0, v30

    double-to-float v6, v0

    move-wide/from16 v0, v18

    double-to-float v7, v0

    move-wide/from16 v0, v16

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 761
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v4, v10

    move-wide v6, v12

    move-wide/from16 p15, v14

    move-wide/from16 p11, v16

    move-wide/from16 p9, v18

    goto/16 :goto_0

    .line 792
    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 30

    .prologue
    .line 657
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 659
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 660
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 663
    move/from16 v0, p1

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p2

    float-to-double v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    move/from16 v0, p5

    float-to-double v4, v0

    div-double v6, v2, v4

    .line 664
    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double/2addr v2, v10

    move/from16 v0, p2

    float-to-double v4, v0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    move/from16 v0, p6

    float-to-double v4, v0

    div-double v12, v2, v4

    .line 665
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    move/from16 v0, p5

    float-to-double v4, v0

    div-double v14, v2, v4

    .line 666
    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double/2addr v2, v10

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    move/from16 v0, p6

    float-to-double v4, v0

    div-double v20, v2, v4

    .line 669
    sub-double v2, v6, v14

    .line 670
    sub-double v4, v12, v20

    .line 671
    add-double v18, v6, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    .line 672
    add-double v22, v12, v20

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    .line 674
    mul-double v24, v2, v2

    mul-double v26, v4, v4

    add-double v24, v24, v26

    .line 675
    const-wide/16 v26, 0x0

    cmpl-double v26, v24, v26

    if-nez v26, :cond_0

    .line 676
    const-string/jumbo v2, "PathParser"

    const-string/jumbo v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_0
    return-void

    .line 679
    :cond_0
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v26, v26, v24

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    sub-double v26, v26, v28

    .line 680
    const-wide/16 v28, 0x0

    cmpg-double v28, v26, v28

    if-gez v28, :cond_1

    .line 681
    const-string/jumbo v2, "PathParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Points are too far apart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 683
    mul-float v7, p5, v2

    mul-float v8, p6, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 688
    mul-double v2, v2, v24

    .line 689
    mul-double v4, v4, v24

    .line 692
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    .line 693
    sub-double v4, v18, v4

    .line 694
    add-double v2, v2, v22

    .line 700
    :goto_1
    sub-double/2addr v12, v2

    sub-double/2addr v6, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 702
    sub-double v6, v20, v2

    sub-double v12, v14, v4

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 704
    sub-double v20, v6, v18

    .line 705
    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    move/from16 v0, p9

    if-eq v0, v6, :cond_2

    .line 706
    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-lez v6, :cond_5

    .line 707
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v6

    .line 713
    :cond_2
    :goto_3
    move/from16 v0, p5

    float-to-double v6, v0

    mul-double/2addr v6, v4

    .line 714
    move/from16 v0, p6

    float-to-double v4, v0

    mul-double/2addr v2, v4

    .line 716
    mul-double v4, v6, v8

    mul-double v12, v2, v10

    sub-double/2addr v4, v12

    .line 717
    mul-double/2addr v6, v10

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    .line 719
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_0

    .line 696
    :cond_3
    add-double v4, v4, v18

    .line 697
    sub-double v2, v22, v2

    goto :goto_1

    .line 705
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 709
    :cond_5
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v6

    goto :goto_3
.end method

.method private static a(Landroid/graphics/Path;[FCC[F)V
    .locals 19

    .prologue
    .line 398
    const/4 v9, 0x2

    .line 399
    const/4 v3, 0x0

    aget v8, p1, v3

    .line 400
    const/4 v3, 0x1

    aget v7, p1, v3

    .line 401
    const/4 v3, 0x2

    aget v5, p1, v3

    .line 402
    const/4 v3, 0x3

    aget v3, p1, v3

    .line 403
    const/4 v4, 0x4

    aget v6, p1, v4

    .line 404
    const/4 v4, 0x5

    aget v4, p1, v4

    .line 408
    sparse-switch p3, :sswitch_data_0

    move v13, v9

    .line 451
    :goto_0
    const/4 v9, 0x0

    move v14, v9

    move v15, v4

    move/from16 v16, v6

    move v10, v3

    move v11, v5

    move/from16 v17, v7

    move/from16 v18, v8

    :goto_1
    move-object/from16 v0, p4

    array-length v3, v0

    if-ge v14, v3, :cond_d

    .line 452
    sparse-switch p3, :sswitch_data_1

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move/from16 v8, v17

    move/from16 v9, v18

    .line 451
    :goto_2
    add-int v3, v14, v13

    move v14, v3

    move v15, v4

    move/from16 v16, v6

    move v10, v5

    move v11, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 p2, p3

    goto :goto_1

    .line 411
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 419
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v4

    move v5, v6

    move v7, v4

    move v8, v6

    move v13, v9

    .line 420
    goto :goto_0

    .line 427
    :sswitch_1
    const/4 v9, 0x2

    move v13, v9

    .line 428
    goto :goto_0

    .line 433
    :sswitch_2
    const/4 v9, 0x1

    move v13, v9

    .line 434
    goto :goto_0

    .line 437
    :sswitch_3
    const/4 v9, 0x6

    move v13, v9

    .line 438
    goto :goto_0

    .line 443
    :sswitch_4
    const/4 v9, 0x4

    move v13, v9

    .line 444
    goto :goto_0

    .line 447
    :sswitch_5
    const/4 v9, 0x7

    move v13, v9

    goto :goto_0

    .line 454
    :sswitch_6
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v12, v18, v3

    .line 455
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 456
    if-lez v14, :cond_0

    .line 460
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    goto :goto_2

    .line 462
    :cond_0
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v4, v3

    move v6, v12

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 466
    goto :goto_2

    .line 468
    :sswitch_7
    add-int/lit8 v3, v14, 0x0

    aget v12, p4, v3

    .line 469
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    .line 470
    if-lez v14, :cond_1

    .line 474
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    goto/16 :goto_2

    .line 476
    :cond_1
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x1

    aget v5, p4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v4, v3

    move v6, v12

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 480
    goto/16 :goto_2

    .line 482
    :sswitch_8
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 483
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v12, v18, v3

    .line 484
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 485
    goto/16 :goto_2

    .line 487
    :sswitch_9
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    add-int/lit8 v3, v14, 0x0

    aget v12, p4, v3

    .line 489
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 490
    goto/16 :goto_2

    .line 492
    :sswitch_a
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 493
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v12, v18, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move/from16 v8, v17

    move v9, v12

    .line 494
    goto/16 :goto_2

    .line 496
    :sswitch_b
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    add-int/lit8 v3, v14, 0x0

    aget v12, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move/from16 v8, v17

    move v9, v12

    .line 498
    goto/16 :goto_2

    .line 500
    :sswitch_c
    const/4 v3, 0x0

    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 501
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move/from16 v9, v18

    .line 502
    goto/16 :goto_2

    .line 504
    :sswitch_d
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move/from16 v9, v18

    .line 506
    goto/16 :goto_2

    .line 508
    :sswitch_e
    add-int/lit8 v3, v14, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 511
    add-int/lit8 v3, v14, 0x2

    aget v3, p4, v3

    add-float v11, v18, v3

    .line 512
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    add-float v10, v17, v3

    .line 513
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    add-float v12, v18, v3

    .line 514
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 516
    goto/16 :goto_2

    .line 518
    :sswitch_f
    add-int/lit8 v3, v14, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 520
    add-int/lit8 v3, v14, 0x4

    aget v12, p4, v3

    .line 521
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    .line 522
    add-int/lit8 v4, v14, 0x2

    aget v11, p4, v4

    .line 523
    add-int/lit8 v4, v14, 0x3

    aget v10, p4, v4

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 524
    goto/16 :goto_2

    .line 526
    :sswitch_10
    const/4 v4, 0x0

    .line 527
    const/4 v5, 0x0

    .line 528
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 530
    :cond_2
    sub-float v4, v18, v11

    .line 531
    sub-float v5, v17, v10

    .line 533
    :cond_3
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 537
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v11, v18, v3

    .line 538
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v10, v17, v3

    .line 539
    add-int/lit8 v3, v14, 0x2

    aget v3, p4, v3

    add-float v12, v18, v3

    .line 540
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 541
    goto/16 :goto_2

    .line 545
    :sswitch_11
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_e

    .line 547
    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v4, v3, v11

    .line 548
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    sub-float v5, v3, v10

    .line 550
    :goto_3
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 552
    add-int/lit8 v3, v14, 0x0

    aget v11, p4, v3

    .line 553
    add-int/lit8 v3, v14, 0x1

    aget v10, p4, v3

    .line 554
    add-int/lit8 v3, v14, 0x2

    aget v12, p4, v3

    .line 555
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 556
    goto/16 :goto_2

    .line 558
    :sswitch_12
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x2

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x3

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 559
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v11, v18, v3

    .line 560
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v10, v17, v3

    .line 561
    add-int/lit8 v3, v14, 0x2

    aget v3, p4, v3

    add-float v12, v18, v3

    .line 562
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 563
    goto/16 :goto_2

    .line 565
    :sswitch_13
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x2

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x3

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 566
    add-int/lit8 v3, v14, 0x0

    aget v11, p4, v3

    .line 567
    add-int/lit8 v3, v14, 0x1

    aget v10, p4, v3

    .line 568
    add-int/lit8 v3, v14, 0x2

    aget v12, p4, v3

    .line 569
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 570
    goto/16 :goto_2

    .line 572
    :sswitch_14
    const/4 v4, 0x0

    .line 573
    const/4 v3, 0x0

    .line 574
    const/16 v5, 0x71

    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    const/16 v5, 0x74

    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    const/16 v5, 0x51

    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    const/16 v5, 0x54

    move/from16 v0, p2

    if-ne v0, v5, :cond_6

    .line 576
    :cond_5
    sub-float v4, v18, v11

    .line 577
    sub-float v3, v17, v10

    .line 579
    :cond_6
    add-int/lit8 v5, v14, 0x0

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 581
    add-float v11, v18, v4

    .line 582
    add-float v10, v17, v3

    .line 583
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v12, v18, v3

    .line 584
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v3

    move v9, v12

    .line 585
    goto/16 :goto_2

    .line 589
    :sswitch_15
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    const/16 v3, 0x74

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 591
    :cond_7
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v18, v3, v11

    .line 592
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    sub-float v17, v3, v10

    .line 594
    :cond_8
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 598
    add-int/lit8 v3, v14, 0x0

    aget v12, p4, v3

    .line 599
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v7, v18

    move v8, v3

    move v9, v12

    .line 600
    goto/16 :goto_2

    .line 603
    :sswitch_16
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v6, v3, v18

    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    add-float v7, v3, v17

    add-int/lit8 v3, v14, 0x0

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v9, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v10, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    :goto_4
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v3, p0

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-static/range {v3 .. v12}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 613
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v11, v18, v3

    .line 614
    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    add-float v10, v17, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v10

    move v9, v11

    .line 617
    goto/16 :goto_2

    .line 603
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    .line 619
    :sswitch_17
    add-int/lit8 v3, v14, 0x5

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x6

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x0

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v9, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v10, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    const/4 v11, 0x1

    :goto_6
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v3, p0

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-static/range {v3 .. v12}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 629
    add-int/lit8 v3, v14, 0x5

    aget v11, p4, v3

    .line 630
    add-int/lit8 v3, v14, 0x6

    aget v10, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v5, v10

    move v7, v11

    move v8, v10

    move v9, v11

    .line 632
    goto/16 :goto_2

    .line 619
    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    .line 637
    :cond_d
    const/4 v3, 0x0

    aput v18, p1, v3

    .line 638
    const/4 v3, 0x1

    aput v17, p1, v3

    .line 639
    const/4 v3, 0x2

    aput v11, p1, v3

    .line 640
    const/4 v3, 0x3

    aput v10, p1, v3

    .line 641
    const/4 v3, 0x4

    aput v16, p1, v3

    .line 642
    const/4 v3, 0x5

    aput v15, p1, v3

    .line 643
    return-void

    :cond_e
    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_3

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    .line 452
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method public static a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V
    .locals 5

    .prologue
    .line 369
    const/4 v0, 0x6

    new-array v2, v0, [F

    .line 370
    const/16 v1, 0x6d

    .line 371
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 372
    aget-object v3, p0, v0

    iget-char v3, v3, Landroidx/core/graphics/b$b;->a:C

    aget-object v4, p0, v0

    iget-object v4, v4, Landroidx/core/graphics/b$b;->b:[F

    invoke-static {p1, v2, v1, v3, v4}, Landroidx/core/graphics/b$b;->a(Landroid/graphics/Path;[FCC[F)V

    .line 373
    aget-object v1, p0, v0

    iget-char v1, v1, Landroidx/core/graphics/b$b;->a:C

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/core/graphics/b$b;Landroidx/core/graphics/b$b;F)V
    .locals 4

    .prologue
    .line 388
    iget-char v0, p1, Landroidx/core/graphics/b$b;->a:C

    iput-char v0, p0, Landroidx/core/graphics/b$b;->a:C

    .line 389
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/core/graphics/b$b;->b:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Landroidx/core/graphics/b$b;->b:[F

    iget-object v2, p1, Landroidx/core/graphics/b$b;->b:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroidx/core/graphics/b$b;->b:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method
