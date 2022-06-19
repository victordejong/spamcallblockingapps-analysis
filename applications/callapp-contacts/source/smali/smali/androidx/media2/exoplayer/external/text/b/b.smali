.class final Landroidx/media2/exoplayer/external/text/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/b/b$c;,
        Landroidx/media2/exoplayer/external/text/b/b$a;,
        Landroidx/media2/exoplayer/external/text/b/b$g;,
        Landroidx/media2/exoplayer/external/text/b/b$f;,
        Landroidx/media2/exoplayer/external/text/b/b$e;,
        Landroidx/media2/exoplayer/external/text/b/b$d;,
        Landroidx/media2/exoplayer/external/text/b/b$b;,
        Landroidx/media2/exoplayer/external/text/b/b$h;
    }
.end annotation


# static fields
.field private static final b:[B

.field private static final c:[B

.field private static final d:[B


# instance fields
.field final a:Landroidx/media2/exoplayer/external/text/b/b$h;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Canvas;

.field private final h:Landroidx/media2/exoplayer/external/text/b/b$b;

.field private final i:Landroidx/media2/exoplayer/external/text/b/b$a;

.field private j:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 77
    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/text/b/b;->b:[B

    new-array v0, v0, [B

    .line 79
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/text/b/b;->c:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 81
    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/text/b/b;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b;->e:Landroid/graphics/Paint;

    .line 104
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b;->f:Landroid/graphics/Paint;

    .line 108
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 111
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    .line 112
    new-instance v0, Landroidx/media2/exoplayer/external/text/b/b$b;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/text/b/b$b;-><init>(IIIIII)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b;->h:Landroidx/media2/exoplayer/external/text/b/b$b;

    .line 113
    new-instance v0, Landroidx/media2/exoplayer/external/text/b/b$a;

    invoke-static {}, Landroidx/media2/exoplayer/external/text/b/b;->a()[I

    move-result-object v1

    .line 114
    invoke-static {}, Landroidx/media2/exoplayer/external/text/b/b;->b()[I

    move-result-object v2

    invoke-static {}, Landroidx/media2/exoplayer/external/text/b/b;->c()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/media2/exoplayer/external/text/b/b$a;-><init>(I[I[I[I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b;->i:Landroidx/media2/exoplayer/external/text/b/b$a;

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/text/b/b$h;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/text/b/b$h;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    return-void
.end method

.method private static a(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/text/b/b$c;
    .locals 6

    const/16 v0, 0x10

    .line 473
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    const/4 v2, 0x4

    .line 474
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    const/4 v2, 0x2

    .line 475
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 476
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v3

    const/4 v4, 0x1

    .line 477
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    .line 483
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    .line 485
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    .line 487
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 488
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    if-lez v2, :cond_1

    .line 490
    new-array v5, v2, [B

    .line 491
    invoke-virtual {p0, v5, v2}, Landroidx/media2/exoplayer/external/util/o;->c([BI)V

    :cond_1
    if-lez v0, :cond_2

    .line 494
    new-array v2, v0, [B

    .line 495
    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/util/o;->c([BI)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    .line 501
    :goto_1
    new-instance p0, Landroidx/media2/exoplayer/external/text/b/b$c;

    invoke-direct {p0, v1, v3, v5, v2}, Landroidx/media2/exoplayer/external/text/b/b$c;-><init>(IZ[B[B)V

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/o;I)Landroidx/media2/exoplayer/external/text/b/b$f;
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 363
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    const/4 v2, 0x4

    .line 364
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v4

    const/4 v5, 0x3

    .line 366
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    const/16 v6, 0x10

    .line 367
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v7

    .line 368
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    .line 369
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    .line 370
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    const/4 v5, 0x2

    .line 371
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 372
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v11

    .line 373
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v12

    .line 374
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v13

    .line 375
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    .line 376
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    add-int/lit8 v15, p1, -0xa

    .line 379
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-lez v15, :cond_2

    .line 381
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 382
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v6

    .line 383
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v20

    const/16 v5, 0xc

    .line 384
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v21

    move/from16 v25, v14

    const/4 v14, 0x4

    .line 385
    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 386
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v22

    add-int/lit8 v15, v15, -0x6

    const/4 v5, 0x1

    const/16 v17, 0x0

    if-eq v6, v5, :cond_1

    const/4 v5, 0x2

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v5, 0x8

    .line 392
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v16

    .line 393
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v17

    add-int/lit8 v15, v15, -0x2

    move/from16 v23, v16

    move/from16 v24, v17

    .line 397
    :goto_2
    new-instance v5, Landroidx/media2/exoplayer/external/text/b/b$g;

    move-object/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v18 .. v24}, Landroidx/media2/exoplayer/external/text/b/b$g;-><init>(IIIIII)V

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v14, v25

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x10

    goto :goto_0

    :cond_2
    move/from16 v25, v14

    .line 402
    new-instance v0, Landroidx/media2/exoplayer/external/text/b/b$f;

    move-object v2, v0

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v25

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/text/b/b$f;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static a([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 22

    move/from16 v0, p2

    move-object/from16 v7, p5

    .line 610
    new-instance v8, Landroidx/media2/exoplayer/external/util/o;

    move-object/from16 v1, p0

    invoke-direct {v8, v1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    move/from16 v1, p3

    move/from16 v10, p4

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 617
    :goto_0
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result v2

    if-eqz v2, :cond_20

    const/16 v13, 0x8

    .line 618
    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_1f

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x10

    .line 654
    invoke-static {v2, v13, v8}, Landroidx/media2/exoplayer/external/text/b/b;->a(IILandroidx/media2/exoplayer/external/util/o;)[B

    move-result-object v11

    goto :goto_0

    .line 651
    :pswitch_1
    invoke-static {v15, v13, v8}, Landroidx/media2/exoplayer/external/text/b/b;->a(IILandroidx/media2/exoplayer/external/util/o;)[B

    move-result-object v11

    goto :goto_0

    .line 648
    :pswitch_2
    invoke-static {v15, v15, v8}, Landroidx/media2/exoplayer/external/text/b/b;->a(IILandroidx/media2/exoplayer/external/util/o;)[B

    move-result-object v12

    goto :goto_0

    :pswitch_3
    move v14, v1

    const/4 v1, 0x0

    .line 2778
    :goto_1
    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v15, v1

    const/16 v17, 0x1

    goto :goto_2

    .line 2783
    :cond_0
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    const/4 v3, 0x7

    if-nez v2, :cond_2

    .line 2784
    invoke-virtual {v8, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v15, v1

    move/from16 v17, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    goto :goto_2

    .line 2792
    :cond_2
    invoke-virtual {v8, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 2793
    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    move v15, v1

    move/from16 v17, v2

    move v2, v3

    :goto_2
    if-eqz v17, :cond_3

    if-eqz v7, :cond_3

    .line 2798
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v14

    int-to-float v3, v10

    add-int v1, v14, v17

    int-to-float v4, v1

    add-int/lit8 v1, v10, 0x1

    int-to-float v5, v1

    move-object/from16 v1, p6

    const/4 v9, 0x1

    move-object/from16 v6, p5

    .line 2799
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    const/4 v9, 0x1

    :goto_3
    add-int v14, v14, v17

    if-eqz v15, :cond_4

    move v1, v14

    goto :goto_0

    :cond_4
    move v1, v15

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_4
    const/4 v9, 0x1

    if-ne v0, v14, :cond_5

    .line 636
    sget-object v2, Landroidx/media2/exoplayer/external/text/b/b;->d:[B

    move-object/from16 v17, v2

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    :goto_4
    move v6, v1

    const/4 v1, 0x0

    .line 2724
    :goto_5
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v18, v1

    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_9

    .line 2728
    :cond_6
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2729
    invoke-virtual {v8, v14}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v2, v2, 0x2

    move/from16 v18, v1

    move/from16 v19, v2

    const/4 v2, 0x0

    goto :goto_9

    :cond_7
    const/4 v2, 0x0

    const/16 v18, 0x1

    goto :goto_8

    .line 2736
    :cond_8
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2737
    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/2addr v2, v15

    .line 2738
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    :goto_7
    move/from16 v18, v1

    move/from16 v19, v2

    move v2, v3

    goto :goto_9

    .line 2740
    :cond_9
    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_d

    if-eq v2, v9, :cond_c

    if-eq v2, v5, :cond_b

    if-eq v2, v14, :cond_a

    move/from16 v18, v1

    const/4 v2, 0x0

    :goto_8
    const/16 v19, 0x0

    goto :goto_9

    .line 2752
    :cond_a
    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    .line 2753
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    goto :goto_7

    .line 2748
    :cond_b
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    .line 2749
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    goto :goto_7

    :cond_c
    move/from16 v18, v1

    const/4 v2, 0x0

    const/16 v19, 0x2

    goto :goto_9

    :cond_d
    move/from16 v18, v1

    const/4 v2, 0x0

    goto :goto_6

    :goto_9
    if-eqz v19, :cond_f

    if-eqz v7, :cond_f

    if-eqz v17, :cond_e

    .line 2759
    aget-byte v2, v17, v2

    :cond_e
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v6

    int-to-float v3, v10

    add-int v1, v6, v19

    int-to-float v4, v1

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    move/from16 v20, v1

    move-object/from16 v1, p6

    const/4 v15, 0x2

    move/from16 v5, v20

    move/from16 v20, v6

    move-object/from16 v6, p5

    .line 2760
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_f
    move/from16 v20, v6

    const/4 v15, 0x2

    :goto_a
    add-int v6, v20, v19

    if-eqz v18, :cond_10

    .line 642
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->f()V

    :goto_b
    move v1, v6

    goto/16 :goto_0

    :cond_10
    move/from16 v1, v18

    const/4 v5, 0x2

    const/4 v15, 0x4

    goto/16 :goto_5

    :pswitch_5
    const/4 v9, 0x1

    const/4 v15, 0x2

    if-ne v0, v14, :cond_12

    if-nez v11, :cond_11

    .line 623
    sget-object v2, Landroidx/media2/exoplayer/external/text/b/b;->c:[B

    goto :goto_c

    :cond_11
    move-object v2, v11

    :goto_c
    move-object/from16 v17, v2

    goto :goto_d

    :cond_12
    if-ne v0, v15, :cond_14

    if-nez v12, :cond_13

    .line 625
    sget-object v2, Landroidx/media2/exoplayer/external/text/b/b;->b:[B

    goto :goto_c

    :cond_13
    move-object v2, v12

    goto :goto_c

    :cond_14
    const/16 v17, 0x0

    :goto_d
    move v6, v1

    const/4 v1, 0x0

    .line 2676
    :goto_e
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_15

    move/from16 v18, v1

    :goto_f
    const/4 v5, 0x4

    const/16 v19, 0x1

    goto :goto_12

    .line 2680
    :cond_15
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2681
    invoke-virtual {v8, v14}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/2addr v2, v14

    .line 2682
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    :goto_10
    move/from16 v18, v1

    move/from16 v19, v2

    move v2, v3

    const/4 v5, 0x4

    goto :goto_12

    .line 2683
    :cond_16
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    move/from16 v18, v1

    const/4 v2, 0x0

    goto :goto_f

    .line 2686
    :cond_17
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    if-eqz v2, :cond_1b

    if-eq v2, v9, :cond_1a

    if-eq v2, v15, :cond_19

    if-eq v2, v14, :cond_18

    move/from16 v18, v1

    const/4 v2, 0x0

    const/4 v5, 0x4

    :goto_11
    const/16 v19, 0x0

    goto :goto_12

    .line 2698
    :cond_18
    invoke-virtual {v8, v13}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    .line 2699
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    goto :goto_10

    :cond_19
    const/4 v5, 0x4

    .line 2694
    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    .line 2695
    invoke-virtual {v8, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    move/from16 v18, v1

    move/from16 v19, v2

    move v2, v3

    goto :goto_12

    :cond_1a
    const/4 v5, 0x4

    move/from16 v18, v1

    const/4 v2, 0x0

    const/16 v19, 0x2

    goto :goto_12

    :cond_1b
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v18, 0x1

    goto :goto_11

    :goto_12
    if-eqz v19, :cond_1d

    if-eqz v7, :cond_1d

    if-eqz v17, :cond_1c

    .line 2705
    aget-byte v2, v17, v2

    :cond_1c
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v6

    int-to-float v3, v10

    add-int v1, v6, v19

    int-to-float v4, v1

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    move/from16 v20, v1

    move-object/from16 v1, p6

    const/16 v21, 0x4

    move/from16 v5, v20

    move/from16 v20, v6

    move-object/from16 v6, p5

    .line 2706
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_13

    :cond_1d
    move/from16 v20, v6

    const/16 v21, 0x4

    :goto_13
    add-int v6, v20, v19

    if-eqz v18, :cond_1e

    .line 631
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/o;->f()V

    goto/16 :goto_b

    :cond_1e
    move/from16 v1, v18

    goto/16 :goto_e

    :cond_1f
    add-int/lit8 v10, v10, 0x2

    move/from16 v1, p3

    goto/16 :goto_0

    :cond_20
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(IILandroidx/media2/exoplayer/external/util/o;)[B
    .locals 3

    .line 808
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 810
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 505
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1000000
        -0x808081
    .end array-data
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/o;I)Landroidx/media2/exoplayer/external/text/b/b$a;
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 410
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 411
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x2

    .line 414
    invoke-static {}, Landroidx/media2/exoplayer/external/text/b/b;->a()[I

    move-result-object v5

    .line 415
    invoke-static {}, Landroidx/media2/exoplayer/external/text/b/b;->b()[I

    move-result-object v6

    .line 416
    invoke-static {}, Landroidx/media2/exoplayer/external/text/b/b;->c()[I

    move-result-object v7

    :goto_0
    if-lez v4, :cond_4

    .line 419
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    .line 420
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    add-int/lit8 v4, v4, -0x2

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_0

    move-object v10, v5

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_1

    move-object v10, v6

    goto :goto_1

    :cond_1
    move-object v10, v7

    :goto_1
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    .line 437
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    .line 438
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v11

    .line 439
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v12

    .line 440
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v13

    add-int/lit8 v4, v4, -0x4

    goto :goto_2

    :cond_2
    const/4 v9, 0x6

    .line 443
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v11

    shl-int/2addr v11, v3

    const/4 v12, 0x4

    .line 444
    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v13

    shl-int/2addr v13, v12

    .line 445
    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    .line 446
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    shl-int/lit8 v9, v14, 0x6

    add-int/lit8 v4, v4, -0x2

    move/from16 v21, v13

    move v13, v9

    move v9, v11

    move/from16 v11, v21

    :goto_2
    const/16 v15, 0xff

    if-nez v9, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xff

    :cond_3
    and-int/2addr v13, v15

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    move/from16 p1, v4

    int-to-double v3, v9

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v11, v11, -0x80

    move/from16 v18, v2

    int-to-double v1, v11

    mul-double v16, v16, v1

    move-object v11, v10

    add-double v9, v3, v16

    double-to-int v9, v9

    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v12, v12, -0x80

    int-to-double v14, v12

    mul-double v16, v16, v14

    sub-double v16, v3, v16

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v1, v1, v19

    sub-double v1, v16, v1

    double-to-int v1, v1

    const-wide v16, 0x3ffc5a1cac083127L    # 1.772

    mul-double v14, v14, v16

    add-double/2addr v3, v14

    double-to-int v2, v3

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 460
    invoke-static {v9, v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v9

    .line 461
    invoke-static {v1, v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v1

    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v2

    .line 460
    invoke-static {v13, v9, v1, v2}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v1

    aput v1, v11, v8

    move/from16 v4, p1

    move/from16 v2, v18

    const/16 v1, 0x8

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    move/from16 v18, v2

    .line 464
    new-instance v0, Landroidx/media2/exoplayer/external/text/b/b$a;

    move/from16 v1, v18

    invoke-direct {v0, v1, v5, v6, v7}, Landroidx/media2/exoplayer/external/text/b/b$a;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static b()[I
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0xff

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    const/16 v7, 0xff

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 518
    :goto_3
    invoke-static {v5, v4, v6, v7}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    :cond_3
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    const/16 v4, 0x7f

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    const/16 v7, 0x7f

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 524
    :goto_6
    invoke-static {v5, v4, v7, v6}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private static c()[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    const/16 v4, 0x3f

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_0

    const/16 v6, 0xff

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_1

    const/16 v7, 0xff

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 539
    :goto_3
    invoke-static {v4, v6, v7, v5}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_19

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_12

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_b

    const/16 v4, 0x88

    if-eq v6, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    const/16 v4, 0x2b

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    const/16 v6, 0x55

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_7

    const/16 v6, 0x2b

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_8

    const/16 v9, 0x55

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    add-int/2addr v7, v8

    .line 568
    invoke-static {v5, v4, v6, v7}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c

    const/16 v4, 0x2b

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_d

    const/16 v6, 0x55

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_e

    const/16 v6, 0x2b

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_f

    const/16 v10, 0x55

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    :goto_f
    add-int/2addr v7, v8

    .line 561
    invoke-static {v5, v4, v6, v7}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_13

    const/16 v4, 0x55

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_14

    const/16 v5, 0xaa

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_15

    const/16 v5, 0x55

    goto :goto_12

    :cond_15
    const/4 v5, 0x0

    :goto_12
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    const/16 v6, 0xaa

    goto :goto_13

    :cond_16
    const/4 v6, 0x0

    :goto_13
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_17

    goto :goto_14

    :cond_17
    const/4 v8, 0x0

    :goto_14
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_18

    goto :goto_15

    :cond_18
    const/4 v7, 0x0

    :goto_15
    add-int/2addr v8, v7

    .line 554
    invoke-static {v9, v4, v5, v8}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1a

    const/16 v4, 0x55

    goto :goto_16

    :cond_1a
    const/4 v4, 0x0

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_1b

    const/16 v6, 0xaa

    goto :goto_17

    :cond_1b
    const/4 v6, 0x0

    :goto_17
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1c

    const/16 v6, 0x55

    goto :goto_18

    :cond_1c
    const/4 v6, 0x0

    :goto_18
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_1d

    const/16 v9, 0xaa

    goto :goto_19

    :cond_1d
    const/4 v9, 0x0

    :goto_19
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v8, 0x0

    :goto_1a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v7, 0x0

    :goto_1b
    add-int/2addr v8, v7

    .line 547
    invoke-static {v5, v4, v6, v8}, Landroidx/media2/exoplayer/external/text/b/b;->a(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method


# virtual methods
.method public final a([BI)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 134
    new-instance v1, Landroidx/media2/exoplayer/external/util/o;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/o;-><init>([BI)V

    .line 135
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-lt v2, v3, :cond_9

    const/16 v2, 0x8

    .line 136
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    const/16 v8, 0xf

    if-ne v3, v8, :cond_9

    .line 137
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    .line 1237
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    const/16 v9, 0x10

    .line 1238
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    .line 1239
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v11

    .line 1240
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->c()I

    move-result v12

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    .line 1242
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result v14

    if-le v13, v14, :cond_0

    const-string v2, "DvbParser"

    const-string v3, "Data field length exceeds limit"

    .line 1243
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x4

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 1251
    :pswitch_0
    iget v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->a:I

    if-ne v10, v2, :cond_7

    .line 1310
    invoke-virtual {v1, v13}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1311
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    .line 1312
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1313
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    .line 1314
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v15

    if-eqz v2, :cond_1

    .line 1321
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 1322
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 1323
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    .line 1324
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    goto :goto_1

    :cond_1
    move/from16 v17, v14

    move/from16 v19, v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 1332
    :goto_1
    new-instance v2, Landroidx/media2/exoplayer/external/text/b/b$b;

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/media2/exoplayer/external/text/b/b$b;-><init>(IIIIII)V

    .line 1252
    iput-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->h:Landroidx/media2/exoplayer/external/text/b/b$b;

    goto/16 :goto_3

    .line 1289
    :pswitch_1
    iget v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->a:I

    if-ne v10, v2, :cond_2

    .line 1290
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/b/b;->a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/text/b/b$c;

    move-result-object v2

    .line 1291
    iget-object v3, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->e:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/media2/exoplayer/external/text/b/b$c;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1292
    :cond_2
    iget v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->b:I

    if-ne v10, v2, :cond_7

    .line 1293
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/b/b;->a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/text/b/b$c;

    move-result-object v2

    .line 1294
    iget-object v3, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->g:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/media2/exoplayer/external/text/b/b$c;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1280
    :pswitch_2
    iget v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->a:I

    if-ne v10, v2, :cond_3

    .line 1281
    invoke-static {v1, v11}, Landroidx/media2/exoplayer/external/text/b/b;->b(Landroidx/media2/exoplayer/external/util/o;I)Landroidx/media2/exoplayer/external/text/b/b$a;

    move-result-object v2

    .line 1282
    iget-object v3, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->d:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/media2/exoplayer/external/text/b/b$a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1283
    :cond_3
    iget v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->b:I

    if-ne v10, v2, :cond_7

    .line 1284
    invoke-static {v1, v11}, Landroidx/media2/exoplayer/external/text/b/b;->b(Landroidx/media2/exoplayer/external/util/o;I)Landroidx/media2/exoplayer/external/text/b/b$a;

    move-result-object v2

    .line 1285
    iget-object v3, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->f:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/media2/exoplayer/external/text/b/b$a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1270
    :pswitch_3
    iget-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    .line 1271
    iget v4, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->a:I

    if-ne v10, v4, :cond_7

    if-eqz v2, :cond_7

    .line 1272
    invoke-static {v1, v11}, Landroidx/media2/exoplayer/external/text/b/b;->a(Landroidx/media2/exoplayer/external/util/o;I)Landroidx/media2/exoplayer/external/text/b/b$f;

    move-result-object v4

    .line 1273
    iget v2, v2, Landroidx/media2/exoplayer/external/text/b/b$d;->c:I

    if-nez v2, :cond_4

    .line 1274
    iget-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->c:Landroid/util/SparseArray;

    iget v5, v4, Landroidx/media2/exoplayer/external/text/b/b$f;->a:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/text/b/b$f;

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/text/b/b$f;->a(Landroidx/media2/exoplayer/external/text/b/b$f;)V

    .line 1276
    :cond_4
    iget-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->c:Landroid/util/SparseArray;

    iget v3, v4, Landroidx/media2/exoplayer/external/text/b/b$f;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 1256
    :pswitch_4
    iget v4, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->a:I

    if-ne v10, v4, :cond_7

    .line 1257
    iget-object v4, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    .line 1340
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    .line 1341
    invoke-virtual {v1, v13}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    .line 1342
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v13

    .line 1343
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    add-int/lit8 v11, v11, -0x2

    .line 1346
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    if-lez v11, :cond_5

    .line 1348
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    .line 1349
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1350
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v15

    .line 1351
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    add-int/lit8 v11, v11, -0x6

    .line 1353
    new-instance v9, Landroidx/media2/exoplayer/external/text/b/b$e;

    invoke-direct {v9, v15, v2}, Landroidx/media2/exoplayer/external/text/b/b$e;-><init>(II)V

    invoke-virtual {v5, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x8

    const/16 v9, 0x10

    goto :goto_2

    .line 1356
    :cond_5
    new-instance v2, Landroidx/media2/exoplayer/external/text/b/b$d;

    invoke-direct {v2, v8, v10, v13, v5}, Landroidx/media2/exoplayer/external/text/b/b$d;-><init>(IIILandroid/util/SparseArray;)V

    .line 1259
    iget v5, v2, Landroidx/media2/exoplayer/external/text/b/b$d;->c:I

    if-eqz v5, :cond_6

    .line 1260
    iput-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    .line 1261
    iget-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1262
    iget-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1263
    iget-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 1264
    iget v4, v4, Landroidx/media2/exoplayer/external/text/b/b$d;->b:I

    iget v5, v2, Landroidx/media2/exoplayer/external/text/b/b$d;->b:I

    if-eq v4, v5, :cond_7

    .line 1265
    iput-object v2, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    .line 1303
    :cond_7
    :goto_3
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->c()I

    move-result v2

    sub-int/2addr v12, v2

    .line 2268
    iget v2, v1, Landroidx/media2/exoplayer/external/util/o;->c:I

    if-nez v2, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 2269
    iget v2, v1, Landroidx/media2/exoplayer/external/util/o;->b:I

    add-int/2addr v2, v12

    iput v2, v1, Landroidx/media2/exoplayer/external/util/o;->b:I

    .line 2270
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->g()V

    goto/16 :goto_0

    .line 140
    :cond_9
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    if-nez v1, :cond_a

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 145
    :cond_a
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/text/b/b$h;->h:Landroidx/media2/exoplayer/external/text/b/b$b;

    if-eqz v1, :cond_b

    .line 146
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/text/b/b$h;->h:Landroidx/media2/exoplayer/external/text/b/b$b;

    goto :goto_5

    :cond_b
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/b/b;->h:Landroidx/media2/exoplayer/external/text/b/b$b;

    .line 147
    :goto_5
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/b/b;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    iget v2, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->a:I

    add-int/2addr v2, v7

    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_c

    iget v2, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->b:I

    add-int/2addr v2, v7

    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->j:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 149
    :cond_c
    iget v2, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->a:I

    add-int/2addr v2, v7

    iget v3, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->b:I

    add-int/2addr v3, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/text/b/b;->j:Landroid/graphics/Bitmap;

    .line 151
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/text/b/b$h;->i:Landroidx/media2/exoplayer/external/text/b/b$d;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/text/b/b$d;->d:Landroid/util/SparseArray;

    const/4 v8, 0x0

    .line 157
    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_18

    .line 159
    iget-object v9, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 160
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/exoplayer/external/text/b/b$e;

    .line 161
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 162
    iget-object v11, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/text/b/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/text/b/b$f;

    .line 165
    iget v11, v9, Landroidx/media2/exoplayer/external/text/b/b$e;->a:I

    iget v12, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->c:I

    add-int/2addr v11, v12

    .line 167
    iget v9, v9, Landroidx/media2/exoplayer/external/text/b/b$e;->b:I

    iget v12, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->e:I

    add-int/2addr v9, v12

    .line 169
    iget v12, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->c:I

    add-int/2addr v12, v11

    iget v13, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->d:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 171
    iget v13, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->d:I

    add-int/2addr v13, v9

    iget v14, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->f:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 173
    iget-object v14, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    invoke-virtual {v14, v11, v9, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 174
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/text/b/b$h;->d:Landroid/util/SparseArray;

    iget v13, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->g:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media2/exoplayer/external/text/b/b$a;

    if-nez v12, :cond_e

    .line 176
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/text/b/b$h;->f:Landroid/util/SparseArray;

    iget v13, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->g:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media2/exoplayer/external/text/b/b$a;

    if-nez v12, :cond_e

    .line 178
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/b/b;->i:Landroidx/media2/exoplayer/external/text/b/b$a;

    .line 182
    :cond_e
    iget-object v13, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->k:Landroid/util/SparseArray;

    const/4 v14, 0x0

    .line 183
    :goto_7
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_14

    .line 184
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 185
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroidx/media2/exoplayer/external/text/b/b$g;

    .line 186
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/text/b/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/text/b/b$c;

    if-nez v7, :cond_f

    .line 188
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/b/b;->a:Landroidx/media2/exoplayer/external/text/b/b$h;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/text/b/b$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/text/b/b$c;

    :cond_f
    if-eqz v7, :cond_13

    .line 191
    iget-boolean v15, v7, Landroidx/media2/exoplayer/external/text/b/b$c;->b:Z

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    goto :goto_8

    :cond_10
    iget-object v15, v0, Landroidx/media2/exoplayer/external/text/b/b;->e:Landroid/graphics/Paint;

    .line 192
    :goto_8
    iget v5, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->f:I

    iget v4, v6, Landroidx/media2/exoplayer/external/text/b/b$g;->c:I

    add-int/2addr v4, v11

    iget v6, v6, Landroidx/media2/exoplayer/external/text/b/b$g;->d:I

    add-int/2addr v6, v9

    move-object/from16 v23, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    move-object/from16 v24, v13

    const/4 v13, 0x3

    if-ne v5, v13, :cond_11

    .line 2593
    iget-object v13, v12, Landroidx/media2/exoplayer/external/text/b/b$a;->d:[I

    :goto_9
    move/from16 v25, v8

    goto :goto_a

    :cond_11
    const/4 v13, 0x2

    if-ne v5, v13, :cond_12

    .line 2595
    iget-object v13, v12, Landroidx/media2/exoplayer/external/text/b/b$a;->c:[I

    goto :goto_9

    .line 2597
    :cond_12
    iget-object v13, v12, Landroidx/media2/exoplayer/external/text/b/b$a;->b:[I

    goto :goto_9

    .line 2599
    :goto_a
    iget-object v8, v7, Landroidx/media2/exoplayer/external/text/b/b$c;->c:[B

    move-object/from16 v16, v8

    move-object/from16 v17, v13

    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v21, v15

    move-object/from16 v22, v3

    invoke-static/range {v16 .. v22}, Landroidx/media2/exoplayer/external/text/b/b;->a([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 2601
    iget-object v7, v7, Landroidx/media2/exoplayer/external/text/b/b$c;->d:[B

    const/4 v8, 0x1

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v22}, Landroidx/media2/exoplayer/external/text/b/b;->a([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_b

    :cond_13
    move-object/from16 v23, v3

    move/from16 v25, v8

    move-object/from16 v24, v13

    const/4 v8, 0x1

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v23

    move-object/from16 v13, v24

    move/from16 v8, v25

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_14
    move-object/from16 v23, v3

    move/from16 v25, v8

    const/4 v8, 0x1

    .line 198
    iget-boolean v3, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->b:Z

    if-eqz v3, :cond_17

    .line 200
    iget v3, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->f:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    .line 201
    iget-object v3, v12, Landroidx/media2/exoplayer/external/text/b/b$a;->d:[I

    iget v5, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->h:I

    aget v3, v3, v5

    const/4 v5, 0x2

    goto :goto_c

    .line 202
    :cond_15
    iget v3, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->f:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_16

    .line 203
    iget-object v3, v12, Landroidx/media2/exoplayer/external/text/b/b$a;->c:[I

    iget v6, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->i:I

    aget v3, v3, v6

    goto :goto_c

    .line 205
    :cond_16
    iget-object v3, v12, Landroidx/media2/exoplayer/external/text/b/b$a;->b:[I

    iget v6, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->j:I

    aget v3, v3, v6

    .line 207
    :goto_c
    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/b/b;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    int-to-float v13, v11

    int-to-float v14, v9

    iget v3, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->c:I

    add-int/2addr v3, v11

    int-to-float v15, v3

    iget v3, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->d:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    iget-object v6, v0, Landroidx/media2/exoplayer/external/text/b/b;->f:Landroid/graphics/Paint;

    move/from16 v16, v3

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_17
    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 214
    :goto_d
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->j:Landroid/graphics/Bitmap;

    iget v6, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->c:I

    iget v7, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->d:I

    invoke-static {v3, v11, v9, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 216
    new-instance v3, Landroidx/media2/exoplayer/external/text/a;

    int-to-float v6, v11

    iget v7, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->a:I

    int-to-float v7, v7

    div-float v14, v6, v7

    const/4 v15, 0x0

    int-to-float v6, v9

    iget v7, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->b:I

    int-to-float v7, v7

    div-float v16, v6, v7

    const/16 v17, 0x0

    iget v6, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->c:I

    int-to-float v6, v6

    iget v7, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->a:I

    int-to-float v7, v7

    div-float v18, v6, v7

    iget v6, v10, Landroidx/media2/exoplayer/external/text/b/b$f;->d:I

    int-to-float v6, v6

    iget v7, v1, Landroidx/media2/exoplayer/external/text/b/b$b;->b:I

    int-to-float v7, v7

    div-float v19, v6, v7

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Landroidx/media2/exoplayer/external/text/a;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/b/b;->g:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v25, 0x1

    move v8, v3

    move-object/from16 v3, v23

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 226
    :cond_18
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
