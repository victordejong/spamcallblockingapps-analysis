.class public Lc/d/a/j;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/j$c;,
        Lc/d/a/j$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field static b:I

.field static c:I


# instance fields
.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lc/d/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "BlockCompleted"

    .line 1
    invoke-static {v0, v1}, Lc/d/a/i0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lc/d/a/j;->a:Ljava/util/concurrent/Executor;

    const/16 v1, 0xa

    .line 2
    sput v1, Lc/d/a/j;->b:I

    .line 3
    sput v0, Lc/d/a/j;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/d/a/j;->f:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/j;->g:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/d/a/j$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc/d/a/j$c;-><init>(Lc/d/a/j$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc/d/a/j;->d:Landroid/os/Handler;

    .line 6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/d/a/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/j;->h()V

    return-void
.end method

.method static synthetic b(Lc/d/a/t;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lc/d/a/j;->f(Lc/d/a/t;)Z

    move-result p0

    return p0
.end method

.method private c(Lc/d/a/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lc/d/a/j;->h()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static d()Lc/d/a/j;
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/j$b;->a()Lc/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method private e(Lc/d/a/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/j;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static f(Lc/d/a/t;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lc/d/a/t;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lc/d/a/j;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/d/a/j$a;

    invoke-direct {v1, p0}, Lc/d/a/j$a;-><init>(Lc/d/a/t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget v0, Lc/d/a/j;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/d/a/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/d/a/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lc/d/a/j;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lc/d/a/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    goto :goto_1

    .line 8
    :cond_2
    sget v1, Lc/d/a/j;->b:I

    .line 9
    iget-object v3, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Lc/d/a/j;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 10
    iget-object v4, p0, Lc/d/a/j;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lc/d/a/j;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v3, p0, Lc/d/a/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method i(Lc/d/a/t;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/d/a/j;->j(Lc/d/a/t;Z)V

    return-void
.end method

.method j(Lc/d/a/t;Z)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lc/d/a/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lc/d/a/t;->m()V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lc/d/a/j;->f(Lc/d/a/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lc/d/a/j;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lc/d/a/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/t;

    .line 9
    invoke-direct {p0, v2}, Lc/d/a/j;->e(Lc/d/a/t;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lc/d/a/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 11
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_3
    :goto_1
    invoke-static {}, Lc/d/a/j;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-direct {p0, p1}, Lc/d/a/j;->c(Lc/d/a/t;)V

    return-void

    .line 14
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lc/d/a/j;->e(Lc/d/a/t;)V

    return-void
.end method
