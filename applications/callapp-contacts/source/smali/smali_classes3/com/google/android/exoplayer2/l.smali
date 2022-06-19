.class public final Lcom/google/android/exoplayer2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ah;


# instance fields
.field public a:I

.field public b:Z

.field private final c:Landroid/content/Context;

.field private d:J

.field private e:Lcom/google/android/exoplayer2/mediacodec/h;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer2/l;->c:Landroid/content/Context;

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/google/android/exoplayer2/l;->a:I

    const-wide/16 v0, 0x1388

    .line 109
    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->d:J

    .line 110
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/h;->a:Lcom/google/android/exoplayer2/mediacodec/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/l;->e:Lcom/google/android/exoplayer2/mediacodec/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1388

    .line 121
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/l;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/l;->c:Landroid/content/Context;

    .line 134
    iput p2, p0, Lcom/google/android/exoplayer2/l;->a:I

    .line 135
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->d:J

    .line 136
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/h;->a:Lcom/google/android/exoplayer2/mediacodec/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/l;->e:Lcom/google/android/exoplayer2/mediacodec/h;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/l;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/d;)[Lcom/google/android/exoplayer2/af;
    .locals 16

    move-object/from16 v1, p0

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    iget-object v3, v1, Lcom/google/android/exoplayer2/l;->c:Landroid/content/Context;

    iget v11, v1, Lcom/google/android/exoplayer2/l;->a:I

    iget-object v4, v1, Lcom/google/android/exoplayer2/l;->e:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/l;->b:Z

    iget-wide v12, v1, Lcom/google/android/exoplayer2/l;->d:J

    .line 1369
    new-instance v14, Lcom/google/android/exoplayer2/video/e;

    const/16 v10, 0x32

    move-object v2, v14

    move-wide v5, v12

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/video/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/l;I)V

    .line 1378
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l;->f:Z

    .line 2438
    iput-boolean v2, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:Z

    .line 1379
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l;->g:Z

    .line 2451
    iput-boolean v2, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Z

    .line 1381
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l;->h:Z

    .line 2465
    iput-boolean v2, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Z

    .line 1383
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v11, :cond_1

    .line 1388
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v11, v10, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    const/16 v3, 0x32

    const/4 v4, 0x4

    :try_start_0
    const-string v5, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 1396
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    .line 1397
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v14

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v15

    const-class v7, Lcom/google/android/exoplayer2/video/l;

    aput-object v7, v6, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    .line 1398
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 1407
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v14

    aput-object p1, v6, v15

    aput-object p2, v6, v10

    .line 1410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1406
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/af;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v2, 0x1

    .line 1411
    :try_start_1
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1412
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v2, v6

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1417
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    :goto_0
    move v6, v2

    :goto_1
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    .line 1423
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    .line 1424
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v14

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v15

    const-class v7, Lcom/google/android/exoplayer2/video/l;

    aput-object v7, v5, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v9

    .line 1425
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1434
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v14

    aput-object p1, v4, v15

    aput-object p2, v4, v10

    .line 1437
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    .line 1433
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/af;

    .line 1438
    invoke-virtual {v0, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1439
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 1444
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating AV1 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    nop

    .line 323
    :cond_1
    :goto_2
    iget-object v2, v1, Lcom/google/android/exoplayer2/l;->c:Landroid/content/Context;

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/l;->i:Z

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/l;->j:Z

    iget-boolean v8, v1, Lcom/google/android/exoplayer2/l;->k:Z

    .line 2639
    new-instance v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 2640
    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/e;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/e;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    new-array v2, v14, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v5, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;ZZZ)V

    .line 326
    iget-object v3, v1, Lcom/google/android/exoplayer2/l;->c:Landroid/content/Context;

    iget v12, v1, Lcom/google/android/exoplayer2/l;->a:I

    iget-object v4, v1, Lcom/google/android/exoplayer2/l;->e:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/l;->b:Z

    .line 3471
    new-instance v13, Lcom/google/android/exoplayer2/audio/n;

    move-object v2, v13

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/audio/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 3479
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l;->f:Z

    .line 4438
    iput-boolean v2, v13, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:Z

    .line 3480
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l;->g:Z

    .line 4451
    iput-boolean v2, v13, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Z

    .line 3482
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l;->h:Z

    .line 4465
    iput-boolean v2, v13, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Z

    .line 3484
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_3

    .line 3489
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v12, v10, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    :try_start_3
    const-string v3, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 3497
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Class;

    .line 3498
    const-class v5, Landroid/os/Handler;

    aput-object v5, v4, v14

    const-class v5, Lcom/google/android/exoplayer2/audio/f;

    aput-object v5, v4, v15

    const-class v5, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v5, v4, v10

    .line 3499
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v14

    aput-object p3, v4, v15

    aput-object v11, v4, v10

    .line 3505
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/af;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    add-int/lit8 v4, v2, 0x1

    .line 3506
    :try_start_4
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3507
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_5
    move v2, v4

    goto :goto_3

    :catch_6
    move-exception v0

    .line 3512
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_3
    move v4, v2

    :goto_4
    :try_start_5
    const-string v2, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 3518
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    .line 3519
    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v14

    const-class v5, Lcom/google/android/exoplayer2/audio/f;

    aput-object v5, v3, v15

    const-class v5, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v5, v3, v10

    .line 3520
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v14

    aput-object p3, v3, v15

    aput-object v11, v3, v10

    .line 3526
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/af;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    add-int/lit8 v3, v4, 0x1

    .line 3527
    :try_start_6
    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3528
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_6

    :catch_8
    move v4, v3

    goto :goto_5

    :catch_9
    move-exception v0

    .line 3533
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_a
    :goto_5
    move v3, v4

    :goto_6
    :try_start_7
    const-string v2, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 3540
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Class;

    .line 3541
    const-class v5, Landroid/os/Handler;

    aput-object v5, v4, v14

    const-class v5, Lcom/google/android/exoplayer2/audio/f;

    aput-object v5, v4, v15

    const-class v5, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v5, v4, v10

    .line 3542
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v14

    aput-object p3, v4, v15

    aput-object v11, v4, v10

    .line 3548
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/af;

    .line 3549
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3550
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_7

    :catch_b
    move-exception v0

    .line 3555
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 336
    :catch_c
    :cond_3
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4574
    new-instance v3, Lcom/google/android/exoplayer2/text/k;

    move-object/from16 v4, p4

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/text/k;-><init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4592
    new-instance v3, Lcom/google/android/exoplayer2/metadata/e;

    move-object/from16 v4, p5

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/metadata/e;-><init>(Lcom/google/android/exoplayer2/metadata/d;Landroid/os/Looper;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4604
    new-instance v2, Lcom/google/android/exoplayer2/video/a/b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/video/a/b;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v14, [Lcom/google/android/exoplayer2/af;

    .line 342
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/af;

    return-object v0
.end method
