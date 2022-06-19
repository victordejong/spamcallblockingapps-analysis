.class public final Landroidx/media2/exoplayer/external/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/ai;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Landroidx/media2/exoplayer/external/mediacodec/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/f;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Landroidx/media2/exoplayer/external/f;->c:I

    const-wide/16 v0, 0x1388

    .line 107
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/f;->d:J

    .line 108
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/b;->a:Landroidx/media2/exoplayer/external/mediacodec/b;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/f;->g:Landroidx/media2/exoplayer/external/mediacodec/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1388

    .line 130
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/f;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 157
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/f;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/k;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/f;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/k;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/k;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 144
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/f;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/k;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/drm/k;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroidx/media2/exoplayer/external/f;->a:Landroid/content/Context;

    .line 172
    iput p3, p0, Landroidx/media2/exoplayer/external/f;->c:I

    .line 173
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/f;->d:J

    .line 174
    iput-object p2, p0, Landroidx/media2/exoplayer/external/f;->b:Landroidx/media2/exoplayer/external/drm/k;

    .line 175
    sget-object p1, Landroidx/media2/exoplayer/external/mediacodec/b;->a:Landroidx/media2/exoplayer/external/mediacodec/b;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/f;->g:Landroidx/media2/exoplayer/external/mediacodec/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/text/i;Landroidx/media2/exoplayer/external/metadata/d;Landroidx/media2/exoplayer/external/drm/k;)[Landroidx/media2/exoplayer/external/ag;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/g;",
            "Landroidx/media2/exoplayer/external/audio/g;",
            "Landroidx/media2/exoplayer/external/text/i;",
            "Landroidx/media2/exoplayer/external/metadata/d;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;)[",
            "Landroidx/media2/exoplayer/external/ag;"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez p6, :cond_0

    .line 263
    iget-object v0, v1, Landroidx/media2/exoplayer/external/f;->b:Landroidx/media2/exoplayer/external/drm/k;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p6

    .line 265
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v3, v1, Landroidx/media2/exoplayer/external/f;->a:Landroid/content/Context;

    iget v14, v1, Landroidx/media2/exoplayer/external/f;->c:I

    iget-object v4, v1, Landroidx/media2/exoplayer/external/f;->g:Landroidx/media2/exoplayer/external/mediacodec/b;

    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/f;->e:Z

    iget-boolean v9, v1, Landroidx/media2/exoplayer/external/f;->f:Z

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/f;->d:J

    .line 1328
    new-instance v15, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    const/16 v16, 0x32

    move-object v2, v15

    move-wide v5, v11

    move-object v7, v0

    move-object/from16 v10, p1

    move-wide/from16 v17, v11

    move-object/from16 v11, p2

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroidx/media2/exoplayer/external/drm/k;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v15, 0x2

    const/4 v10, 0x0

    if-eqz v14, :cond_2

    .line 1343
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v14, v15, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :try_start_0
    const-string v3, "androidx.media2.exoplayer.external.ext.vp9.LibvpxVideoRenderer"

    .line 1351
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 1352
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v12

    const-class v6, Landroidx/media2/exoplayer/external/video/g;

    aput-object v6, v5, v15

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v11

    .line 1353
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1362
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    aput-object p1, v4, v12

    aput-object p2, v4, v15

    const/16 v5, 0x32

    .line 1365
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1361
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/ag;

    .line 1366
    invoke-virtual {v13, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1367
    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1372
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    nop

    .line 277
    :cond_2
    :goto_1
    iget-object v3, v1, Landroidx/media2/exoplayer/external/f;->a:Landroid/content/Context;

    iget v14, v1, Landroidx/media2/exoplayer/external/f;->c:I

    iget-object v4, v1, Landroidx/media2/exoplayer/external/f;->g:Landroidx/media2/exoplayer/external/mediacodec/b;

    iget-boolean v6, v1, Landroidx/media2/exoplayer/external/f;->e:Z

    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/f;->f:Z

    new-array v9, v10, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 2407
    new-instance v8, Landroidx/media2/exoplayer/external/audio/u;

    new-instance v5, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 2416
    invoke-static {v3}, Landroidx/media2/exoplayer/external/audio/d;->a(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/d;

    move-result-object v2

    invoke-direct {v5, v2, v9}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    move-object v2, v8

    move-object/from16 v16, v5

    move-object v5, v0

    move-object v0, v8

    move-object/from16 v8, p1

    move-object/from16 v17, v9

    move-object/from16 v9, p3

    const/4 v12, 0x0

    move-object/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/AudioSink;)V

    .line 2407
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_4

    .line 2421
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v14, v15, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :try_start_1
    const-string v2, "androidx.media2.exoplayer.external.ext.opus.LibopusAudioRenderer"

    .line 2429
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Class;

    .line 2430
    const-class v4, Landroid/os/Handler;

    aput-object v4, v3, v12

    const-class v4, Landroidx/media2/exoplayer/external/audio/g;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aput-object v4, v3, v15

    .line 2431
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v12

    const/4 v4, 0x1

    aput-object p3, v3, v4

    aput-object v17, v3, v15

    .line 2437
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/ag;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v3, v0, 0x1

    .line 2438
    :try_start_2
    invoke-virtual {v13, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2439
    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_2
    move v0, v3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 2444
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    :goto_2
    move v3, v0

    :goto_3
    :try_start_3
    const-string v0, "androidx.media2.exoplayer.external.ext.flac.LibflacAudioRenderer"

    .line 2450
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Class;

    .line 2451
    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v12

    const-class v4, Landroidx/media2/exoplayer/external/audio/g;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-class v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aput-object v4, v2, v15

    .line 2452
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v12

    const/4 v4, 0x1

    aput-object p3, v2, v4

    aput-object v17, v2, v15

    .line 2458
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/ag;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    add-int/lit8 v2, v3, 0x1

    .line 2459
    :try_start_4
    invoke-virtual {v13, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2460
    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    :catch_5
    move v3, v2

    goto :goto_4

    :catch_6
    move-exception v0

    .line 2465
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_4
    move v2, v3

    :goto_5
    :try_start_5
    const-string v0, "androidx.media2.exoplayer.external.ext.ffmpeg.FfmpegAudioRenderer"

    .line 2472
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Class;

    .line 2473
    const-class v4, Landroid/os/Handler;

    aput-object v4, v3, v12

    const-class v4, Landroidx/media2/exoplayer/external/audio/g;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aput-object v4, v3, v15

    .line 2474
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v12

    const/4 v4, 0x1

    aput-object p3, v3, v4

    aput-object v17, v3, v15

    .line 2480
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/ag;

    .line 2481
    invoke-virtual {v13, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2482
    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    .line 2487
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 288
    :catch_9
    :cond_4
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2506
    new-instance v2, Landroidx/media2/exoplayer/external/text/j;

    move-object/from16 v3, p4

    invoke-direct {v2, v3, v0}, Landroidx/media2/exoplayer/external/text/j;-><init>(Landroidx/media2/exoplayer/external/text/i;Landroid/os/Looper;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2524
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/e;

    move-object/from16 v3, p5

    invoke-direct {v2, v3, v0}, Landroidx/media2/exoplayer/external/metadata/e;-><init>(Landroidx/media2/exoplayer/external/metadata/d;Landroid/os/Looper;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    new-instance v0, Landroidx/media2/exoplayer/external/video/a/b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/video/a/b;-><init>()V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v12, [Landroidx/media2/exoplayer/external/ag;

    .line 294
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/ag;

    return-object v0
.end method
