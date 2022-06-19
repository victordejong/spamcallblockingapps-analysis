.class public final Landroidx/media2/exoplayer/external/ak;
.super Landroidx/media2/exoplayer/external/a;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/ak$b;,
        Landroidx/media2/exoplayer/external/ak$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/view/SurfaceHolder;

.field private D:Landroid/view/TextureView;

.field private E:I

.field private F:I

.field private G:Z

.field protected final b:[Landroidx/media2/exoplayer/external/ag;

.field public final c:Landroidx/media2/exoplayer/external/h;

.field public final d:Landroid/os/Handler;

.field final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/video/f;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/audio/f;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/text/i;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/metadata/d;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/video/g;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/audio/g;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroidx/media2/exoplayer/external/a/a;

.field public final l:Landroidx/media2/exoplayer/external/audio/e;

.field m:Landroidx/media2/exoplayer/external/Format;

.field n:Landroidx/media2/exoplayer/external/Format;

.field o:Landroid/view/Surface;

.field p:Landroidx/media2/exoplayer/external/b/d;

.field q:Landroidx/media2/exoplayer/external/b/d;

.field r:I

.field public s:Landroidx/media2/exoplayer/external/audio/c;

.field public t:F

.field public u:Landroidx/media2/exoplayer/external/source/t;

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation
.end field

.field w:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

.field x:Z

.field private final y:Landroidx/media2/exoplayer/external/ak$b;

.field private final z:Landroidx/media2/exoplayer/external/upstream/c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/a/a;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/ai;",
            "Landroidx/media2/exoplayer/external/trackselection/g;",
            "Landroidx/media2/exoplayer/external/y;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/c;",
            "Landroidx/media2/exoplayer/external/a/a;",
            "Landroidx/media2/exoplayer/external/util/b;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 419
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/a;-><init>()V

    .line 420
    iput-object v9, v0, Landroidx/media2/exoplayer/external/ak;->z:Landroidx/media2/exoplayer/external/upstream/c;

    .line 421
    iput-object v10, v0, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    .line 422
    new-instance v11, Landroidx/media2/exoplayer/external/ak$b;

    const/4 v1, 0x0

    invoke-direct {v11, v0, v1}, Landroidx/media2/exoplayer/external/ak$b;-><init>(Landroidx/media2/exoplayer/external/ak;Landroidx/media2/exoplayer/external/ak$1;)V

    iput-object v11, v0, Landroidx/media2/exoplayer/external/ak;->y:Landroidx/media2/exoplayer/external/ak$b;

    .line 423
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v12, v0, Landroidx/media2/exoplayer/external/ak;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 424
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v13, v0, Landroidx/media2/exoplayer/external/ak;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 425
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ak;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 426
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ak;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 427
    new-instance v14, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v14}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v14, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 428
    new-instance v15, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v15}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v15, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 429
    new-instance v7, Landroid/os/Handler;

    move-object/from16 v6, p9

    invoke-direct {v7, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v0, Landroidx/media2/exoplayer/external/ak;->d:Landroid/os/Handler;

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v11

    move-object v4, v11

    move-object v5, v11

    move-object v6, v11

    move-object v8, v7

    move-object/from16 v7, p5

    .line 431
    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/ai;->a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/text/i;Landroidx/media2/exoplayer/external/metadata/d;Landroidx/media2/exoplayer/external/drm/k;)[Landroidx/media2/exoplayer/external/ag;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/ak;->b:[Landroidx/media2/exoplayer/external/ag;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 440
    iput v1, v0, Landroidx/media2/exoplayer/external/ak;->t:F

    const/4 v7, 0x0

    .line 441
    iput v7, v0, Landroidx/media2/exoplayer/external/ak;->r:I

    .line 442
    sget-object v1, Landroidx/media2/exoplayer/external/audio/c;->a:Landroidx/media2/exoplayer/external/audio/c;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ak;->s:Landroidx/media2/exoplayer/external/audio/c;

    const/4 v6, 0x1

    .line 443
    iput v6, v0, Landroidx/media2/exoplayer/external/ak;->B:I

    .line 444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ak;->v:Ljava/util/List;

    .line 447
    new-instance v5, Landroidx/media2/exoplayer/external/h;

    move-object v1, v5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 p2, v8

    move-object v8, v5

    move-object/from16 v5, p6

    const/16 v16, 0x1

    move-object/from16 v6, p8

    const/16 v17, 0x0

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/h;-><init>([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V

    iput-object v8, v0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 2120
    iget-object v1, v10, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    if-eqz v1, :cond_1

    iget-object v1, v10, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 2660
    iget-object v1, v1, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    .line 2121
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 2120
    :goto_1
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 2122
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ae;

    iput-object v1, v10, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    .line 450
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ae$b;)V

    .line 451
    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ae$b;)V

    .line 452
    invoke-virtual {v14, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v12, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v15, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v13, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/metadata/d;)V

    move-object/from16 v1, p2

    .line 457
    invoke-interface {v9, v1, v10}, Landroidx/media2/exoplayer/external/upstream/c;->a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/upstream/c$a;)V

    move-object v2, v1

    move-object/from16 v1, p5

    .line 458
    instance-of v3, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    if-eqz v3, :cond_2

    .line 459
    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 3283
    iget-object v1, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a:Landroidx/media2/exoplayer/external/util/f;

    invoke-virtual {v1, v2, v10}, Landroidx/media2/exoplayer/external/util/f;->a(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 461
    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/audio/e;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v11}, Landroidx/media2/exoplayer/external/audio/e;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/e$b;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ak;->l:Landroidx/media2/exoplayer/external/audio/e;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/a/a;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V
    .locals 10

    .line 2040
    sget-object v5, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 379
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/ak;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ai;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/a/a;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 7

    .line 1370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak;->b:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1372
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/ag;->a()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1373
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 1374
    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/af$b;)Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/af;->a(I)Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/af;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/af;->a()Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    .line 1373
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1377
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak;->o:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 1380
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/af;

    .line 1381
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/af;->c()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1384
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1387
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak;->A:Z

    if-eqz v0, :cond_3

    .line 1388
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->o:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1391
    :cond_3
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak;->o:Landroid/view/Surface;

    .line 1392
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/ak;->A:Z

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/ak;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ak;->t()V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/ak;II)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/ak;->a(II)V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/ak;Landroid/view/Surface;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/ak;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method private r()Landroid/os/Looper;
    .locals 1

    .line 1071
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 7183
    iget-object v0, v0, Landroidx/media2/exoplayer/external/h;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 3

    .line 1353
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->D:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1354
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ak;->y:Landroidx/media2/exoplayer/external/ak$b;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1355
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1357
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->D:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1359
    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ak;->D:Landroid/view/TextureView;

    .line 1361
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->C:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1362
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ak;->y:Landroidx/media2/exoplayer/external/ak$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1363
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ak;->C:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private t()V
    .locals 7

    .line 1406
    iget v0, p0, Landroidx/media2/exoplayer/external/ak;->t:F

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak;->l:Landroidx/media2/exoplayer/external/audio/e;

    .line 12139
    iget v1, v1, Landroidx/media2/exoplayer/external/audio/e;->e:F

    mul-float v0, v0, v1

    .line 1407
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak;->b:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1408
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/ag;->a()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1409
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/af$b;)Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/af;->a(I)Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/af;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/af;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/af;->a()Landroidx/media2/exoplayer/external/af;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 684
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 685
    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(FFF)F

    move-result p1

    .line 686
    iget v0, p0, Landroidx/media2/exoplayer/external/ak;->t:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    iput p1, p0, Landroidx/media2/exoplayer/external/ak;->t:F

    .line 690
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ak;->t()V

    .line 691
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/f;

    .line 692
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/f;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(II)V
    .locals 1

    .line 1396
    iget v0, p0, Landroidx/media2/exoplayer/external/ak;->E:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/ak;->F:I

    if-eq p2, v0, :cond_1

    .line 1397
    :cond_0
    iput p1, p0, Landroidx/media2/exoplayer/external/ak;->E:I

    .line 1398
    iput p2, p0, Landroidx/media2/exoplayer/external/ak;->F:I

    .line 1399
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/video/f;

    .line 1400
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/video/f;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(IJ)V
    .locals 3

    .line 1175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1176
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    .line 10132
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 10737
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/a/a$b;->g:Z

    if-nez v1, :cond_0

    .line 10133
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 10134
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    const/4 v2, 0x1

    .line 10784
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/a/a$b;->g:Z

    .line 10135
    iget-object v0, v0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1177
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/h;->a(IJ)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 532
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 533
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ak;->s()V

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/ak;->a(Landroid/view/Surface;Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 536
    :goto_0
    invoke-virtual {p0, v0, v0}, Landroidx/media2/exoplayer/external/ak;->a(II)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ae$b;)V
    .locals 1

    .line 1076
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1077
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/ae$b;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/audio/c;)V
    .locals 8

    .line 3629
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 3630
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->s:Landroidx/media2/exoplayer/external/audio/c;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 3631
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak;->s:Landroidx/media2/exoplayer/external/audio/c;

    .line 3632
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->b:[Landroidx/media2/exoplayer/external/ag;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 3633
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/ag;->a()I

    move-result v7

    if-ne v7, v3, :cond_0

    .line 3634
    iget-object v7, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 3635
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/af$b;)Landroidx/media2/exoplayer/external/af;

    move-result-object v6

    .line 3636
    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/af;->a(I)Landroidx/media2/exoplayer/external/af;

    move-result-object v6

    .line 3637
    invoke-virtual {v6, p1}, Landroidx/media2/exoplayer/external/af;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/af;

    move-result-object v6

    .line 3638
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/af;->a()Landroidx/media2/exoplayer/external/af;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3641
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/f;

    .line 3642
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/f;->c()V

    goto :goto_1

    .line 3647
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak;->l:Landroidx/media2/exoplayer/external/audio/e;

    .line 3649
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result v4

    .line 4154
    iget-object v5, p1, Landroidx/media2/exoplayer/external/audio/e;->b:Landroidx/media2/exoplayer/external/audio/c;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4155
    iput-object v6, p1, Landroidx/media2/exoplayer/external/audio/e;->b:Landroidx/media2/exoplayer/external/audio/c;

    .line 4156
    iput v2, p1, Landroidx/media2/exoplayer/external/audio/e;->d:I

    .line 4158
    iget v5, p1, Landroidx/media2/exoplayer/external/audio/e;->d:I

    if-eq v5, v3, :cond_3

    iget v5, p1, Landroidx/media2/exoplayer/external/audio/e;->d:I

    if-nez v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    const-string v5, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v4, v2, :cond_5

    if-ne v4, v1, :cond_6

    .line 4163
    :cond_5
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/audio/e;->a()I

    move-result v3

    goto :goto_2

    :cond_6
    if-ne v4, v3, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    goto :goto_2

    .line 4169
    :cond_8
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/audio/e;->a(Z)I

    move-result v3

    .line 3650
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result p1

    invoke-virtual {p0, p1, v3}, Landroidx/media2/exoplayer/external/ak;->a(ZI)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/metadata/d;)V
    .locals 1

    .line 967
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/video/g;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1007
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 6019
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 1131
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->l:Landroidx/media2/exoplayer/external/audio/e;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 8250
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/e;->b(Z)V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 8197
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/e;->a()I

    move-result v2

    .line 1134
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroidx/media2/exoplayer/external/ak;->a(ZI)V

    return-void
