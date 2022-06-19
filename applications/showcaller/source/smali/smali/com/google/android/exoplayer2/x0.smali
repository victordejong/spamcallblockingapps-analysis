.class public Lcom/google/android/exoplayer2/x0;
.super Lcom/google/android/exoplayer2/t;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/o0;
.implements Lcom/google/android/exoplayer2/o0$c;
.implements Lcom/google/android/exoplayer2/o0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/x0$b;
    }
.end annotation


# instance fields
.field private A:Lcom/google/android/exoplayer2/b1/d;

.field private B:Lcom/google/android/exoplayer2/b1/d;

.field private C:I

.field private D:Lcom/google/android/exoplayer2/audio/i;

.field private E:F

.field private F:Lcom/google/android/exoplayer2/source/v;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/google/android/exoplayer2/video/m;

.field private I:Lcom/google/android/exoplayer2/video/r/a;

.field private J:Z

.field private K:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private L:Z

.field private M:Z

.field protected final b:[Lcom/google/android/exoplayer2/r0;

.field private final c:Lcom/google/android/exoplayer2/c0;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/exoplayer2/x0$b;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/audio/k;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/text/j;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/metadata/e;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/q;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/audio/l;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/exoplayer2/upstream/f;

.field private final m:Lcom/google/android/exoplayer2/a1/a;

.field private final n:Lcom/google/android/exoplayer2/r;

.field private final o:Lcom/google/android/exoplayer2/s;

.field private final p:Lcom/google/android/exoplayer2/z0;

.field private q:Lcom/google/android/exoplayer2/Format;

.field private r:Lcom/google/android/exoplayer2/Format;

.field private s:Lcom/google/android/exoplayer2/video/k;

.field private t:Landroid/view/Surface;

.field private u:Z

.field private v:I

.field private w:Landroid/view/SurfaceHolder;

.field private x:Landroid/view/TextureView;

.field private y:I

.field private z:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/a1/a;Lcom/google/android/exoplayer2/util/f;Landroid/os/Looper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/v0;",
            "Lcom/google/android/exoplayer2/trackselection/h;",
            "Lcom/google/android/exoplayer2/g0;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "Lcom/google/android/exoplayer2/drm/o;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/f;",
            "Lcom/google/android/exoplayer2/a1/a;",
            "Lcom/google/android/exoplayer2/util/f;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/t;-><init>()V

    .line 2
    iput-object v10, v0, Lcom/google/android/exoplayer2/x0;->l:Lcom/google/android/exoplayer2/upstream/f;

    .line 3
    iput-object v11, v0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    .line 4
    new-instance v12, Lcom/google/android/exoplayer2/x0$b;

    const/4 v2, 0x0

    invoke-direct {v12, v0, v2}, Lcom/google/android/exoplayer2/x0$b;-><init>(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/x0$a;)V

    iput-object v12, v0, Lcom/google/android/exoplayer2/x0;->e:Lcom/google/android/exoplayer2/x0$b;

    .line 5
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v13, v0, Lcom/google/android/exoplayer2/x0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    new-instance v14, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v14}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v14, v0, Lcom/google/android/exoplayer2/x0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v15, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v15}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v15, v0, Lcom/google/android/exoplayer2/x0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v8, v0, Lcom/google/android/exoplayer2/x0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v7, Landroid/os/Handler;

    move-object/from16 v6, p9

    invoke-direct {v7, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/google/android/exoplayer2/x0;->d:Landroid/os/Handler;

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v12

    move-object v5, v12

    move-object v6, v12

    move-object v1, v7

    move-object v7, v12

    move-object v9, v8

    move-object/from16 v8, p5

    .line 12
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/v0;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/q;Lcom/google/android/exoplayer2/audio/l;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/e;Lcom/google/android/exoplayer2/drm/k;)[Lcom/google/android/exoplayer2/r0;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    iput v2, v0, Lcom/google/android/exoplayer2/x0;->E:F

    const/4 v2, 0x0

    .line 14
    iput v2, v0, Lcom/google/android/exoplayer2/x0;->C:I

    .line 15
    sget-object v2, Lcom/google/android/exoplayer2/audio/i;->a:Lcom/google/android/exoplayer2/audio/i;

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->D:Lcom/google/android/exoplayer2/audio/i;

    const/4 v2, 0x1

    .line 16
    iput v2, v0, Lcom/google/android/exoplayer2/x0;->v:I

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->G:Ljava/util/List;

    .line 18
    new-instance v8, Lcom/google/android/exoplayer2/c0;

    move-object v2, v8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 p2, v1

    move-object v1, v8

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/c0;-><init>([Lcom/google/android/exoplayer2/r0;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/g0;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/util/f;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 19
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/a1/a;->L(Lcom/google/android/exoplayer2/o0;)V

    .line 20
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/x0;->o(Lcom/google/android/exoplayer2/o0$a;)V

    .line 21
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/x0;->o(Lcom/google/android/exoplayer2/o0$a;)V

    .line 22
    invoke-virtual {v15, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v13, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v9, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v14, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/x0;->u0(Lcom/google/android/exoplayer2/metadata/e;)V

    move-object/from16 v1, p2

    .line 27
    invoke-interface {v10, v1, v11}, Lcom/google/android/exoplayer2/upstream/f;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/f$a;)V

    move-object/from16 v2, p5

    .line 28
    instance-of v3, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    if-eqz v3, :cond_0

    .line 29
    check-cast v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v2, v1, v11}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->h(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/h;)V

    .line 30
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/r;

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-direct {v2, v1, v3, v12}, Lcom/google/android/exoplayer2/r;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/r$b;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->n:Lcom/google/android/exoplayer2/r;

    .line 31
    new-instance v2, Lcom/google/android/exoplayer2/s;

    invoke-direct {v2, v1, v3, v12}, Lcom/google/android/exoplayer2/s;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/s$b;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->o:Lcom/google/android/exoplayer2/s;

    .line 32
    new-instance v2, Lcom/google/android/exoplayer2/z0;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/z0;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/x0;->p:Lcom/google/android/exoplayer2/z0;

    return-void
.end method

.method private C0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->x:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/x0;->e:Lcom/google/android/exoplayer2/x0$b;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->x:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/x0;->x:Landroid/view/TextureView;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->w:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/x0;->e:Lcom/google/android/exoplayer2/x0$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/x0;->w:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private D0()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/x0;->E:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->o:Lcom/google/android/exoplayer2/s;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s;->f()F

    move-result v1

    mul-float v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-interface {v4}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 4
    iget-object v5, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private F0(Lcom/google/android/exoplayer2/video/k;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 4
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    const/16 v4, 0x8

    .line 5
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->s:Lcom/google/android/exoplayer2/video/k;

    return-void
.end method

.method private H0(Landroid/view/Surface;Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-interface {v4}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 4
    iget-object v5, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 5
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    move-result-object v4

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 8
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/p0;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p0;->a()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/x0;->u:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 13
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    .line 14
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/x0;->u:Z

    return-void
.end method

.method private J0(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/c0;->s0(ZI)V

    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->M()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/x0;->J:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/o;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/x0;->J:Z

    :cond_1
    return-void
.end method

.method static synthetic Y(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->r:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic Z(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/b1/d;)Lcom/google/android/exoplayer2/b1/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->A:Lcom/google/android/exoplayer2/b1/d;

    return-object p1
.end method

.method static synthetic a0(Lcom/google/android/exoplayer2/x0;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->G:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic c0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic d0(Lcom/google/android/exoplayer2/x0;Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic e0(Lcom/google/android/exoplayer2/x0;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    return-void
.end method

.method static synthetic f0(Lcom/google/android/exoplayer2/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->D0()V

    return-void
.end method

.method static synthetic g0(Lcom/google/android/exoplayer2/x0;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/x0;->J0(ZI)V

    return-void
.end method

.method static synthetic h0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->K:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic i0(Lcom/google/android/exoplayer2/x0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/x0;->L:Z

    return p0
.end method

.method static synthetic j0(Lcom/google/android/exoplayer2/x0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/x0;->L:Z

    return p1
.end method

.method static synthetic k0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic l0(Lcom/google/android/exoplayer2/x0;)Lcom/google/android/exoplayer2/z0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->p:Lcom/google/android/exoplayer2/z0;

    return-object p0
.end method

.method static synthetic m0(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->q:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic n0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic o0(Lcom/google/android/exoplayer2/x0;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic p0(Lcom/google/android/exoplayer2/x0;Lcom/google/android/exoplayer2/b1/d;)Lcom/google/android/exoplayer2/b1/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->B:Lcom/google/android/exoplayer2/b1/d;

    return-object p1
.end method

.method static synthetic q0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic r0(Lcom/google/android/exoplayer2/x0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/x0;->C:I

    return p0
.end method

.method static synthetic s0(Lcom/google/android/exoplayer2/x0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/x0;->C:I

    return p1
.end method

.method static synthetic t0(Lcom/google/android/exoplayer2/x0;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/x0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private y0(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/x0;->y:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/x0;->z:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/x0;->y:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/x0;->z:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/p;

    .line 5
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/video/p;->onSurfaceSizeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public A0(Lcom/google/android/exoplayer2/source/v;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->F:Lcom/google/android/exoplayer2/source/v;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/v;->e(Lcom/google/android/exoplayer2/source/w;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a;->K()V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->F:Lcom/google/android/exoplayer2/source/v;

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/v;->d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/w;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->o:Lcom/google/android/exoplayer2/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s;->i(Z)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->h()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/x0;->J0(ZI)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c0;->q0(Lcom/google/android/exoplayer2/source/v;ZZ)V

    return-void
.end method

.method public B()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->B()I

    move-result v0

    return v0
.end method

.method public B0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->n:Lcom/google/android/exoplayer2/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->o:Lcom/google/android/exoplayer2/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->p:Lcom/google/android/exoplayer2/z0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z0;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->r0()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->C0()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/x0;->u:Z

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 10
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->F:Lcom/google/android/exoplayer2/source/v;

    if-eqz v0, :cond_2

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/v;->e(Lcom/google/android/exoplayer2/source/w;)V

    .line 13
    iput-object v2, p0, Lcom/google/android/exoplayer2/x0;->F:Lcom/google/android/exoplayer2/source/v;

    .line 14
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/x0;->L:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->K:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 16
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/x0;->L:Z

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->l:Lcom/google/android/exoplayer2/upstream/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/f;->d(Lcom/google/android/exoplayer2/upstream/f$a;)V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/x0;->G:Ljava/util/List;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/x0;->M:Z

    return-void
.end method

.method public C(Lcom/google/android/exoplayer2/video/m;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->H:Lcom/google/android/exoplayer2/video/m;

    if-eq v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v2

    const/4 v3, 0x6

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public D()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->D()I

    move-result v0

    return v0
.end method

.method public E(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c0;->E(I)V

    return-void
.end method

.method public E0(Lcom/google/android/exoplayer2/l0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c0;->t0(Lcom/google/android/exoplayer2/l0;)V

    return-void
.end method

.method public G(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/x0;->x0(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public G0(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->C0()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->v0()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->w:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 6
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/x0;->e:Lcom/google/android/exoplayer2/x0$b;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 14
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    :goto_0
    return-void
.end method

.method public H(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->G:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/text/j;->h(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public I()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->I()I

    move-result v0

    return v0
.end method

.method public I0(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->m(FFF)F

    move-result p1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/x0;->E:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/x0;->E:F

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->D0()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/k;

    .line 7
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/k;->g(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public J()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->J()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public K()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->K()I

    move-result v0

    return v0
.end method

.method public L()Lcom/google/android/exoplayer2/y0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->L()Lcom/google/android/exoplayer2/y0;

    move-result-object v0

    return-object v0
.end method

.method public M()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->M()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public N()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->N()Z

    move-result v0

    return v0
.end method

.method public O()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public P(Landroid/view/TextureView;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->C0()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->v0()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->x:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 6
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "SimpleExoPlayer"

    const-string v4, "Replacing existing SurfaceTextureListener."

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/x0;->e:Lcom/google/android/exoplayer2/x0$b;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_4

    .line 11
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 12
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    goto :goto_1

    .line 13
    :cond_4
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 14
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    :goto_1
    return-void
.end method

.method public Q()Lcom/google/android/exoplayer2/trackselection/g;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->Q()Lcom/google/android/exoplayer2/trackselection/g;

    move-result-object v0

    return-object v0
.end method

.method public R(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c0;->R(I)I

    move-result p1

    return p1
.end method

.method public S(Lcom/google/android/exoplayer2/video/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public T()Lcom/google/android/exoplayer2/o0$b;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->C0()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->v0()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 5
    :goto_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/video/r/a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->I:Lcom/google/android/exoplayer2/video/r/a;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 6
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    const/4 v4, 0x7

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    .line 8
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/video/m;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/x0;->H:Lcom/google/android/exoplayer2/video/m;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 6
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    const/4 v4, 0x6

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    .line 8
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/l0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->d()Lcom/google/android/exoplayer2/l0;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->e()Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->m:Lcom/google/android/exoplayer2/a1/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a1/a;->J()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c0;->g(IJ)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->h()Z

    move-result v0

    return v0
.end method

.method public i(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->t:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->w0()V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c0;->j(Z)V

    return-void
.end method

.method public k()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->k()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/android/exoplayer2/video/r/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->I:Lcom/google/android/exoplayer2/video/r/a;

    if-eq v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/x0;->b:[Lcom/google/android/exoplayer2/r0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 4
    invoke-interface {v2}, Lcom/google/android/exoplayer2/r0;->i()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/c0;->Z(Lcom/google/android/exoplayer2/p0$b;)Lcom/google/android/exoplayer2/p0;

    move-result-object v2

    const/4 v3, 0x7

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p0;->n(I)Lcom/google/android/exoplayer2/p0;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p0;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/p0;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/p0;->l()Lcom/google/android/exoplayer2/p0;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public n(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->x:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/x0;->P(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c0;->o(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/video/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->w0()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/x0;->F0(Lcom/google/android/exoplayer2/video/k;)V

    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->q()I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/x0;->G0(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/text/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/o0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c0;->t(Lcom/google/android/exoplayer2/o0$a;)V

    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->u()I

    move-result v0

    return v0
.end method

.method public u0(Lcom/google/android/exoplayer2/metadata/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Lcom/google/android/exoplayer2/video/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/x0;->F0(Lcom/google/android/exoplayer2/video/k;)V

    return-void
.end method

.method public w(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->o:Lcom/google/android/exoplayer2/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/x0;->B()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/s;->j(ZI)I

    move-result v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/x0;->J0(ZI)V

    return-void
.end method

.method public w0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->C0()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/x0;->H0(Landroid/view/Surface;Z)V

    .line 4
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/x0;->y0(II)V

    return-void
.end method

.method public x()Lcom/google/android/exoplayer2/o0$c;
    .locals 0

    return-object p0
.end method

.method public x0(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->w:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/x0;->G0(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public y()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x0;->K0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/x0;->c:Lcom/google/android/exoplayer2/c0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c0;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public z0(Lcom/google/android/exoplayer2/source/v;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/x0;->A0(Lcom/google/android/exoplayer2/source/v;ZZ)V

    return-void
.end method
