.class public final Lnv;
.super Lfv;
.source ""

# interfaces
.implements Lpv$d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnv$k0;,
        Lnv$j0;
    }
.end annotation


# instance fields
.field public final a:Lpv;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lnv$k0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;

.field public e:Lnv$k0;

.field public final f:Ljava/lang/Object;

.field public g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Lfv$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lfv;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMediaPlayer2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnv;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lpv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lnv;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lpv;-><init>(Landroid/content/Context;Lpv$d;Landroid/os/Looper;)V

    iput-object v0, p0, Lnv;->a:Lpv;

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Lpv;->h()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lnv;->b:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lnv;->c:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnv;->d:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnv;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lnv;->d0()V

    return-void
.end method


# virtual methods
.method public A()Lhv;
    .locals 1

    new-instance v0, Lnv$i;

    invoke-direct {v0, p0}, Lnv$i;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhv;

    return-object v0
.end method

.method public B()F
    .locals 1

    new-instance v0, Lnv$n;

    invoke-direct {v0, p0}, Lnv$n;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public C(I)I
    .locals 1

    new-instance v0, Lnv$q;

    invoke-direct {v0, p0, p1}, Lnv$q;-><init>(Lnv;I)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnv$p;

    invoke-direct {v0, p0}, Lnv$p;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public E()I
    .locals 1

    new-instance v0, Lnv$k;

    invoke-direct {v0, p0}, Lnv$k;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public F()I
    .locals 1

    new-instance v0, Lnv$j;

    invoke-direct {v0, p0}, Lnv$j;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public G()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$h0;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnv$h0;-><init>(Lnv;IZ)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public H()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$g0;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnv$g0;-><init>(Lnv;IZ)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public I()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$f0;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lnv$f0;-><init>(Lnv;IZ)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public J()V
    .locals 2

    invoke-virtual {p0}, Lnv;->Y()V

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->e:Lnv$k0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    monitor-enter v1

    :goto_0
    :try_start_1
    iget-boolean v0, v1, Lnv$k0;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lnv;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lnv$t;

    invoke-direct {v0, p0}, Lnv$t;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public L(JI)Ljava/lang/Object;
    .locals 8

    new-instance v7, Lnv$i0;

    const/16 v2, 0xe

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnv$i0;-><init>(Lnv;IZJI)V

    invoke-virtual {p0, v7}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v7
.end method