.end method

.method public final a(ZI)V
    .locals 3

    .line 1416
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/h;->a(ZZ)V

    return-void
.end method

.method public final b()Landroid/os/Looper;
    .locals 1

    .line 1066
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 6178
    iget-object v0, v0, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    .line 6271
    iget-object v0, v0, Landroidx/media2/exoplayer/external/u;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1292
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1293
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->c()I

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    .line 1298
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 1304
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1305
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 1310
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1316
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .line 1328
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1329
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->h()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1334
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->i()I

    move-result v0

    return v0
.end method

.method public final j()J
    .locals 2

    .line 1340
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1341
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()Landroidx/media2/exoplayer/external/al;
    .locals 1

    .line 1280
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1281
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 11566
    iget-object v0, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1089
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1090
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 7204
    iget-object v0, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget v0, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    return v0
.end method

.method public final m()Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .locals 1

    .line 1096
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1097
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 7210
    iget-object v0, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1139
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 9269
    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/h;->e:Z

    return v0
.end method

.method public final o()I
    .locals 1

    .line 1145
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    .line 9283
    iget v0, v0, Landroidx/media2/exoplayer/external/h;->f:I

    return v0
.end method

.method public final p()V
    .locals 3

    .line 1226
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 1227
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->l:Landroidx/media2/exoplayer/external/audio/e;

    const/4 v1, 0x1

    .line 11202
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/e;->b(Z)V

    .line 1228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/h;->b()V

    .line 1229
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ak;->s()V

    .line 1230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->o:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1231
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/ak;->A:Z

    if-eqz v2, :cond_0

    .line 1232
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1234
    :cond_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ak;->o:Landroid/view/Surface;

    .line 1236
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->u:Landroidx/media2/exoplayer/external/source/t;

    if-eqz v0, :cond_2

    .line 1237
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/u;)V

    .line 1238
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ak;->u:Landroidx/media2/exoplayer/external/source/t;

    .line 1240
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak;->x:Z

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->w:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->a()V

    const/4 v0, 0x0

    .line 1242
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ak;->x:Z

    .line 1244
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak;->z:Landroidx/media2/exoplayer/external/upstream/c;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/c;->a(Landroidx/media2/exoplayer/external/upstream/c$a;)V

    .line 1245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ak;->v:Ljava/util/List;

    return-void
.end method

.method public final q()V
    .locals 3

    .line 1422
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ak;->r()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1427
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ak;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 1423
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 1428
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ak;->G:Z

    :cond_1
    return-void
.end method
