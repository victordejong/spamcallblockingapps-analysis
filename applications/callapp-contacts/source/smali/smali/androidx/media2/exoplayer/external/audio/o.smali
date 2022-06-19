.class final Landroidx/media2/exoplayer/external/audio/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/o$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/audio/o$a;

.field b:Landroid/media/AudioTrack;

.field c:I

.field d:I

.field e:Landroidx/media2/exoplayer/external/audio/n;

.field f:I

.field g:Z

.field h:J

.field i:J

.field j:Z

.field k:Z

.field l:J

.field m:J

.field n:J

.field o:J

.field p:J

.field private final q:[J

.field private r:J

.field private s:J

.field private t:Ljava/lang/reflect/Method;

.field private u:J

.field private v:I

.field private w:I

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/o$a;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/audio/o$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/o;->a:Landroidx/media2/exoplayer/external/audio/o$a;

    .line 176
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    .line 178
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/o;->t:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 183
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/o;->q:[J

    return-void
.end method

.method private e()J
    .locals 2

    .line 489
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/o;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/o;->d(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    .line 309
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/o;->d()J

    move-result-wide v0

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/o;->c:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 310
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/o;->d:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(Z)J
    .locals 23

    move-object/from16 v0, p0

    .line 219
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v4, :cond_13

    .line 1372
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/o;->e()J

    move-result-wide v15

    const-wide/16 v13, 0x0

    cmp-long v1, v15, v13

    if-eqz v1, :cond_13

    .line 1377
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long v11, v8, v2

    .line 1378
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/audio/o;->s:J

    sub-long v8, v11, v8

    const-wide/16 v17, 0x7530

    cmp-long v1, v8, v17

    if-ltz v1, :cond_1

    .line 1380
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/o;->q:[J

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/o;->v:I

    sub-long v9, v15, v11

    aput-wide v9, v1, v8

    add-int/2addr v8, v7

    const/16 v1, 0xa

    .line 1381
    rem-int/2addr v8, v1

    iput v8, v0, Landroidx/media2/exoplayer/external/audio/o;->v:I

    .line 1382
    iget v8, v0, Landroidx/media2/exoplayer/external/audio/o;->w:I

    if-ge v8, v1, :cond_0

    add-int/2addr v8, v7

    .line 1383
    iput v8, v0, Landroidx/media2/exoplayer/external/audio/o;->w:I

    .line 1385
    :cond_0
    iput-wide v11, v0, Landroidx/media2/exoplayer/external/audio/o;->s:J

    .line 1386
    iput-wide v13, v0, Landroidx/media2/exoplayer/external/audio/o;->r:J

    const/4 v1, 0x0

    .line 1387
    :goto_0
    iget v8, v0, Landroidx/media2/exoplayer/external/audio/o;->w:I

    if-ge v1, v8, :cond_1

    .line 1388
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/audio/o;->r:J

    iget-object v13, v0, Landroidx/media2/exoplayer/external/audio/o;->q:[J

    aget-wide v19, v13, v1

    int-to-long v13, v8

    div-long v19, v19, v13

    add-long v9, v9, v19

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/audio/o;->r:J

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v13, 0x0

    goto :goto_0

    .line 1392
    :cond_1
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/audio/o;->g:Z

    if-nez v1, :cond_13

    .line 1403
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/o;->e:Landroidx/media2/exoplayer/external/audio/n;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/n;

    .line 2125
    iget-object v8, v1, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    const-wide/32 v19, 0x7a120

    if-eqz v8, :cond_c

    iget-wide v8, v1, Landroidx/media2/exoplayer/external/audio/n;->e:J

    sub-long v8, v11, v8

    iget-wide v2, v1, Landroidx/media2/exoplayer/external/audio/n;->d:J

    cmp-long v10, v8, v2

    if-gez v10, :cond_2

    goto/16 :goto_1

    .line 2128
    :cond_2
    iput-wide v11, v1, Landroidx/media2/exoplayer/external/audio/n;->e:J

    .line 2129
    iget-object v2, v1, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    .line 2293
    iget-object v3, v2, Landroidx/media2/exoplayer/external/audio/n$a;->a:Landroid/media/AudioTrack;

    iget-object v8, v2, Landroidx/media2/exoplayer/external/audio/n$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v3, v8}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2295
    iget-object v8, v2, Landroidx/media2/exoplayer/external/audio/n$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v8, v8, Landroid/media/AudioTimestamp;->framePosition:J

    .line 2296
    iget-wide v13, v2, Landroidx/media2/exoplayer/external/audio/n$a;->d:J

    cmp-long v10, v13, v8

    if-lez v10, :cond_3

    .line 2298
    iget-wide v13, v2, Landroidx/media2/exoplayer/external/audio/n$a;->c:J

    const-wide/16 v21, 0x1

    add-long v13, v13, v21

    iput-wide v13, v2, Landroidx/media2/exoplayer/external/audio/n$a;->c:J

    .line 2300
    :cond_3
    iput-wide v8, v2, Landroidx/media2/exoplayer/external/audio/n$a;->d:J

    .line 2301
    iget-wide v13, v2, Landroidx/media2/exoplayer/external/audio/n$a;->c:J

    const/16 v10, 0x20

    shl-long/2addr v13, v10

    add-long/2addr v8, v13

    iput-wide v8, v2, Landroidx/media2/exoplayer/external/audio/n$a;->e:J

    .line 2130
    :cond_4
    iget v2, v1, Landroidx/media2/exoplayer/external/audio/n;->b:I

    if-eqz v2, :cond_a

    if-eq v2, v7, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    const/4 v13, 0x4

    if-ne v2, v13, :cond_5

    goto :goto_2

    .line 2175
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    const/4 v13, 0x4

    if-eqz v3, :cond_d

    .line 2168
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    goto :goto_2

    :cond_7
    const/4 v13, 0x4

    if-nez v3, :cond_d

    .line 2162
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    goto :goto_2

    :cond_8
    const/4 v13, 0x4

    if-eqz v3, :cond_9

    .line 2151
    iget-object v2, v1, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    .line 3312
    iget-wide v8, v2, Landroidx/media2/exoplayer/external/audio/n$a;->e:J

    .line 2152
    iget-wide v13, v1, Landroidx/media2/exoplayer/external/audio/n;->f:J

    cmp-long v2, v8, v13

    if-lez v2, :cond_d

    .line 2153
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    goto :goto_2

    .line 2156
    :cond_9
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    .line 2133
    iget-object v2, v1, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/audio/n$a;->a()J

    move-result-wide v8

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/audio/n;->c:J

    cmp-long v2, v8, v13

    if-ltz v2, :cond_c

    .line 2135
    iget-object v2, v1, Landroidx/media2/exoplayer/external/audio/n;->a:Landroidx/media2/exoplayer/external/audio/n$a;

    .line 2312
    iget-wide v8, v2, Landroidx/media2/exoplayer/external/audio/n$a;->e:J

    .line 2135
    iput-wide v8, v1, Landroidx/media2/exoplayer/external/audio/n;->f:J

    .line 2136
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    goto :goto_2

    .line 2141
    :cond_b
    iget-wide v8, v1, Landroidx/media2/exoplayer/external/audio/n;->c:J

    sub-long v8, v11, v8

    cmp-long v2, v8, v19

    if-lez v2, :cond_d

    .line 2146
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v3, 0x0

    :cond_d
    :goto_2
    const-wide/32 v21, 0x4c4b40

    if-eqz v3, :cond_10

    .line 1409
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/n;->b()J

    move-result-wide v2

    .line 1410
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/n;->c()J

    move-result-wide v9

    sub-long v13, v2, v11

    .line 1411
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v4, v13, v21

    if-lez v4, :cond_e

    .line 1412
    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/o;->a:Landroidx/media2/exoplayer/external/audio/o$a;

    move-wide v13, v11

    move-wide v11, v2

    move-wide v2, v13

    const/4 v4, 0x4

    invoke-interface/range {v8 .. v16}, Landroidx/media2/exoplayer/external/audio/o$a;->b(JJJJ)V

    .line 4186
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    goto :goto_3

    :cond_e
    move-wide v13, v11

    const/4 v4, 0x4

    .line 1418
    invoke-virtual {v0, v9, v10}, Landroidx/media2/exoplayer/external/audio/o;->d(J)J

    move-result-wide v11

    sub-long/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v8, v11, v21

    if-lez v8, :cond_f

    .line 1420
    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/o;->a:Landroidx/media2/exoplayer/external/audio/o$a;

    move-wide v11, v2

    move-wide v2, v13

    invoke-interface/range {v8 .. v16}, Landroidx/media2/exoplayer/external/audio/o$a;->a(JJJJ)V

    .line 5186
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/audio/n;->a(I)V

    goto :goto_3

    :cond_f
    move-wide v2, v13

    .line 5194
    iget v8, v1, Landroidx/media2/exoplayer/external/audio/n;->b:I

    if-ne v8, v4, :cond_11

    .line 5195
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/n;->a()V

    goto :goto_3

    :cond_10
    move-wide v2, v11

    .line 5432
    :cond_11
    :goto_3
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/audio/o;->k:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/o;->t:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/audio/o;->u:J

    sub-long v11, v2, v8

    cmp-long v4, v11, v19

    if-ltz v4, :cond_13

    .line 5438
    :try_start_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    .line 5439
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/audio/o;->h:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/audio/o;->i:J

    const-wide/16 v10, 0x0

    .line 5443
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/audio/o;->i:J

    cmp-long v1, v8, v21

    if-lez v1, :cond_12

    .line 5446
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/o;->a:Landroidx/media2/exoplayer/external/audio/o$a;

    invoke-interface {v1, v8, v9}, Landroidx/media2/exoplayer/external/audio/o$a;->a(J)V

    .line 5447
    iput-wide v10, v0, Landroidx/media2/exoplayer/external/audio/o;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v1, 0x0

    .line 5451
    iput-object v1, v0, Landroidx/media2/exoplayer/external/audio/o;->t:Ljava/lang/reflect/Method;

    .line 5453
    :cond_12
    :goto_4
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/audio/o;->u:J

    .line 225
    :cond_13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 226
    iget-object v3, v0, Landroidx/media2/exoplayer/external/audio/o;->e:Landroidx/media2/exoplayer/external/audio/n;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/audio/n;

    .line 6205
    iget v4, v3, Landroidx/media2/exoplayer/external/audio/n;->b:I

    if-eq v4, v7, :cond_15

    iget v4, v3, Landroidx/media2/exoplayer/external/audio/n;->b:I

    if-ne v4, v5, :cond_14

    goto :goto_5

    :cond_14
    const/4 v4, 0x0

    goto :goto_6

    :cond_15
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_18

    .line 229
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/audio/n;->c()J

    move-result-wide v8

    .line 230
    invoke-virtual {v0, v8, v9}, Landroidx/media2/exoplayer/external/audio/o;->d(J)J

    move-result-wide v8

    .line 6215
    iget v4, v3, Landroidx/media2/exoplayer/external/audio/n;->b:I

    if-ne v4, v5, :cond_16

    const/4 v6, 0x1

    :cond_16
    if-nez v6, :cond_17

    return-wide v8

    .line 234
    :cond_17
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/audio/n;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    add-long/2addr v8, v1

    return-wide v8

    .line 238
    :cond_18
    iget v3, v0, Landroidx/media2/exoplayer/external/audio/o;->w:I

    if-nez v3, :cond_19

    .line 240
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/o;->e()J

    move-result-wide v1

    goto :goto_7

    .line 245
    :cond_19
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/audio/o;->r:J

    add-long/2addr v1, v3

    :goto_7
    if-nez p1, :cond_1a

    .line 248
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/audio/o;->i:J

    sub-long/2addr v1, v3

    :cond_1a
    return-wide v1
.end method

.method public final a()Z
    .locals 2

    .line 261
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final b()V
    .locals 1

    .line 366
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/o;->c()V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    .line 368
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/o;->e:Landroidx/media2/exoplayer/external/audio/n;

    return-void
.end method

.method public final b(J)V
    .locals 4

    .line 328
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/o;->d()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->x:J

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->o:J

    .line 330
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/o;->y:J

    return-void
.end method

.method final c()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 462
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->r:J

    const/4 v2, 0x0

    .line 463
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/o;->w:I

    .line 464
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/o;->v:I

    .line 465
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->s:J

    return-void
.end method

.method public final c(J)Z
    .locals 5

    .line 340
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/o;->d()J

    move-result-wide v0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-gtz v3, :cond_2

    .line 6474
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/o;->g:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    .line 6475
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 6476
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/o;->d()J

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

.method final d()J
    .locals 11

    .line 501
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/o;->b:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 502
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/o;->o:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/o;->o:J

    sub-long/2addr v0, v2

    .line 505
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/o;->f:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 506
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/o;->y:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/o;->x:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 509
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    const-wide v7, 0xffffffffL

    .line 515
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 516
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/o;->g:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 521
    iget-wide v9, p0, Landroidx/media2/exoplayer/external/audio/o;->l:J

    iput-wide v9, p0, Landroidx/media2/exoplayer/external/audio/o;->n:J

    .line 523
    :cond_2
    iget-wide v9, p0, Landroidx/media2/exoplayer/external/audio/o;->n:J

    add-long/2addr v7, v9

    .line 526
    :cond_3
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    .line 527
    iget-wide v9, p0, Landroidx/media2/exoplayer/external/audio/o;->l:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 535
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->p:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->p:J

    .line 538
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->l:J

    return-wide v0

    .line 540
    :cond_5
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/audio/o;->p:J

    .line 544
    :cond_6
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->l:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    .line 546
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->m:J

    .line 548
    :cond_7
    iput-wide v7, p0, Landroidx/media2/exoplayer/external/audio/o;->l:J

    .line 549
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/o;->m:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method final d(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 458
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/o;->f:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method
