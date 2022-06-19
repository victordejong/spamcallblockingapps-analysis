.class final Landroidx/media2/player/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/e$e;,
        Landroidx/media2/player/e$b;,
        Landroidx/media2/player/e$d;,
        Landroidx/media2/player/e$f;,
        Landroidx/media2/player/e$a;,
        Landroidx/media2/player/e$c;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/player/e$c;

.field final b:Landroid/os/Looper;

.field final c:Landroid/os/Handler;

.field final d:Landroidx/media2/exoplayer/external/upstream/j;

.field final e:Ljava/lang/Runnable;

.field f:Landroidx/media2/exoplayer/external/ak;

.field g:Landroid/os/Handler;

.field h:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

.field i:Landroidx/media2/player/n;

.field j:Landroidx/media2/player/e$e;

.field k:Z

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:I

.field s:Landroidx/media2/player/j;

.field private final t:Landroid/content/Context;

.field private u:I

.field private v:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/e$c;Landroid/os/Looper;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/e;->t:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 184
    iput-object p3, p0, Landroidx/media2/player/e;->b:Landroid/os/Looper;

    .line 185
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/player/e;->c:Landroid/os/Handler;

    .line 187
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/j;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/j;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/e;->d:Landroidx/media2/exoplayer/external/upstream/j;

    .line 188
    new-instance p1, Landroidx/media2/player/e$f;

    invoke-direct {p1, p0}, Landroidx/media2/player/e$f;-><init>(Landroidx/media2/player/e;)V

    iput-object p1, p0, Landroidx/media2/player/e;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 227
    invoke-virtual {p0}, Landroidx/media2/player/e;->b()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/e/d;->b(Z)V

    const-wide/16 v0, 0x0

    .line 228
    iget-object v2, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ak;->e()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final a(IIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 488
    :cond_0
    iget p3, p0, Landroidx/media2/player/e;->q:I

    if-ne p3, p1, :cond_1

    iget p3, p0, Landroidx/media2/player/e;->r:I

    if-ne p3, p2, :cond_1

    return-void

    .line 491
    :cond_1
    iput p1, p0, Landroidx/media2/player/e;->q:I

    .line 492
    iput p2, p0, Landroidx/media2/player/e;->r:I

    .line 493
    iget-object p3, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    iget-object v0, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-interface {p3, v0, p1, p2}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final b()I
    .locals 4

    .line 243
    invoke-virtual {p0}, Landroidx/media2/player/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ed

    return v0

    .line 246
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/player/e;->n:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3ea

    return v0

    .line 249
    :cond_1
    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result v0

    .line 250
    iget-object v1, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    if-eqz v1, :cond_4

    const/16 v0, 0x3ec

    return v0

    :cond_4
    :goto_0
    return v3

    :cond_5
    const/16 v0, 0x3e9

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    invoke-virtual {v0}, Landroidx/media2/player/n;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroidx/media2/player/i;
    .locals 8

    .line 415
    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/player/e;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 417
    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Landroidx/media2/player/e;->s:Landroidx/media2/player/j;

    invoke-virtual {v0}, Landroidx/media2/player/j;->c()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 419
    :goto_1
    new-instance v0, Landroidx/media2/player/i;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/player/i;-><init>(JJF)V

    return-object v0
.end method

.method public final e()V
    .locals 6

    .line 423
    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ak;->a(Z)V

    .line 425
    invoke-virtual {p0}, Landroidx/media2/player/e;->b()I

    move-result v0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    .line 426
    iget-object v0, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 1200
    iget-object v2, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 426
    invoke-virtual {p0}, Landroidx/media2/player/e;->d()Landroidx/media2/player/i;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    .line 428
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->p()V

    .line 429
    iget-object v0, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v0}, Landroidx/media2/player/e$e;->a()V

    .line 431
    :cond_1
    new-instance v0, Landroidx/media2/player/e$a;

    invoke-direct {v0, p0}, Landroidx/media2/player/e$a;-><init>(Landroidx/media2/player/e;)V

    .line 432
    new-instance v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    iget-object v3, p0, Landroidx/media2/player/e;->t:Landroid/content/Context;

    .line 433
    invoke-static {v3}, Landroidx/media2/exoplayer/external/audio/d;->a(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/d;

    move-result-object v3

    new-array v4, v1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    invoke-direct {v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    iput-object v2, p0, Landroidx/media2/player/e;->h:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 434
    new-instance v2, Landroidx/media2/player/l;

    invoke-direct {v2, v0}, Landroidx/media2/player/l;-><init>(Landroidx/media2/player/l$b;)V

    .line 435
    new-instance v3, Landroidx/media2/player/k;

    iget-object v4, p0, Landroidx/media2/player/e;->t:Landroid/content/Context;

    iget-object v5, p0, Landroidx/media2/player/e;->h:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-direct {v3, v4, v5, v2}, Landroidx/media2/player/k;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioSink;Landroidx/media2/player/l;)V

    .line 437
    new-instance v4, Landroidx/media2/player/n;

    invoke-direct {v4, v2}, Landroidx/media2/player/n;-><init>(Landroidx/media2/player/l;)V

    iput-object v4, p0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    .line 438
    new-instance v2, Landroidx/media2/exoplayer/external/ak$a;

    iget-object v4, p0, Landroidx/media2/player/e;->t:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroidx/media2/exoplayer/external/ak$a;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;)V

    iget-object v3, p0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    .line 2100
    iget-object v3, v3, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 439
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ak$a;->a(Landroidx/media2/exoplayer/external/trackselection/g;)Landroidx/media2/exoplayer/external/ak$a;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/player/e;->d:Landroidx/media2/exoplayer/external/upstream/j;

    .line 440
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ak$a;->a(Landroidx/media2/exoplayer/external/upstream/c;)Landroidx/media2/exoplayer/external/ak$a;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/player/e;->b:Landroid/os/Looper;

    .line 441
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ak$a;->a(Landroid/os/Looper;)Landroidx/media2/exoplayer/external/ak$a;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ak$a;->a()Landroidx/media2/exoplayer/external/ak;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    .line 443
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/ak;->b()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/media2/player/e;->g:Landroid/os/Handler;

    .line 444
    new-instance v2, Landroidx/media2/player/e$e;

    iget-object v3, p0, Landroidx/media2/player/e;->t:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    iget-object v5, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/player/e$e;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ak;Landroidx/media2/player/e$c;)V

    iput-object v2, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    .line 445
    iget-object v2, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ae$b;)V

    .line 447
    iget-object v2, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/video/g;)V

    .line 448
    iget-object v2, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/metadata/d;)V

    .line 449
    iput v1, p0, Landroidx/media2/player/e;->q:I

    .line 450
    iput v1, p0, Landroidx/media2/player/e;->r:I

    .line 451
    iput-boolean v1, p0, Landroidx/media2/player/e;->m:Z

    .line 452
    iput-boolean v1, p0, Landroidx/media2/player/e;->n:Z

    .line 453
    iput-boolean v1, p0, Landroidx/media2/player/e;->o:Z

    .line 454
    iput-boolean v1, p0, Landroidx/media2/player/e;->p:Z

    .line 455
    iput-boolean v1, p0, Landroidx/media2/player/e;->k:Z

    .line 456
    iput v1, p0, Landroidx/media2/player/e;->l:I

    .line 457
    iput v1, p0, Landroidx/media2/player/e;->u:I

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Landroidx/media2/player/e;->v:F

    .line 459
    new-instance v0, Landroidx/media2/player/j$a;

    invoke-direct {v0}, Landroidx/media2/player/j$a;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 460
    invoke-virtual {v0, v1}, Landroidx/media2/player/j$a;->a(F)Landroidx/media2/player/j$a;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroidx/media2/player/j$a;->b()Landroidx/media2/player/j$a;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroidx/media2/player/j$a;->a()Landroidx/media2/player/j$a;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroidx/media2/player/j$a;->c()Landroidx/media2/player/j;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/e;->s:Landroidx/media2/player/j;

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 477
    iget-object v0, p0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->m()Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final g()V
    .locals 6

    .line 631
    iget-object v0, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 632
    iget-boolean v1, p0, Landroidx/media2/player/e;->m:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 633
    iget-boolean v3, p0, Landroidx/media2/player/e;->p:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 635
    iput-boolean v2, p0, Landroidx/media2/player/e;->m:Z

    .line 636
    iput-boolean v2, p0, Landroidx/media2/player/e;->n:Z

    .line 637
    iget-object v1, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v1, v4}, Landroidx/media2/player/e$e;->a(Z)V

    .line 641
    iget-object v1, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    invoke-interface {v1, v0}, Landroidx/media2/player/e$c;->c(Landroidx/media2/common/MediaItem;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 645
    iput-boolean v4, p0, Landroidx/media2/player/e;->p:Z

    .line 646
    iget-object v0, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    invoke-interface {v0}, Landroidx/media2/player/e$c;->r()V

    .line 648
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/player/e;->o:Z

    if-eqz v0, :cond_3

    .line 649
    iput-boolean v4, p0, Landroidx/media2/player/e;->o:Z

    .line 650
    iget-object v0, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v0}, Landroidx/media2/player/e$e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 2200
    iget-object v1, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v1}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 652
    iget-object v2, p0, Landroidx/media2/player/e;->d:Landroidx/media2/exoplayer/external/upstream/j;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/j;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 651
    invoke-interface {v0, v1, v3}, Landroidx/media2/player/e$c;->b(Landroidx/media2/common/MediaItem;I)V

    .line 654
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 3200
    iget-object v1, p0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v1}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 654
    invoke-interface {v0, v1}, Landroidx/media2/player/e$c;->e(Landroidx/media2/common/MediaItem;)V

    :cond_3
    return-void
.end method
