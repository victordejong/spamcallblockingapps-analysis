.class public final Lcom/squareup/okhttp/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/squareup/okhttp/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http.keepAliveDuration"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x493e0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/squareup/okhttp/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/squareup/okhttp/g;-><init>(IJ)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/squareup/okhttp/g;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, v3, v4}, Lcom/squareup/okhttp/g;-><init>(IJ)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/squareup/okhttp/g;-><init>(IJ)V

    :goto_1
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "OkHttp ConnectionPool"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/u/i;->p(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/squareup/okhttp/g;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/squareup/okhttp/g$a;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/g$a;-><init>(Lcom/squareup/okhttp/g;)V

    iput-object v0, p0, Lcom/squareup/okhttp/g;->e:Ljava/lang/Runnable;

    iput p1, p0, Lcom/squareup/okhttp/g;->a:I

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    mul-long p2, p2, v0

    iput-wide p2, p0, Lcom/squareup/okhttp/g;->b:J

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/g;->f()V

    return-void
.end method

.method private b(Lcom/squareup/okhttp/f;)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/g;->d:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/squareup/okhttp/g;->e:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public declared-synchronized c(Lcom/squareup/okhttp/a;)Lcom/squareup/okhttp/f;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/f;

    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->l()Lcom/squareup/okhttp/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/t;->a()Lcom/squareup/okhttp/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->j()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/squareup/okhttp/g;->b:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->q()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v3

    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/u/g;->j(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to tagSocket(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/u/g;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->q()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method d()Z
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/squareup/okhttp/g;->b:J

    iget-object v6, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/okhttp/f;

    invoke-virtual {v8}, Lcom/squareup/okhttp/f;->j()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/squareup/okhttp/g;->b:J

    add-long/2addr v9, v11

    sub-long/2addr v9, v2

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_3

    invoke-virtual {v8}, Lcom/squareup/okhttp/f;->o()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/squareup/okhttp/f;->r()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/squareup/okhttp/g;->a:I

    if-le v7, v3, :cond_6

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/f;

    invoke-virtual {v3}, Lcom/squareup/okhttp/f;->r()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const-wide/32 v6, 0xf4240

    :try_start_1
    div-long v8, v4, v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Ljava/lang/Long;->signum(J)I

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    long-to-int v2, v4

    :try_start_2
    invoke-virtual {p0, v8, v9, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0

    return v3

    :catch_0
    :cond_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/f;

    invoke-virtual {v4}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return v3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method e(Lcom/squareup/okhttp/f;)V
    .locals 4

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->o()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/okhttp/u/i;->d(Ljava/net/Socket;)V

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->m()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/u/g;->k(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/g;->b(Lcom/squareup/okhttp/f;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->n()V

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->v()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/squareup/okhttp/u/g;->f()Lcom/squareup/okhttp/u/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to untagSocket(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/u/g;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method g(Lcom/squareup/okhttp/f;)V
    .locals 1

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp/f;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/g;->b(Lcom/squareup/okhttp/f;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
