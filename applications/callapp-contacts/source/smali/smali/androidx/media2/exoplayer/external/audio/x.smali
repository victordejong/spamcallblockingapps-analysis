.class final Landroidx/media2/exoplayer/external/audio/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:F

.field final c:F

.field final d:F

.field final e:I

.field f:[S

.field g:I

.field h:[S

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:[S

.field private v:[S


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/x;->r:I

    .line 77
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    .line 78
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/x;->b:F

    .line 79
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/x;->c:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    .line 80
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/x;->d:F

    .line 81
    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Landroidx/media2/exoplayer/external/audio/x;->s:I

    .line 82
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/x;->t:I

    mul-int/lit8 p1, p1, 0x2

    .line 83
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    .line 84
    new-array p3, p1, [S

    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/x;->u:[S

    mul-int p3, p1, p2

    .line 85
    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    mul-int p3, p1, p2

    .line 86
    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    mul-int p1, p1, p2

    .line 87
    new-array p1, p1, [S

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/x;->v:[S

    return-void
.end method

.method private a([SIII)I
    .locals 9

    .line 243
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p3, p4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 247
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 248
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 249
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_1

    move v3, p3

    move v0, v6

    :cond_1
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_2

    move v2, p3

    move v4, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 263
    :cond_3
    div-int/2addr v0, v3

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/x;->p:I

    .line 264
    div-int/2addr v4, v2

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/x;->q:I

    return v3
.end method

.method private static a(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 504
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([SII)V
    .locals 3

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    invoke-virtual {p0, v0, v1, p3}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    .line 204
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int p2, p2, v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    mul-int v2, v2, v1

    mul-int v1, v1, p3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    return-void
.end method

.method private c([SII)V
    .locals 6

    .line 223
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    div-int/2addr v0, p3

    .line 224
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 229
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_0
    div-int/2addr v4, p3

    .line 232
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/x;->u:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 169
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method final a([SII)[S
    .locals 2

    .line 186
    array-length v0, p1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 190
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 191
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

.method final b()V
    .locals 20

    move-object/from16 v0, p0

    .line 476
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    .line 477
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->b:F

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->c:F

    div-float/2addr v2, v3

    .line 478
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->d:F

    mul-float v4, v4, v3

    float-to-double v5, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide v9, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v11, v5, v9

    if-gtz v11, :cond_1

    const-wide v9, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v11, v5, v9

    if-gez v11, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    iget v5, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    invoke-direct {v0, v2, v7, v5}, Landroidx/media2/exoplayer/external/audio/x;->b([SII)V

    .line 483
    iput v7, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    goto/16 :goto_a

    .line 1454
    :cond_1
    :goto_0
    iget v9, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    iget v10, v0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    if-lt v9, v10, :cond_12

    const/4 v10, 0x0

    .line 1460
    :goto_1
    iget v11, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    if-lez v11, :cond_2

    .line 2214
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2215
    iget-object v12, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    invoke-direct {v0, v12, v10, v11}, Landroidx/media2/exoplayer/external/audio/x;->b([SII)V

    .line 2216
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    sub-int/2addr v12, v11

    iput v12, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    add-int/2addr v10, v11

    goto/16 :goto_9

    .line 1463
    :cond_2
    iget-object v11, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    .line 2294
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->r:I

    const/16 v13, 0xfa0

    if-le v12, v13, :cond_3

    div-int/lit16 v12, v12, 0xfa0

    goto :goto_2

    :cond_3
    const/4 v12, 0x1

    .line 2295
    :goto_2
    iget v13, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    if-ne v13, v8, :cond_4

    if-ne v12, v8, :cond_4

    .line 2296
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->s:I

    iget v13, v0, Landroidx/media2/exoplayer/external/audio/x;->t:I

    invoke-direct {v0, v11, v10, v12, v13}, Landroidx/media2/exoplayer/external/audio/x;->a([SIII)I

    move-result v11

    goto :goto_3

    .line 2298
    :cond_4
    invoke-direct {v0, v11, v10, v12}, Landroidx/media2/exoplayer/external/audio/x;->c([SII)V

    .line 2299
    iget-object v13, v0, Landroidx/media2/exoplayer/external/audio/x;->u:[S

    iget v14, v0, Landroidx/media2/exoplayer/external/audio/x;->s:I

    div-int/2addr v14, v12

    iget v15, v0, Landroidx/media2/exoplayer/external/audio/x;->t:I

    div-int/2addr v15, v12

    invoke-direct {v0, v13, v7, v14, v15}, Landroidx/media2/exoplayer/external/audio/x;->a([SIII)I

    move-result v13

    if-eq v12, v8, :cond_8

    mul-int v13, v13, v12

    mul-int/lit8 v12, v12, 0x4

    sub-int v14, v13, v12

    add-int/2addr v13, v12

    .line 2304
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->s:I

    if-ge v14, v12, :cond_5

    move v14, v12

    .line 2307
    :cond_5
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->t:I

    if-le v13, v12, :cond_6

    move v13, v12

    .line 2310
    :cond_6
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    if-ne v12, v8, :cond_7

    .line 2311
    invoke-direct {v0, v11, v10, v14, v13}, Landroidx/media2/exoplayer/external/audio/x;->a([SIII)I

    move-result v11

    goto :goto_3

    .line 2313
    :cond_7
    invoke-direct {v0, v11, v10, v8}, Landroidx/media2/exoplayer/external/audio/x;->c([SII)V

    .line 2314
    iget-object v11, v0, Landroidx/media2/exoplayer/external/audio/x;->u:[S

    invoke-direct {v0, v11, v7, v14, v13}, Landroidx/media2/exoplayer/external/audio/x;->a([SIII)I

    move-result v11

    goto :goto_3

    :cond_8
    move v11, v13

    .line 2318
    :goto_3
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->p:I

    iget v13, v0, Landroidx/media2/exoplayer/external/audio/x;->q:I

    if-eqz v12, :cond_c

    .line 3273
    iget v14, v0, Landroidx/media2/exoplayer/external/audio/x;->n:I

    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    mul-int/lit8 v14, v12, 0x3

    if-le v13, v14, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v13, v12, 0x2

    .line 3280
    iget v14, v0, Landroidx/media2/exoplayer/external/audio/x;->o:I

    mul-int/lit8 v14, v14, 0x3

    if-gt v13, v14, :cond_b

    goto :goto_4

    :cond_b
    const/4 v13, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_d

    .line 2319
    iget v13, v0, Landroidx/media2/exoplayer/external/audio/x;->n:I

    move v15, v13

    goto :goto_6

    :cond_d
    move v15, v11

    .line 2323
    :goto_6
    iput v12, v0, Landroidx/media2/exoplayer/external/audio/x;->o:I

    .line 2324
    iput v11, v0, Landroidx/media2/exoplayer/external/audio/x;->n:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/high16 v13, 0x40000000    # 2.0f

    cmpl-double v14, v5, v11

    if-lez v14, :cond_f

    .line 1465
    iget-object v14, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    cmpl-float v11, v2, v13

    if-ltz v11, :cond_e

    int-to-float v11, v15

    sub-float v12, v2, v3

    div-float/2addr v11, v12

    float-to-int v11, v11

    move v13, v11

    goto :goto_7

    :cond_e
    int-to-float v11, v15

    sub-float/2addr v13, v2

    mul-float v11, v11, v13

    sub-float v12, v2, v3

    div-float/2addr v11, v12

    float-to-int v11, v11

    .line 3407
    iput v11, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    move v13, v15

    .line 3409
    :goto_7
    iget-object v11, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    invoke-virtual {v0, v11, v12, v13}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v12

    iput-object v12, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    .line 3410
    iget v11, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int v18, v10, v15

    move/from16 v16, v11

    move v11, v13

    move-object/from16 v17, v12

    move/from16 v12, v16

    move/from16 v19, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move v14, v8

    move v8, v15

    move-object/from16 v15, v17

    move/from16 v16, v10

    invoke-static/range {v11 .. v18}, Landroidx/media2/exoplayer/external/audio/x;->a(II[SI[SI[SI)V

    .line 3419
    iget v11, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int v11, v11, v19

    iput v11, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int v15, v8, v19

    add-int/2addr v10, v15

    goto :goto_9

    :cond_f
    move v8, v15

    .line 1467
    iget-object v15, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    const/high16 v11, 0x3f000000    # 0.5f

    cmpg-float v11, v2, v11

    if-gez v11, :cond_10

    int-to-float v11, v8

    mul-float v11, v11, v2

    sub-float v12, v3, v2

    div-float/2addr v11, v12

    float-to-int v11, v11

    move/from16 v19, v11

    goto :goto_8

    :cond_10
    int-to-float v11, v8

    mul-float v13, v13, v2

    sub-float/2addr v13, v3

    mul-float v11, v11, v13

    sub-float v12, v3, v2

    div-float/2addr v11, v12

    float-to-int v11, v11

    .line 3430
    iput v11, v0, Landroidx/media2/exoplayer/external/audio/x;->m:I

    move/from16 v19, v8

    .line 3432
    :goto_8
    iget-object v11, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int v14, v8, v19

    .line 3433
    invoke-virtual {v0, v11, v12, v14}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v11

    iput-object v11, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    .line 3434
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v13, v10, v12

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    mul-int v3, v3, v12

    mul-int v12, v12, v8

    invoke-static {v15, v13, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3440
    iget v12, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    iget-object v13, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int/2addr v3, v8

    add-int v16, v10, v8

    move/from16 v11, v19

    move v8, v14

    move v14, v3

    move-object v3, v15

    move-object/from16 v17, v3

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Landroidx/media2/exoplayer/external/audio/x;->a(II[SI[SI[SI)V

    .line 3449
    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int/2addr v3, v8

    iput v3, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int v10, v10, v19

    .line 1470
    :goto_9
    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->e:I

    add-int/2addr v3, v10

    if-le v3, v9, :cond_11

    .line 4196
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    sub-int/2addr v2, v10

    .line 4197
    iget-object v3, v0, Landroidx/media2/exoplayer/external/audio/x;->f:[S

    iget v5, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v10, v10, v5

    mul-int v5, v5, v2

    invoke-static {v3, v10, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4199
    iput v2, v0, Landroidx/media2/exoplayer/external/audio/x;->g:I

    goto :goto_a

    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_12
    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_1a

    .line 4366
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    if-eq v2, v1, :cond_1a

    .line 4369
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->r:I

    int-to-float v3, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_b
    const/16 v4, 0x4000

    if-gt v3, v4, :cond_19

    if-le v2, v4, :cond_13

    goto/16 :goto_10

    .line 5329
    :cond_13
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    sub-int/2addr v4, v1

    .line 5330
    iget-object v5, v0, Landroidx/media2/exoplayer/external/audio/x;->v:[S

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    invoke-virtual {v0, v5, v6, v4}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/audio/x;->v:[S

    .line 5331
    iget-object v6, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v9, v1, v8

    iget v10, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    mul-int v10, v10, v8

    mul-int v8, v8, v4

    invoke-static {v6, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5337
    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    .line 5338
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    add-int/2addr v1, v4

    iput v1, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    const/4 v1, 0x0

    .line 4378
    :goto_c
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_18

    .line 4379
    :goto_d
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->k:I

    add-int/lit8 v5, v4, 0x1

    mul-int v5, v5, v3

    iget v6, v0, Landroidx/media2/exoplayer/external/audio/x;->l:I

    mul-int v8, v6, v2

    if-le v5, v8, :cond_15

    .line 4380
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v5, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    const/4 v6, 0x1

    .line 4381
    invoke-virtual {v0, v4, v5, v6}, Landroidx/media2/exoplayer/external/audio/x;->a([SII)[S

    move-result-object v4

    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    const/4 v4, 0x0

    .line 4383
    :goto_e
    iget v5, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    if-ge v4, v5, :cond_14

    .line 4384
    iget-object v6, v0, Landroidx/media2/exoplayer/external/audio/x;->h:[S

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    mul-int v8, v8, v5

    add-int/2addr v8, v4

    iget-object v9, v0, Landroidx/media2/exoplayer/external/audio/x;->v:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    .line 5355
    aget-short v11, v9, v10

    add-int/2addr v10, v5

    .line 5356
    aget-short v5, v9, v10

    .line 5357
    iget v9, v0, Landroidx/media2/exoplayer/external/audio/x;->l:I

    mul-int v9, v9, v2

    .line 5358
    iget v10, v0, Landroidx/media2/exoplayer/external/audio/x;->k:I

    mul-int v12, v10, v3

    const/4 v13, 0x1

    add-int/2addr v10, v13

    mul-int v10, v10, v3

    sub-int v9, v10, v9

    sub-int/2addr v10, v12

    mul-int v11, v11, v9

    sub-int v9, v10, v9

    mul-int v9, v9, v5

    add-int/2addr v11, v9

    .line 5362
    div-int/2addr v11, v10

    int-to-short v5, v11

    .line 4385
    aput-short v5, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4387
    :cond_14
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->l:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/media2/exoplayer/external/audio/x;->l:I

    .line 4388
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/media2/exoplayer/external/audio/x;->i:I

    goto :goto_d

    :cond_15
    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 4390
    iput v4, v0, Landroidx/media2/exoplayer/external/audio/x;->k:I

    if-ne v4, v2, :cond_17

    .line 4392
    iput v7, v0, Landroidx/media2/exoplayer/external/audio/x;->k:I

    if-ne v6, v3, :cond_16

    const/4 v6, 0x1

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    .line 4393
    :goto_f
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 4394
    iput v7, v0, Landroidx/media2/exoplayer/external/audio/x;->l:I

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v4, -0x1

    if-eqz v1, :cond_1a

    .line 6345
    iget-object v2, v0, Landroidx/media2/exoplayer/external/audio/x;->v:[S

    iget v3, v0, Landroidx/media2/exoplayer/external/audio/x;->a:I

    mul-int v5, v1, v3

    sub-int/2addr v4, v1

    mul-int v4, v4, v3

    invoke-static {v2, v5, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6351
    iget v2, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroidx/media2/exoplayer/external/audio/x;->j:I

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v5, 0x1

    .line 4373
    div-int/lit8 v3, v3, 0x2

    .line 4374
    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_b

    :cond_1a
    :goto_11
    return-void
.end method
