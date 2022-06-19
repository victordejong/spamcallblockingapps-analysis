.class public Lk7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/h$f;,
        Lk7/h$d;,
        Lk7/h$e;,
        Lk7/h$i;,
        Lk7/h$h;,
        Lk7/h$g;
    }
.end annotation


# static fields
.field public static f:Ljava/util/concurrent/ExecutorService;

.field public static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Ljava/util/concurrent/ExecutorService;

.field public static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lk7/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lk7/u;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lk7/h$h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk7/h;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lk7/h;-><init>(Ljava/lang/String;)V

    const-string v0, "AsyncServer-worker-"

    .line 3
    invoke-static {v0}, Lk7/h;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lk7/h;->f:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Lk7/h$b;

    invoke-direct {v0}, Lk7/h$b;-><init>()V

    sput-object v0, Lk7/h;->g:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    .line 5
    invoke-static {v0}, Lk7/h;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lk7/h;->h:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lk7/h;->i:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk7/h;->c:I

    .line 3
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lk7/h$i;->a:Lk7/h$i;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    .line 4
    :cond_0
    iput-object p1, p0, Lk7/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lk7/h;Lk7/u;Ljava/util/PriorityQueue;)V
    .locals 5

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lk7/h;->l(Lk7/h;Lk7/u;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lk7/h$d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/channels/ClosedSelectorException;

    if-nez v3, :cond_0

    const-string v3, "NIO"

    const-string v4, "Selector exception, shutting down"

    .line 3
    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-array v2, v1, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    .line 4
    invoke-static {v2}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 5
    :goto_1
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v2, p1, Lk7/u;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lk7/u;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 8
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lk7/u;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_1
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    new-array v3, v1, [Ljava/io/Closeable;

    .line 10
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    :cond_3
    :try_start_4
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    .line 12
    invoke-static {p2}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 13
    iget-object p2, p0, Lk7/h;->a:Lk7/u;

    if-ne p2, p1, :cond_4

    .line 14
    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p2, Lk7/h$i;->a:Lk7/h$i;

    invoke-direct {p1, v1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lk7/h;->a:Lk7/u;

    .line 16
    iput-object p1, p0, Lk7/h;->e:Ljava/lang/Thread;

    .line 17
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static e(Lk7/h;Ljava/util/PriorityQueue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk7/h;",
            "Ljava/util/PriorityQueue<",
            "Lk7/h$h;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    const/4 v2, 0x0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7/h$h;

    .line 5
    iget-wide v6, v5, Lk7/h$h;->c:J

    cmp-long v8, v6, v3

    if-gtz v8, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    sub-long/2addr v6, v3

    .line 6
    invoke-virtual {p1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-wide v0, v6

    .line 7
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lk7/h;->c:I

    return-wide v0

    .line 9
    :cond_2
    iget-object v2, v2, Lk7/h$h;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 1
    new-instance v7, Lk7/h$f;

    invoke-direct {v7, p0}, Lk7/h$f;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p0
.end method

.method public static h(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Lk7/h$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk7/h$g;-><init>(Lk7/f;)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lk7/w;->b(Ljava/lang/Thread;)Lk7/w;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lk7/h$g;->c:Lk7/w;

    .line 4
    iput-object p0, v0, Lk7/h$g;->d:Landroid/os/Handler;

    .line 5
    iput-object p1, v0, Lk7/h$g;->b:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v1, v0}, Lk7/w;->a(Ljava/lang/Runnable;)Z

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p0, v1, Lk7/w;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public static l(Lk7/h;Lk7/u;Ljava/util/PriorityQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk7/h;",
            "Lk7/u;",
            "Ljava/util/PriorityQueue<",
            "Lk7/h$h;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk7/h$d;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lk7/h;->e(Lk7/h;Ljava/util/PriorityQueue;)J

    move-result-wide v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3
    :try_start_1
    iget-object p2, p1, Lk7/u;->a:Ljava/nio/channels/Selector;

    invoke-virtual {p2}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p2

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lk7/u;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 5
    monitor-exit p0

    return-void

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    const-wide/16 v0, 0x0

    .line 7
    :try_start_2
    invoke-virtual {p1, v0, v1}, Lk7/u;->k(J)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v0, v1}, Lk7/u;->k(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 9
    :cond_3
    :goto_1
    iget-object p2, p1, Lk7/u;->a:Ljava/nio/channels/Selector;

    invoke-virtual {p2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 11
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 13
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 15
    iget-object v6, p1, Lk7/u;->a:Ljava/nio/channels/Selector;

    .line 16
    invoke-virtual {v2, v6, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 17
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll7/d;

    .line 18
    new-instance v6, Lk7/a;

    invoke-direct {v6}, Lk7/a;-><init>()V

    .line 19
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    .line 20
    new-instance v7, Lu7/a;

    invoke-direct {v7}, Lu7/a;-><init>()V

    iput-object v7, v6, Lk7/a;->e:Lu7/a;

    .line 21
    new-instance v7, Lk7/v;

    invoke-direct {v7, v2}, Lk7/v;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v7, v6, Lk7/a;->a:Lk7/v;

    .line 22
    iput-object p0, v6, Lk7/a;->c:Lk7/h;

    .line 23
    iput-object v3, v6, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    .line 24
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {v1, v6}, Ll7/d;->b(Lk7/j;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_0
    move-object v1, v3

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-object v1, v3

    :goto_3
    :try_start_6
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v3, v2, v5

    .line 26
    invoke-static {v2}, Ly/d;->e([Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 29
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/a;

    .line 30
    invoke-virtual {v1}, Lk7/a;->n()I

    goto :goto_2

    .line 31
    :cond_7
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 32
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/a;

    .line 33
    iget-object v2, v1, Lk7/a;->a:Lk7/v;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, v1, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 35
    iget-object v1, v1, Lk7/a;->g:Ll7/f;

    if-eqz v1, :cond_4

    .line 36
    invoke-interface {v1}, Ll7/f;->f()V

    goto/16 :goto_2

    .line 37
    :cond_8
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/h$e;

    .line 39
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 40
    invoke-virtual {v1, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_3

    .line 41
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 42
    new-instance v7, Lk7/a;

    invoke-direct {v7}, Lk7/a;-><init>()V

    .line 43
    iput-object p0, v7, Lk7/a;->c:Lk7/h;

    .line 44
    iput-object v1, v7, Lk7/a;->b:Ljava/nio/channels/SelectionKey;

    .line 45
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 46
    new-instance v8, Lu7/a;

    invoke-direct {v8}, Lu7/a;-><init>()V

    iput-object v8, v7, Lk7/a;->e:Lu7/a;

    .line 47
    new-instance v8, Lk7/v;

    invoke-direct {v8, v6}, Lk7/v;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v8, v7, Lk7/a;->a:Lk7/v;

    .line 48
    invoke-virtual {v1, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_3

    .line 49
    :try_start_8
    invoke-virtual {v2, v3, v7, v3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, v2, Lk7/h$e;->k:Ll7/b;

    invoke-interface {v1, v3, v7}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    goto/16 :goto_2

    :catch_2
    move-exception v7

    .line 51
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v6, v1, v5

    .line 52
    invoke-static {v1}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 53
    invoke-virtual {v2, v7, v3, v3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iget-object v1, v2, Lk7/h$e;->k:Ll7/b;

    invoke-interface {v1, v7, v3}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "NIO"

    const-string v2, "wtf"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown key state."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    nop

    goto/16 :goto_2

    .line 57
    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 58
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception p0

    .line 59
    new-instance p1, Lk7/h$d;

    invoke-direct {p1, p0}, Lk7/h$d;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public b(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;
    .locals 8

    .line 1
    new-instance v6, Lk7/h$e;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lk7/h$e;-><init>(Lk7/h;Lk7/f;)V

    .line 2
    new-instance v7, Lk7/g;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lk7/g;-><init>(Lk7/h;Lk7/h$e;Ll7/b;Ll7/e;Ljava/net/InetSocketAddress;)V

    const-wide/16 p1, 0x0

    .line 3
    invoke-virtual {p0, v7, p1, p2}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    return-object v6
.end method

.method public c(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lk7/h;->b(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lm7/g;

    invoke-direct {v0}, Lm7/g;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lm7/g;

    invoke-direct {v2}, Lm7/g;-><init>()V

    .line 6
    sget-object v3, Lk7/h;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lk7/i;

    invoke-direct {v4, p0, v1, v2}, Lk7/i;-><init>(Lk7/h;Ljava/lang/String;Lm7/g;)V

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lt4/d;->e:Lt4/d;

    invoke-virtual {v2, v1}, Lm7/g;->t(Lm7/h;)Lm7/c;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lm7/g;->d(Lm7/a;)Z

    .line 9
    new-instance v2, Lk7/h$a;

    invoke-direct {v2, p0, p2, v0, p1}, Lk7/h$a;-><init>(Lk7/h;Ll7/b;Lm7/g;Ljava/net/InetSocketAddress;)V

    .line 10
    check-cast v1, Lm7/g;

    invoke-virtual {v1, v2}, Lm7/g;->k(Lm7/d;)V

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/h;->e:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/Runnable;)Lm7/a;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Runnable;J)Lm7/a;
    .locals 4

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 3
    iget p2, p0, Lk7/h;->c:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lk7/h;->c:I

    int-to-long v0, p2

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 5
    iget-object p2, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk7/h$h;

    iget-wide p2, p2, Lk7/h$h;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 6
    :cond_2
    :goto_0
    iget-object p2, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    new-instance p3, Lk7/h$h;

    invoke-direct {p3, p0, p1, v0, v1}, Lk7/h$h;-><init>(Lk7/h;Ljava/lang/Runnable;J)V

    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lk7/h;->a:Lk7/u;

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lk7/h;->j()V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lk7/h;->d()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lk7/h;->a:Lk7/u;

    .line 11
    sget-object p2, Lk7/h;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroidx/emoji2/text/k;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/emoji2/text/k;-><init>(Ljava/lang/Object;I)V

    check-cast p2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 12
    :cond_4
    monitor-exit p0

    return-object p3

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method public final j()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lk7/h;->a:Lk7/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    new-instance v0, Lk7/u;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lk7/u;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lk7/h;->a:Lk7/u;

    .line 4
    iget-object v1, p0, Lk7/h;->d:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance v2, Lk7/h$c;

    iget-object v3, p0, Lk7/h;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v1}, Lk7/h$c;-><init>(Lk7/h;Ljava/lang/String;Lk7/u;Ljava/util/PriorityQueue;)V

    iput-object v2, p0, Lk7/h;->e:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 7
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to create selector?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_0
    iget-object v1, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    .line 10
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-static {p0, v0, v1}, Lk7/h;->l(Lk7/h;Lk7/u;Ljava/util/PriorityQueue;)V
    :try_end_3
    .catch Lk7/h$d; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "NIO"

    const-string v3, "Selector closed"

    .line 12
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :try_start_4
    iget-object v0, v0, Lk7/u;->a:Ljava/nio/channels/Selector;

    .line 14
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public k(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lk7/h;->e:Ljava/lang/Thread;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, v2, v3}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    .line 3
    iget-object p1, p0, Lk7/h;->d:Ljava/util/PriorityQueue;

    invoke-static {p0, p1}, Lk7/h;->e(Lk7/h;Ljava/util/PriorityQueue;)J

    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 6
    new-instance v1, Ll6/a;

    const/4 v4, 0x2

    invoke-direct {v1, p1, v0, v4}, Ll6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, v1, v2, v3}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
