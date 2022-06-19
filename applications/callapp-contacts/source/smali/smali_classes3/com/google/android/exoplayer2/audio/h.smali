.class final Lcom/google/android/exoplayer2/audio/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/h$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Z

.field private E:J

.field private F:J

.field final a:Lcom/google/android/exoplayer2/audio/h$a;

.field b:Landroid/media/AudioTrack;

.field c:I

.field d:Lcom/google/android/exoplayer2/audio/g;

.field e:Z

.field f:J

.field g:Z

.field h:J

.field i:J

.field private final j:[J

.field private k:I

.field private l:I

.field private m:F

.field private n:Z

.field private o:J

.field private p:J

.field private q:Ljava/lang/reflect/Method;

.field private r:J

.field private s:Z

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/h$a;)V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/h$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->a:Lcom/google/android/exoplayer2/audio/h$a;

    .line 194
    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    .line 196
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->q:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 201
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->j:[J

    return-void
.end method

.method private e()J
    .locals 2

    .line 564
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/h;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private e(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 530
    iget v0, p0, Lcom/google/android/exoplayer2/audio/h;->l:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    .line 376
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/h;->k:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 377
    iget p1, p0, Lcom/google/android/exoplayer2/audio/h;->c:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(Z)J
    .locals 23

    move-object/from16 v0, p0

    .line 250
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    if-ne v1, v3, :cond_13

    .line 2444
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/h;->e()J

    move-result-wide v17

    cmp-long v1, v17, v5

    if-eqz v1, :cond_13

    .line 2449
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long v13, v10, v7

    .line 2450
    iget-wide v10, v0, Lcom/google/android/exoplayer2/audio/h;->p:J

    sub-long v10, v13, v10

    const-wide/16 v15, 0x7530

    cmp-long v1, v10, v15

    if-ltz v1, :cond_1

    .line 2452
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->j:[J

    iget v10, v0, Lcom/google/android/exoplayer2/audio/h;->x:I

    sub-long v11, v17, v13

    aput-wide v11, v1, v10

    add-int/2addr v10, v9

    const/16 v1, 0xa

    .line 2453
    rem-int/2addr v10, v1

    iput v10, v0, Lcom/google/android/exoplayer2/audio/h;->x:I

    .line 2454
    iget v10, v0, Lcom/google/android/exoplayer2/audio/h;->y:I

    if-ge v10, v1, :cond_0

    add-int/2addr v10, v9

    .line 2455
    iput v10, v0, Lcom/google/android/exoplayer2/audio/h;->y:I

    .line 2457
    :cond_0
    iput-wide v13, v0, Lcom/google/android/exoplayer2/audio/h;->p:J

    .line 2458
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/h;->o:J

    const/4 v1, 0x0

    .line 2459
    :goto_0
    iget v10, v0, Lcom/google/android/exoplayer2/audio/h;->y:I

    if-ge v1, v10, :cond_1

    .line 2460
    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/h;->o:J

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/h;->j:[J

    aget-wide v19, v15, v1

    int-to-long v5, v10

    div-long v19, v19, v5

    add-long v11, v11, v19

    iput-wide v11, v0, Lcom/google/android/exoplayer2/audio/h;->o:J

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v5, 0x0

    goto :goto_0

    .line 2464
    :cond_1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/h;->e:Z

    if-nez v1, :cond_13

    .line 2475
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/g;

    .line 3121
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/audio/g$a;

    const-wide/32 v19, 0x7a120

    if-eqz v5, :cond_d

    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/g;->e:J

    sub-long v10, v13, v10

    iget-wide v7, v1, Lcom/google/android/exoplayer2/audio/g;->d:J

    cmp-long v5, v10, v7

    if-gez v5, :cond_2

    goto/16 :goto_3

    .line 3124
    :cond_2
    iput-wide v13, v1, Lcom/google/android/exoplayer2/audio/g;->e:J

    .line 3125
    iget-object v5, v1, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3291
    iget-object v7, v5, Lcom/google/android/exoplayer2/audio/g$a;->a:Landroid/media/AudioTrack;

    iget-object v8, v5, Lcom/google/android/exoplayer2/audio/g$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v7, v8}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3293
    iget-object v8, v5, Lcom/google/android/exoplayer2/audio/g$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v8, Landroid/media/AudioTimestamp;->framePosition:J

    move v12, v7

    .line 3294
    iget-wide v6, v5, Lcom/google/android/exoplayer2/audio/g$a;->d:J

    cmp-long v15, v6, v10

    if-lez v15, :cond_3

    .line 3296
    iget-wide v6, v5, Lcom/google/android/exoplayer2/audio/g$a;->c:J

    const-wide/16 v15, 0x1

    add-long/2addr v6, v15

    iput-wide v6, v5, Lcom/google/android/exoplayer2/audio/g$a;->c:J

    .line 3298
    :cond_3
    iput-wide v10, v5, Lcom/google/android/exoplayer2/audio/g$a;->d:J

    .line 3299
    iget-wide v6, v5, Lcom/google/android/exoplayer2/audio/g$a;->c:J

    const/16 v15, 0x20

    shl-long/2addr v6, v15

    add-long/2addr v10, v6

    iput-wide v10, v5, Lcom/google/android/exoplayer2/audio/g$a;->e:J

    goto :goto_1

    :cond_4
    move v12, v7

    .line 3126
    :goto_1
    iget v5, v1, Lcom/google/android/exoplayer2/audio/g;->b:I

    if-eqz v5, :cond_a

    if-eq v5, v9, :cond_8

    if-eq v5, v2, :cond_7

    if-eq v5, v3, :cond_6

    const/4 v3, 0x4

    if-ne v5, v3, :cond_5

    goto :goto_2

    .line 3171
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    if-eqz v12, :cond_c

    .line 3164
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->a()V

    goto :goto_2

    :cond_7
    if-nez v12, :cond_c

    .line 3158
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->a()V

    goto :goto_2

    :cond_8
    if-eqz v12, :cond_9

    .line 3147
    iget-object v3, v1, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/audio/g$a;

    .line 4310
    iget-wide v5, v3, Lcom/google/android/exoplayer2/audio/g$a;->e:J

    .line 3148
    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/g;->f:J

    cmp-long v3, v5, v10

    if-lez v3, :cond_c

    .line 3149
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/g;->a(I)V

    goto :goto_2

    .line 3152
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->a()V

    goto :goto_2

    :cond_a
    if-eqz v12, :cond_b

    .line 3129
    iget-object v3, v1, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/audio/g$a;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/g$a;->a()J

    move-result-wide v5

    iget-wide v10, v1, Lcom/google/android/exoplayer2/audio/g;->c:J

    cmp-long v3, v5, v10

    if-ltz v3, :cond_d

    .line 3131
    iget-object v3, v1, Lcom/google/android/exoplayer2/audio/g;->a:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3310
    iget-wide v5, v3, Lcom/google/android/exoplayer2/audio/g$a;->e:J

    .line 3131
    iput-wide v5, v1, Lcom/google/android/exoplayer2/audio/g;->f:J

    .line 3132
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/audio/g;->a(I)V

    goto :goto_2

    .line 3137
    :cond_b
    iget-wide v5, v1, Lcom/google/android/exoplayer2/audio/g;->c:J

    sub-long v5, v13, v5

    cmp-long v7, v5, v19

    if-lez v7, :cond_c

    .line 3142
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/audio/g;->a(I)V

    :cond_c
    :goto_2
    move v7, v12

    goto :goto_4

    :cond_d
    :goto_3
    const/4 v7, 0x0

    :goto_4
    const-wide/32 v5, 0x4c4b40

    if-eqz v7, :cond_10

    .line 2481
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->b()J

    move-result-wide v15

    .line 2482
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->c()J

    move-result-wide v11

    sub-long v21, v15, v13

    .line 2483
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v21

    cmp-long v3, v21, v5

    if-lez v3, :cond_e

    .line 2484
    iget-object v10, v0, Lcom/google/android/exoplayer2/audio/h;->a:Lcom/google/android/exoplayer2/audio/h$a;

    move-wide/from16 v21, v13

    move-wide v13, v15

    move-wide/from16 v15, v21

    invoke-interface/range {v10 .. v18}, Lcom/google/android/exoplayer2/audio/h$a;->b(JJJJ)V

    const/4 v3, 0x4

    .line 5182
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/audio/g;->a(I)V

    goto :goto_5

    :cond_e
    move-wide/from16 v21, v13

    .line 2490
    invoke-direct {v0, v11, v12}, Lcom/google/android/exoplayer2/audio/h;->e(J)J

    move-result-wide v13

    sub-long v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v3, v13, v5

    if-lez v3, :cond_f

    .line 2492
    iget-object v10, v0, Lcom/google/android/exoplayer2/audio/h;->a:Lcom/google/android/exoplayer2/audio/h$a;

    move-wide v13, v15

    move-wide/from16 v15, v21

    invoke-interface/range {v10 .. v18}, Lcom/google/android/exoplayer2/audio/h$a;->a(JJJJ)V

    const/4 v3, 0x4

    .line 6182
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/audio/g;->a(I)V

    goto :goto_5

    :cond_f
    const/4 v3, 0x4

    .line 6190
    iget v7, v1, Lcom/google/android/exoplayer2/audio/g;->b:I

    if-ne v7, v3, :cond_11

    .line 6191
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->a()V

    goto :goto_5

    :cond_10
    move-wide/from16 v21, v13

    .line 6504
    :cond_11
    :goto_5
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/h;->s:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->q:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->t:J

    move-wide/from16 v10, v21

    sub-long v13, v10, v7

    cmp-long v3, v13, v19

    if-ltz v3, :cond_13

    .line 6510
    :try_start_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    .line 6511
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v12, 0x3e8

    mul-long v7, v7, v12

    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/h;->f:J

    sub-long/2addr v7, v12

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->r:J

    const-wide/16 v12, 0x0

    .line 6515
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->r:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_12

    .line 6518
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->a:Lcom/google/android/exoplayer2/audio/h$a;

    invoke-interface {v1, v7, v8}, Lcom/google/android/exoplayer2/audio/h$a;->b(J)V

    const-wide/16 v5, 0x0

    .line 6519
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/h;->r:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v1, 0x0

    .line 6523
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->q:Ljava/lang/reflect/Method;

    .line 6525
    :cond_12
    :goto_6
    iput-wide v10, v0, Lcom/google/android/exoplayer2/audio/h;->t:J

    .line 256
    :cond_13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 258
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/g;

    .line 7211
    iget v3, v1, Lcom/google/android/exoplayer2/audio/g;->b:I

    if-ne v3, v2, :cond_14

    const/4 v4, 0x1

    :cond_14
    if-eqz v4, :cond_15

    .line 262
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->c()J

    move-result-wide v2

    .line 263
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/h;->e(J)J

    move-result-wide v2

    .line 264
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/g;->b()J

    move-result-wide v7

    sub-long v7, v5, v7

    .line 265
    iget v1, v0, Lcom/google/android/exoplayer2/audio/h;->m:F

    .line 266
    invoke-static {v7, v8, v1}, Lcom/google/android/exoplayer2/util/af;->a(JF)J

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_8

    .line 269
    :cond_15
    iget v1, v0, Lcom/google/android/exoplayer2/audio/h;->y:I

    if-nez v1, :cond_16

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/h;->e()J

    move-result-wide v1

    goto :goto_7

    .line 276
    :cond_16
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/h;->o:J

    add-long/2addr v1, v5

    :goto_7
    move-wide v2, v1

    if-nez p1, :cond_17

    .line 279
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->r:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 283
    :cond_17
    :goto_8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/h;->D:Z

    if-eq v1, v4, :cond_18

    .line 285
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->C:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->F:J

    .line 286
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->B:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->E:J

    .line 288
    :cond_18
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->F:J

    sub-long v7, v5, v7

    const-wide/32 v10, 0xf4240

    cmp-long v1, v7, v10

    if-gez v1, :cond_19

    .line 292
    iget-wide v12, v0, Lcom/google/android/exoplayer2/audio/h;->E:J

    iget v1, v0, Lcom/google/android/exoplayer2/audio/h;->m:F

    .line 294
    invoke-static {v7, v8, v1}, Lcom/google/android/exoplayer2/util/af;->a(JF)J

    move-result-wide v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long v7, v7, v14

    .line 297
    div-long/2addr v7, v10

    mul-long v2, v2, v7

    sub-long v7, v14, v7

    mul-long v7, v7, v12

    add-long/2addr v2, v7

    .line 300
    div-long/2addr v2, v14

    .line 303
    :cond_19
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/h;->n:Z

    if-nez v1, :cond_1a

    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/h;->B:J

    cmp-long v1, v2, v7

    if-lez v1, :cond_1a

    .line 304
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/h;->n:Z

    sub-long v7, v2, v7

    .line 305
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v7

    .line 306
    iget v1, v0, Lcom/google/android/exoplayer2/audio/h;->m:F

    .line 307
    invoke-static {v7, v8, v1}, Lcom/google/android/exoplayer2/util/af;->b(JF)J

    move-result-wide v7

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v7

    sub-long/2addr v9, v7

    .line 311
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/h;->a:Lcom/google/android/exoplayer2/audio/h$a;

    invoke-interface {v1, v9, v10}, Lcom/google/android/exoplayer2/audio/h$a;->a(J)V

    .line 314
    :cond_1a
    iput-wide v5, v0, Lcom/google/android/exoplayer2/audio/h;->C:J

    .line 315
    iput-wide v2, v0, Lcom/google/android/exoplayer2/audio/h;->B:J

    .line 316
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/audio/h;->D:Z

    return-wide v2
.end method

.method public final a(F)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/google/android/exoplayer2/audio/h;->m:F

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/g;->a()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 221
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    .line 222
    iput p4, p0, Lcom/google/android/exoplayer2/audio/h;->k:I

    .line 223
    iput p5, p0, Lcom/google/android/exoplayer2/audio/h;->c:I

    .line 224
    new-instance v0, Lcom/google/android/exoplayer2/audio/g;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/g;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    .line 225
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/h;->l:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1559
    sget p2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-ge p2, v1, :cond_1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    const/4 p2, 0x6

    if-ne p3, p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 226
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/h;->e:Z

    .line 227
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/af;->c(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/h;->s:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_3

    .line 228
    div-int/2addr p5, p4

    int-to-long p4, p5

    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/audio/h;->e(J)J

    move-result-wide p4

    goto :goto_2

    :cond_3
    move-wide p4, p2

    :goto_2
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/h;->f:J

    const-wide/16 p4, 0x0

    .line 229
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/h;->u:J

    .line 230
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/h;->v:J

    .line 231
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/h;->w:J

    .line 232
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->g:Z

    .line 233
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/h;->h:J

    .line 234
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/h;->i:J

    .line 235
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/h;->t:J

    .line 236
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/h;->r:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 237
    iput p1, p0, Lcom/google/android/exoplayer2/audio/h;->m:F

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(J)J
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/h;->e(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()V
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->c()V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    .line 440
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->d:Lcom/google/android/exoplayer2/audio/g;

    return-void
.end method

.method final c()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 534
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->o:J

    const/4 v2, 0x0

    .line 535
    iput v2, p0, Lcom/google/android/exoplayer2/audio/h;->y:I

    .line 536
    iput v2, p0, Lcom/google/android/exoplayer2/audio/h;->x:I

    .line 537
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->p:J

    .line 538
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->C:J

    .line 539
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->F:J

    .line 540
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/h;->n:Z

    return-void
.end method

.method public final c(J)V
    .locals 4

    .line 400
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->z:J

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->h:J

    .line 402
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/h;->A:J

    return-void
.end method

.method final d()J
    .locals 11

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 577
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/h;->h:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/h;->h:J

    sub-long/2addr v0, v2

    .line 580
    iget v2, p0, Lcom/google/android/exoplayer2/audio/h;->l:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 581
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/h;->A:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/h;->z:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 584
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    const-wide v7, 0xffffffffL

    .line 590
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 591
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/h;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 596
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/h;->u:J

    iput-wide v9, p0, Lcom/google/android/exoplayer2/audio/h;->w:J

    .line 598
    :cond_2
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/h;->w:J

    add-long/2addr v7, v9

    .line 601
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    .line 602
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/h;->u:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 610
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->i:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->i:J

    .line 613
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->u:J

    return-wide v0

    .line 615
    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/h;->i:J

    .line 619
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->u:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    .line 621
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->v:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->v:J

    .line 623
    :cond_7
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/h;->u:J

    .line 624
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/h;->v:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method public final d(J)Z
    .locals 5

    .line 412
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-gtz v3, :cond_2

    .line 7549
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/h;->e:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/h;->b:Landroid/media/AudioTrack;

    .line 7550
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 7551
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return p2

    :cond_2
    :goto_1
    return v2
.end method