.method public M(I)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$r;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$r;-><init>(Lnv;IZI)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public N(Landroidx/media/AudioAttributesCompat;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$f;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$f;-><init>(Lnv;IZLandroidx/media/AudioAttributesCompat;)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public O(Ljava/util/concurrent/Executor;Lfv$a;)V
    .locals 1

    invoke-static {p1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P(Ljava/util/concurrent/Executor;Lfv$b;)V
    .locals 1

    invoke-static {p1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lnv;->g:Landroid/util/Pair;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$d0;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$d0;-><init>(Lnv;IZLandroidx/media2/common/MediaItem;)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public R(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$e;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$e;-><init>(Lnv;IZLandroidx/media2/common/MediaItem;)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public S(Lhv;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$h;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$h;-><init>(Lnv;IZLhv;)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public T(F)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$m;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$m;-><init>(Lnv;IZF)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public U(Landroid/view/Surface;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$l;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$l;-><init>(Lnv;IZLandroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public V()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$d;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnv$d;-><init>(Lnv;IZ)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public final W(Lnv$k0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnv;->c0()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public X()V
    .locals 2

    iget-object v0, p0, Lnv;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lnv;->g:Landroid/util/Pair;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Y()V
    .locals 2

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Z(Lnv$j0;)V
    .locals 3

    iget-object v0, p0, Lnv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->g:Landroid/util/Pair;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lfv$b;

    :try_start_1
    new-instance v2, Lnv$o;

    invoke-direct {v2, p0, p1, v1}, Lnv$o;-><init>(Lnv;Lnv$j0;Lfv$b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ExoPlayerMediaPlayer2"

    const-string v0, "The given executor is shutting down. Ignoring the player event."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Landroidx/media2/common/MediaItem;I)V
    .locals 1

    const/16 v0, 0x2bf

    invoke-virtual {p0, p1, v0, p2}, Lnv;->b0(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final a0(Landroidx/media2/common/MediaItem;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnv;->b0(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public b(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/16 v0, 0x2bd

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public final b0(Landroidx/media2/common/MediaItem;II)V
    .locals 1

    new-instance v0, Lnv$a0;

    invoke-direct {v0, p0, p1, p2, p3}, Lnv$a0;-><init>(Lnv;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p0, v0}, Lnv;->Z(Lnv$j0;)V

    return-void
.end method

.method public c(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public c0()V
    .locals 2

    iget-object v0, p0, Lnv;->e:Lnv$k0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnv;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnv;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnv$k0;

    iput-object v0, p0, Lnv;->e:Lnv$k0;

    iget-object v1, p0, Lnv;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public final d0()V
    .locals 1

    new-instance v0, Lnv$b0;

    invoke-direct {v0, p0}, Lnv$b0;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public final e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    iget-object v1, p0, Lnv;->b:Landroid/os/Handler;

    new-instance v2, Lnv$c0;

    invoke-direct {v2, p0, v0, p1}, Lnv$c0;-><init>(Lnv;Lxv;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Loa;->f(Z)V

    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lwv;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const-string v1, "ExoPlayerMediaPlayer2"

    const-string v2, "Internal player error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public f(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->e:Lnv$k0;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lnv$k0;->b:Z

    if-eqz v2, :cond_0

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Lnv$k0;->b(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lnv;->e:Lnv$k0;

    invoke-virtual {p0}, Lnv;->c0()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lnv$z;

    invoke-direct {v0, p0, p1, p2}, Lnv$z;-><init>(Lnv;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Lnv;->Z(Lnv$j0;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->e:Lnv$k0;

    if-eqz v1, :cond_0

    iget v2, v1, Lnv$k0;->a:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lnv$k0;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnv$k0;->b(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lnv;->e:Lnv$k0;

    invoke-virtual {p0}, Lnv;->c0()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i(Landroidx/media2/common/MediaItem;I)V
    .locals 1

    const/16 v0, 0x2c0

    invoke-virtual {p0, p1, v0, p2}, Lnv;->b0(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public j(Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
    .locals 1

    new-instance v0, Lnv$w;

    invoke-direct {v0, p0, p1, p2, p3}, Lnv$w;-><init>(Lnv;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V

    invoke-virtual {p0, v0}, Lnv;->Z(Lnv$j0;)V

    return-void
.end method

.method public k(Landroidx/media2/common/MediaItem;II)V
    .locals 1

    new-instance v0, Lnv$v;

    invoke-direct {v0, p0, p1, p2, p3}, Lnv$v;-><init>(Lnv;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p0, v0}, Lnv;->Z(Lnv$j0;)V

    return-void
.end method

.method public l(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/16 v0, 0x2be

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public m(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/16 v0, 0x322

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public n(Landroidx/media2/common/MediaItem;)V
    .locals 4

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->e:Lnv$k0;

    if-eqz v1, :cond_0

    iget v2, v1, Lnv$k0;->a:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lnv$k0;->c:Landroidx/media2/common/MediaItem;

    invoke-static {v1, p1}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnv;->e:Lnv$k0;

    iget-boolean v1, p1, Lnv$k0;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnv$k0;->b(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnv;->e:Lnv$k0;

    invoke-virtual {p0}, Lnv;->c0()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Landroidx/media2/common/MediaItem;Liv;)V
    .locals 1

    new-instance v0, Lnv$x;

    invoke-direct {v0, p0, p1, p2}, Lnv$x;-><init>(Lnv;Landroidx/media2/common/MediaItem;Liv;)V

    invoke-virtual {p0, v0}, Lnv;->Z(Lnv$j0;)V

    return-void
.end method

.method public p(Landroidx/media2/common/MediaItem;Lgv;)V
    .locals 1

    new-instance v0, Lnv$y;

    invoke-direct {v0, p0, p1, p2}, Lnv$y;-><init>(Lnv;Landroidx/media2/common/MediaItem;Lgv;)V

    invoke-virtual {p0, v0}, Lnv;->Z(Lnv$j0;)V

    return-void
.end method

.method public q(Landroidx/media2/common/MediaItem;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lnv;->a0(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public r(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lnv;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s()V
    .locals 3

    invoke-virtual {p0}, Lnv;->X()V

    iget-object v0, p0, Lnv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnv;->h:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lnv;->h:Landroid/os/HandlerThread;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lnv$u;

    invoke-direct {v0, p0}, Lnv$u;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public u(I)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnv$s;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lnv$s;-><init>(Lnv;IZI)V

    invoke-virtual {p0, v0}, Lnv;->W(Lnv$k0;)Ljava/lang/Object;

    return-object v0
.end method

.method public v()Landroidx/media/AudioAttributesCompat;
    .locals 1

    new-instance v0, Lnv$g;

    invoke-direct {v0, p0}, Lnv$g;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public w()J
    .locals 2

    new-instance v0, Lnv$c;

    invoke-direct {v0, p0}, Lnv$c;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()Landroidx/media2/common/MediaItem;
    .locals 1

    new-instance v0, Lnv$e0;

    invoke-direct {v0, p0}, Lnv$e0;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public y()J
    .locals 2

    new-instance v0, Lnv$a;

    invoke-direct {v0, p0}, Lnv$a;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    new-instance v0, Lnv$b;

    invoke-direct {v0, p0}, Lnv$b;-><init>(Lnv;)V

    invoke-virtual {p0, v0}, Lnv;->e0(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
