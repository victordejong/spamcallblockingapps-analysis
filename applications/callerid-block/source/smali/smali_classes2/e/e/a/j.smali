.class public Le/e/a/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/j$c;,
        Le/e/a/j$b;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/Executor;

.field static f:I

.field static g:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Le/e/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/e/a/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "BlockCompleted"

    invoke-static {v0, v1}, Le/e/a/h0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Le/e/a/j;->e:Ljava/util/concurrent/Executor;

    const/16 v1, 0xa

    sput v1, Le/e/a/j;->f:I

    sput v0, Le/e/a/j;->g:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/e/a/j;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/e/a/j;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Le/e/a/j$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/e/a/j$c;-><init>(Le/e/a/j$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Le/e/a/j;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Le/e/a/j$a;)V
    .locals 0

    invoke-direct {p0}, Le/e/a/j;-><init>()V

    return-void
.end method

.method static synthetic a(Le/e/a/j;)V
    .locals 0

    invoke-direct {p0}, Le/e/a/j;->h()V

    return-void
.end method

.method static synthetic b(Le/e/a/s;)Z
    .locals 0

    invoke-static {p0}, Le/e/a/j;->f(Le/e/a/s;)Z

    move-result p0

    return p0
.end method

.method private c(Le/e/a/s;)V
    .locals 2

    iget-object v0, p0, Le/e/a/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Le/e/a/j;->h()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static d()Le/e/a/j;
    .locals 1

    invoke-static {}, Le/e/a/j$b;->a()Le/e/a/j;

    move-result-object v0

    return-object v0
.end method

.method private e(Le/e/a/s;)V
    .locals 2

    iget-object v0, p0, Le/e/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static f(Le/e/a/s;)Z
    .locals 2

    invoke-interface {p0}, Le/e/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/e/a/j;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Le/e/a/j$a;

    invoke-direct {v1, p0}, Le/e/a/j$a;-><init>(Le/e/a/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g()Z
    .locals 1

    sget v0, Le/e/a/j;->f:I

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

    iget-object v0, p0, Le/e/a/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/e/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Le/e/a/j;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Le/e/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    goto :goto_1

    :cond_2
    sget v1, Le/e/a/j;->f:I

    iget-object v3, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Le/e/a/j;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Le/e/a/j;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/e/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v3, p0, Le/e/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method i(Le/e/a/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/e/a/j;->j(Le/e/a/s;Z)V

    return-void
.end method

.method j(Le/e/a/s;Z)V
    .locals 3

    invoke-interface {p1}, Le/e/a/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Le/e/a/s;->l()V

    return-void

    :cond_0
    invoke-static {p1}, Le/e/a/j;->f(Le/e/a/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Le/e/a/j;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/e/a/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/e/a/s;

    invoke-direct {p0, v2}, Le/e/a/j;->e(Le/e/a/s;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Le/e/a/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-static {}, Le/e/a/j;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Le/e/a/j;->c(Le/e/a/s;)V

    return-void

    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Le/e/a/j;->e(Le/e/a/s;)V

    return-void
.end method
