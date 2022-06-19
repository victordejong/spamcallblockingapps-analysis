.class public Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/VideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;,
        Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;,
        Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;,
        Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/net/Uri;

.field private f:I

.field private g:I

.field private h:Landroid/media/MediaPlayer;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/SurfaceHolder;

.field private k:F

.field private l:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

.field private m:Landroid/os/HandlerThread;

.field private n:I

.field private o:I

.field private volatile p:I

.field private volatile q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->k:F

    const/16 v0, 0x3e8

    .line 59
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->n:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->o:I

    .line 65
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->d:Ljava/lang/ref/WeakReference;

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b:Ljava/util/concurrent/ExecutorService;

    .line 86
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    return p1
.end method

.method static synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 38
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private synthetic a(F)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 443
    invoke-interface {v1, p0, p1}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onVolumeChanged(Lcom/verizon/ads/VideoPlayer;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 126
    new-instance p1, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$UC7hbX38KhZQ1lLXjpwzt7FxPrw;

    invoke-direct {p1, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$UC7hbX38KhZQ1lLXjpwzt7FxPrw;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 259
    iget-object p2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    return p0
.end method

.method static synthetic b(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->f:I

    return p1
.end method

.method private synthetic b(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()Z
    .locals 3

    .line 639
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->g:I

    return p1
.end method

.method static synthetic c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method private synthetic c()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 690
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onReady(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)I
    .locals 1

    const/4 v0, 0x6

    .line 38
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    return v0
.end method

.method private synthetic d()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 667
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onError(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->l:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

    return-object p0
.end method

.method private synthetic e()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 387
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onPaused(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method private synthetic f()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 358
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onPlay(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private synthetic g()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 286
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onError(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)Ljava/util/Set;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    return-object p0
.end method

.method private synthetic h()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 212
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onUnloaded(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic i()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;

    .line 129
    invoke-interface {v1, p0}, Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;->onClick(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$26V4ibV0WXjO5KeIxlWTc0z1z2w(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(F)V

    return-void
.end method

.method public static synthetic lambda$HCb1BhNRi5EoRDA2lBQ5_rMbkXI(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->c()V

    return-void
.end method

.method public static synthetic lambda$Sdg1MMXRK8NdOV-xRLE6aNvw20k(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->f()V

    return-void
.end method

.method public static synthetic lambda$UC7hbX38KhZQ1lLXjpwzt7FxPrw(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->i()V

    return-void
.end method

.method public static synthetic lambda$XQ1XE_8dfYePEQ0c0yEFdYWuBP4(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->g()V

    return-void
.end method

.method public static synthetic lambda$Z9aKnZKsSDqlARPGZvgr71hlP2k(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    return-void
.end method

.method public static synthetic lambda$ZU2ipimracsBaToCBPmTgH6-bzQ(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    return-void
.end method

.method public static synthetic lambda$eKDzh9YvHmsQc9YJT7WKKIPmLD8(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->d()V

    return-void
.end method

.method public static synthetic lambda$s0r6lwSp-17HjKg830BA-N_DRuI(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$sZRveuXSN8kHqkD6mi-fnw9Y39c(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$tgrdziMvW5pLSNzdkz4bhJjFeI4(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h()V

    return-void
.end method

.method public static synthetic lambda$vue3QTucGR0WUSl8XaVNV5VKS2g(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->e()V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 657
    iput-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    .line 659
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x7

    .line 661
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 662
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    .line 664
    new-instance p1, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$eKDzh9YvHmsQc9YJT7WKKIPmLD8;

    invoke-direct {p1, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$eKDzh9YvHmsQc9YJT7WKKIPmLD8;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    return-void

    .line 674
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 675
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 678
    :cond_1
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 679
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->setAudioFocus()V

    const/4 p1, 0x3

    .line 680
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 682
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    .line 683
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->f:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->g:I

    if-eqz v0, :cond_2

    .line 684
    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    .line 687
    :cond_2
    new-instance p1, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$HCb1BhNRi5EoRDA2lBQ5_rMbkXI;

    invoke-direct {p1, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$HCb1BhNRi5EoRDA2lBQ5_rMbkXI;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    .line 694
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->play()V

    :cond_3
    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 476
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 477
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "getCurrentPosition must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v2

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public getDuration()I
    .locals 3

    .line 497
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 498
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "getDuration must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v2

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 504
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 2

    .line 564
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 565
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "unregisterListener must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 570
    :cond_0
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->g:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->f:I

    return v0
.end method

.method public getVolume()F
    .locals 2

    .line 459
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 460
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "getVolume must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 465
    :cond_0
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->k:F

    return v0
.end method

.method public load(Landroid/net/Uri;)V
    .locals 3

    .line 226
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 227
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "load must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->e:Landroid/net/Uri;

    if-nez p1, :cond_1

    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->unload()V

    .line 241
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vp-progress-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->m:Landroid/os/HandlerThread;

    .line 242
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 243
    new-instance v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget v2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->n:I

    invoke-direct {v0, p0, v1, v2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->l:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

    .line 245
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    .line 248
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 252
    :cond_2
    new-instance v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;

    invoke-direct {v0, p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    .line 254
    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 255
    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 256
    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 259
    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;

    invoke-direct {v2, p0, v0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi-fnw9Y39c;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 260
    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_3

    .line 265
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "load cannot complete; context has been released."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 271
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 275
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 278
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "An error occurred preparing the VideoPlayer."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x7

    .line 280
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 281
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    .line 283
    new-instance p1, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$XQ1XE_8dfYePEQ0c0yEFdYWuBP4;

    invoke-direct {p1, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$XQ1XE_8dfYePEQ0c0yEFdYWuBP4;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 0

    .line 300
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->load(Landroid/net/Uri;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 375
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 376
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "pause must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 384
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$vue3QTucGR0WUSl8XaVNV5VKS2g;

    invoke-direct {v0, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$vue3QTucGR0WUSl8XaVNV5VKS2g;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    .line 391
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 392
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    :cond_1
    return-void
.end method

.method public play()V
    .locals 3

    .line 335
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 336
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "play must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    if-eq v0, v1, :cond_2

    .line 343
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->k:F

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->setVolume(F)V

    .line 345
    iget v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->o:I

    if-eqz v0, :cond_1

    .line 346
    iget-object v2, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    .line 347
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->o:I

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 352
    iput v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 353
    iput v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    .line 355
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$Sdg1MMXRK8NdOV-xRLE6aNvw20k;

    invoke-direct {v0, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$Sdg1MMXRK8NdOV-xRLE6aNvw20k;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    .line 362
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->l:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

    const/4 v1, 0x1

    .line 1983
    invoke-virtual {v0, v1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->sendEmptyMessage(I)Z

    return-void

    .line 365
    :cond_2
    iput v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    return-void
.end method

.method public registerListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 519
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot register a null instance."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 524
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 525
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "registerListener must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 530
    :cond_1
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$Z9aKnZKsSDqlARPGZvgr71hlP2k;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$Z9aKnZKsSDqlARPGZvgr71hlP2k;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 704
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->unload()V

    return-void
.end method

.method public releaseAudioFocus()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 621
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "releaseAudioFocus is not available. context was released."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "audio"

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 627
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public replay()V
    .locals 2

    .line 309
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 310
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "replay must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_2

    .line 316
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->e:Landroid/net/Uri;

    if-nez v0, :cond_1

    return-void

    .line 320
    :cond_1
    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->load(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->seekTo(I)V

    .line 326
    :goto_0
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->play()V

    return-void
.end method

.method public restoreInstanceState(Landroid/view/AbsSavedState;)V
    .locals 2

    .line 152
    instance-of v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;

    if-eqz v0, :cond_2

    .line 153
    check-cast p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;

    .line 154
    iget v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->targetState:I

    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    .line 155
    iget v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentPosition:I

    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->o:I

    .line 156
    iget v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->volume:F

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->setVolume(F)V

    .line 158
    iget-object v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->uri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->load(Ljava/lang/String;)V

    .line 162
    :cond_0
    iget v0, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->targetState:I

    if-ne p1, v1, :cond_2

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->play()V

    :cond_2
    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcelable;)Landroid/view/AbsSavedState;
    .locals 1

    .line 139
    new-instance v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;

    invoke-direct {v0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;-><init>(Landroid/os/Parcelable;)V

    .line 140
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    iput p1, v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentState:I

    .line 141
    iget p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->p:I

    iput p1, v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->targetState:I

    .line 142
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->currentPosition:I

    .line 143
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->getVolume()F

    move-result p1

    iput p1, v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->volume:F

    .line 144
    iget-object p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->e:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public seekTo(I)V
    .locals 2

    .line 406
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 407
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "seekTo must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 414
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->o:I

    return-void

    .line 417
    :cond_1
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->o:I

    return-void
.end method

.method public setAudioFocus()V
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 601
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "setAudioFocus is not available. context was released."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "audio"

    .line 605
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 607
    iget v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->k:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x3

    .line 609
    invoke-virtual {v0, v3, v1, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void

    .line 611
    :cond_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    return-void
.end method

.method public setProgressInterval(I)V
    .locals 3

    .line 581
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 582
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "setProgressInterval must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 587
    :goto_0
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->n:I

    .line 591
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->l:Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1995
    invoke-virtual {v0, v1, p1, v2}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->i:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->j:Landroid/view/SurfaceHolder;

    .line 95
    new-instance v1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer$1;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 126
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$s0r6lwSp-17HjKg830BA-N_DRuI;

    invoke-direct {v0, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$s0r6lwSp-17HjKg830BA-N_DRuI;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 429
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 430
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "setVolume must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 435
    :cond_0
    iput p1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->k:F

    .line 437
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 440
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$26V4ibV0WXjO5KeIxlWTc0z1z2w;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$26V4ibV0WXjO5KeIxlWTc0z1z2w;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;F)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->setAudioFocus()V

    return-void
.end method

.method public unload()V
    .locals 2

    .line 189
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 190
    sget-object v0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v1, "unload must be called from UI thread."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 203
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 204
    iget-object v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 205
    iput-object v1, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->q:I

    .line 209
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$tgrdziMvW5pLSNzdkz4bhJjFeI4;

    invoke-direct {v0, p0}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$tgrdziMvW5pLSNzdkz4bhJjFeI4;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public unregisterListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 542
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot unregister a null instance."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 547
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 548
    sget-object p1, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a:Lcom/verizon/ads/Logger;

    const-string v0, "unregisterListener must be called from UI thread."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 553
    :cond_1
    new-instance v0, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/videoplayer/-$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6-bzQ;-><init>(Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/videoplayer/VerizonVideoPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method
