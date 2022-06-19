.class final Lcom/google/android/exoplayer2/audio/s;
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/audio/s;->r:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer2/audio/s;->a:I

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/audio/s;->b:F

    .line 75
    iput p4, p0, Lcom/google/android/exoplayer2/audio/s;->c:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    .line 76
    iput p3, p0, Lcom/google/android/exoplayer2/audio/s;->d:F

    .line 77
    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lcom/google/android/exoplayer2/audio/s;->s:I

    .line 78
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/exoplayer2/audio/s;->t:I

    mul-int/lit8 p1, p1, 0x2

    .line 79
    iput p1, p0, Lcom/google/android/exoplayer2/audio/s;->e:I

    .line 80
    new-array p3, p1, [S

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/s;->u:[S

    mul-int p3, p1, p2

    .line 81
    new-array p3, p3, [S

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    mul-int p3, p1, p2

    .line 82
    new-array p3, p3, [S

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    mul-int p1, p1, p2

    .line 83
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/s;->v:[S

    return-void
.end method

.method private a([SIII)I
    .locals 9

    .line 247
    iget v0, p0, Lcom/google/android/exoplayer2/audio/s;->a:I

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

    .line 251
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 252
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 253
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

    .line 267
    :cond_3
    div-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/s;->p:I

    .line 268
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/exoplayer2/audio/s;->q:I

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

    .line 508
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

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/s;->i:I

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    .line 208
    iget v1, p0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int p2, p2, v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/s;->i:I

    mul-int v2, v2, v1

    mul-int v1, v1, p3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget p1, p0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/audio/s;->i:I

    return-void
.end method

.method private c([SII)V
    .locals 6

    .line 227
    iget v0, p0, Lcom/google/android/exoplayer2/audio/s;->e:I

    div-int/2addr v0, p3

    .line 228
    iget v1, p0, Lcom/google/android/exoplayer2/audio/s;->a:I

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

    .line 233
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_0
    div-int/2addr v4, p3

    .line 236
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/s;->u:[S

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

    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/audio/s;->i:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method final a([SII)[S
    .locals 2

    .line 190
    array-length v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/s;->a:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 194
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 195
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

.method final b()V
    .locals 20

    move-object/from16 v0, p0

    .line 480
    iget v1, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    .line 481
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->b:F

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->c:F

    div-float/2addr v2, v3

    .line 482
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->d:F

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

    .line 486
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/exoplayer2/audio/s;->b([SII)V

    .line 487
    iput v7, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    goto/16 :goto_a

    .line 1458
    :cond_1
    :goto_0
    iget v9, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    iget v10, v0, Lcom/google/android/exoplayer2/audio/s;->e:I

    if-lt v9, v10, :cond_12

    const/4 v10, 0x0

    .line 1464
    :goto_1
    iget v11, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    if-lez v11, :cond_2

    .line 2218
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->e:I

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2219
    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    invoke-direct {v0, v12, v10, v11}, Lcom/google/android/exoplayer2/audio/s;->b([SII)V

    .line 2220
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    sub-int/2addr v12, v11

    iput v12, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    add-int/2addr v10, v11

    goto/16 :goto_9

    .line 1467
    :cond_2
    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    .line 2298
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->r:I

    const/16 v13, 0xfa0

    if-le v12, v13, :cond_3

    div-int/lit16 v12, v12, 0xfa0

    goto :goto_2

    :cond_3
    const/4 v12, 0x1

    .line 2299
    :goto_2
    iget v13, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    if-ne v13, v8, :cond_4

    if-ne v12, v8, :cond_4

    .line 2300
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->s:I

    iget v13, v0, Lcom/google/android/exoplayer2/audio/s;->t:I

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/google/android/exoplayer2/audio/s;->a([SIII)I

    move-result v11

    goto :goto_3

    .line 2302
    :cond_4
    invoke-direct {v0, v11, v10, v12}, Lcom/google/android/exoplayer2/audio/s;->c([SII)V

    .line 2303
    iget-object v13, v0, Lcom/google/android/exoplayer2/audio/s;->u:[S

    iget v14, v0, Lcom/google/android/exoplayer2/audio/s;->s:I

    div-int/2addr v14, v12

    iget v15, v0, Lcom/google/android/exoplayer2/audio/s;->t:I

    div-int/2addr v15, v12

    invoke-direct {v0, v13, v7, v14, v15}, Lcom/google/android/exoplayer2/audio/s;->a([SIII)I

    move-result v13

    if-eq v12, v8, :cond_8

    mul-int v13, v13, v12

    mul-int/lit8 v12, v12, 0x4

    sub-int v14, v13, v12

    add-int/2addr v13, v12

    .line 2308
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->s:I

    if-ge v14, v12, :cond_5

    move v14, v12

    .line 2311
    :cond_5
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->t:I

    if-le v13, v12, :cond_6

    move v13, v12

    .line 2314
    :cond_6
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    if-ne v12, v8, :cond_7

    .line 2315
    invoke-direct {v0, v11, v10, v14, v13}, Lcom/google/android/exoplayer2/audio/s;->a([SIII)I

    move-result v11

    goto :goto_3

    .line 2317
    :cond_7
    invoke-direct {v0, v11, v10, v8}, Lcom/google/android/exoplayer2/audio/s;->c([SII)V

    .line 2318
    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/s;->u:[S

    invoke-direct {v0, v11, v7, v14, v13}, Lcom/google/android/exoplayer2/audio/s;->a([SIII)I

    move-result v11

    goto :goto_3

    :cond_8
    move v11, v13

    .line 2322
    :goto_3
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->p:I

    iget v13, v0, Lcom/google/android/exoplayer2/audio/s;->q:I

    if-eqz v12, :cond_c

    .line 3277
    iget v14, v0, Lcom/google/android/exoplayer2/audio/s;->n:I

    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    mul-int/lit8 v14, v12, 0x3

    if-le v13, v14, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v13, v12, 0x2

    .line 3284
    iget v14, v0, Lcom/google/android/exoplayer2/audio/s;->o:I

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

    .line 2323
    iget v13, v0, Lcom/google/android/exoplayer2/audio/s;->n:I

    move v15, v13

    goto :goto_6

    :cond_d
    move v15, v11

    .line 2327
    :goto_6
    iput v12, v0, Lcom/google/android/exoplayer2/audio/s;->o:I

    .line 2328
    iput v11, v0, Lcom/google/android/exoplayer2/audio/s;->n:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/high16 v13, 0x40000000    # 2.0f

    cmpl-double v14, v5, v11

    if-lez v14, :cond_f

    .line 1469
    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

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

    .line 3411
    iput v11, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    move v13, v15

    .line 3413
    :goto_7
    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    .line 3414
    iget v11, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    iget v8, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

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

    invoke-static/range {v11 .. v18}, Lcom/google/android/exoplayer2/audio/s;->a(II[SI[SI[SI)V

    .line 3423
    iget v11, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int v11, v11, v19

    iput v11, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int v15, v8, v19

    add-int/2addr v10, v15

    goto :goto_9

    :cond_f
    move v8, v15

    .line 1471
    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

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

    .line 3434
    iput v11, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    move/from16 v19, v8

    .line 3436
    :goto_8
    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int v14, v8, v19

    .line 3437
    invoke-virtual {v0, v11, v12, v14}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    .line 3438
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v13, v10, v12

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    mul-int v3, v3, v12

    mul-int v12, v12, v8

    invoke-static {v15, v13, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3444
    iget v12, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    iget-object v13, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int/2addr v3, v8

    add-int v16, v10, v8

    move/from16 v11, v19

    move v8, v14

    move v14, v3

    move-object v3, v15

    move-object/from16 v17, v3

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/google/android/exoplayer2/audio/s;->a(II[SI[SI[SI)V

    .line 3453
    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int v10, v10, v19

    .line 1474
    :goto_9
    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->e:I

    add-int/2addr v3, v10

    if-le v3, v9, :cond_11

    .line 4200
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    sub-int/2addr v2, v10

    .line 4201
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v10, v10, v5

    mul-int v5, v5, v2

    invoke-static {v3, v10, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4203
    iput v2, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

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

    .line 4370
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    if-eq v2, v1, :cond_1a

    .line 4373
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->r:I

    int-to-float v3, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_b
    const/16 v4, 0x4000

    if-gt v3, v4, :cond_19

    if-le v2, v4, :cond_13

    goto/16 :goto_10

    .line 5333
    :cond_13
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    sub-int/2addr v4, v1

    .line 5334
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/s;->v:[S

    iget v6, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    invoke-virtual {v0, v5, v6, v4}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/audio/s;->v:[S

    .line 5335
    iget-object v6, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v8, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v9, v1, v8

    iget v10, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    mul-int v10, v10, v8

    mul-int v8, v8, v4

    invoke-static {v6, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5341
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    .line 5342
    iget v1, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    const/4 v1, 0x0

    .line 4382
    :goto_c
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_18

    .line 4383
    :goto_d
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->k:I

    add-int/lit8 v5, v4, 0x1

    mul-int v5, v5, v3

    iget v6, v0, Lcom/google/android/exoplayer2/audio/s;->l:I

    mul-int v8, v6, v2

    if-le v5, v8, :cond_15

    .line 4384
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    const/4 v6, 0x1

    .line 4385
    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    const/4 v4, 0x0

    .line 4387
    :goto_e
    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    if-ge v4, v5, :cond_14

    .line 4388
    iget-object v6, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v8, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    mul-int v8, v8, v5

    add-int/2addr v8, v4

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/s;->v:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    .line 5359
    aget-short v11, v9, v10

    add-int/2addr v10, v5

    .line 5360
    aget-short v5, v9, v10

    .line 5361
    iget v9, v0, Lcom/google/android/exoplayer2/audio/s;->l:I

    mul-int v9, v9, v2

    .line 5362
    iget v10, v0, Lcom/google/android/exoplayer2/audio/s;->k:I

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

    .line 5366
    div-int/2addr v11, v10

    int-to-short v5, v11

    .line 4389
    aput-short v5, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4391
    :cond_14
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->l:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/exoplayer2/audio/s;->l:I

    .line 4392
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    goto :goto_d

    :cond_15
    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 4394
    iput v4, v0, Lcom/google/android/exoplayer2/audio/s;->k:I

    if-ne v4, v2, :cond_17

    .line 4396
    iput v7, v0, Lcom/google/android/exoplayer2/audio/s;->k:I

    if-ne v6, v3, :cond_16

    const/4 v6, 0x1

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    .line 4397
    :goto_f
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 4398
    iput v7, v0, Lcom/google/android/exoplayer2/audio/s;->l:I

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v4, -0x1

    if-eqz v1, :cond_1a

    .line 6349
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/s;->v:[S

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v5, v1, v3

    sub-int/2addr v4, v1

    mul-int v4, v4, v3

    invoke-static {v2, v5, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6355
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v5, 0x1

    .line 4377
    div-int/lit8 v3, v3, 0x2

    .line 4378
    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_b

    :cond_1a
    :goto_11
    return-void
.end method
