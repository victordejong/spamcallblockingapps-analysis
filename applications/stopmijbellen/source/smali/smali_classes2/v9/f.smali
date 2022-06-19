.class public final Lv9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/f$c;,
        Lv9/f$e;,
        Lv9/f$b;,
        Lv9/f$d;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Z

.field public final b:Lv9/f$c;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lv9/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Lv9/r;

.field public k:Z

.field public l:J

.field public m:J

.field public n:Lj4/s0;

.field public final o:Lj4/s0;

.field public p:Z

.field public final q:Ljava/net/Socket;

.field public final r:Lv9/p;

.field public final s:Lv9/f$e;

.field public final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lv9/f;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    .line 3
    sget-object v8, Lq9/c;->a:[B

    .line 4
    new-instance v8, Lq9/d;

    const-string v9, "OkHttp Http2Connection"

    invoke-direct {v8, v9, v1}, Lq9/d;-><init>(Ljava/lang/String;Z)V

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lv9/f;->u:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lv9/f$b;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lv9/f;->c:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lv9/f;->l:J

    .line 4
    new-instance v2, Lj4/s0;

    invoke-direct {v2}, Lj4/s0;-><init>()V

    iput-object v2, v0, Lv9/f;->n:Lj4/s0;

    .line 5
    new-instance v2, Lj4/s0;

    invoke-direct {v2}, Lj4/s0;-><init>()V

    iput-object v2, v0, Lv9/f;->o:Lj4/s0;

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v0, Lv9/f;->p:Z

    .line 7
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lv9/f;->t:Ljava/util/Set;

    .line 8
    sget-object v4, Lv9/r;->a:Lv9/r;

    iput-object v4, v0, Lv9/f;->j:Lv9/r;

    const/4 v4, 0x1

    .line 9
    iput-boolean v4, v0, Lv9/f;->a:Z

    .line 10
    iget-object v5, v1, Lv9/f$b;->e:Lv9/f$c;

    iput-object v5, v0, Lv9/f;->b:Lv9/f$c;

    .line 11
    iput v4, v0, Lv9/f;->f:I

    const/4 v5, 0x3

    .line 12
    iput v5, v0, Lv9/f;->f:I

    const/4 v5, 0x7

    .line 13
    iget-object v6, v0, Lv9/f;->n:Lj4/s0;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v5, v7}, Lj4/s0;->b(II)Lj4/s0;

    .line 14
    iget-object v6, v1, Lv9/f$b;->b:Ljava/lang/String;

    iput-object v6, v0, Lv9/f;->d:Ljava/lang/String;

    .line 15
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const-string v9, "OkHttp %s Writer"

    .line 16
    invoke-static {v9, v8}, Lq9/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 17
    new-instance v9, Lq9/d;

    invoke-direct {v9, v8, v3}, Lq9/d;-><init>(Ljava/lang/String;Z)V

    .line 18
    invoke-direct {v7, v4, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lv9/f;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    iget v8, v1, Lv9/f$b;->f:I

    if-eqz v8, :cond_0

    .line 20
    new-instance v8, Lv9/f$d;

    invoke-direct {v8, v0, v3, v3, v3}, Lv9/f$d;-><init>(Lv9/f;ZII)V

    iget v9, v1, Lv9/f$b;->f:I

    int-to-long v11, v9

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 21
    :cond_0
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-wide/16 v17, 0x3c

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v20, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const-string v3, "OkHttp %s Push Observer"

    .line 22
    invoke-static {v3, v8}, Lq9/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 23
    new-instance v6, Lq9/d;

    invoke-direct {v6, v3, v4}, Lq9/d;-><init>(Ljava/lang/String;Z)V

    move-object v14, v7

    move-object/from16 v21, v6

    .line 24
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lv9/f;->i:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    .line 25
    invoke-virtual {v2, v5, v3}, Lj4/s0;->b(II)Lj4/s0;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    .line 26
    invoke-virtual {v2, v3, v5}, Lj4/s0;->b(II)Lj4/s0;

    .line 27
    invoke-virtual {v2}, Lj4/s0;->a()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lv9/f;->m:J

    .line 28
    iget-object v2, v1, Lv9/f$b;->a:Ljava/net/Socket;

    iput-object v2, v0, Lv9/f;->q:Ljava/net/Socket;

    .line 29
    new-instance v2, Lv9/p;

    iget-object v3, v1, Lv9/f$b;->d:Laa/g;

    invoke-direct {v2, v3, v4}, Lv9/p;-><init>(Laa/g;Z)V

    iput-object v2, v0, Lv9/f;->r:Lv9/p;

    .line 30
    new-instance v2, Lv9/f$e;

    new-instance v3, Lv9/n;

    iget-object v1, v1, Lv9/f$b;->c:Laa/h;

    invoke-direct {v3, v1, v4}, Lv9/n;-><init>(Laa/h;Z)V

    invoke-direct {v2, v0, v3}, Lv9/f$e;-><init>(Lv9/f;Lv9/n;)V

    iput-object v2, v0, Lv9/f;->s:Lv9/f$e;

    return-void
.end method

.method public static d(Lv9/f;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lv9/f;->k(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/f;->r:Lv9/p;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lv9/f;->g:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lv9/f;->g:Z

    .line 6
    iget v1, p0, Lv9/f;->e:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Lv9/f;->r:Lv9/p;

    sget-object v3, Lq9/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lv9/p;->o(II[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public declared-synchronized B(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lv9/f;->l:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lv9/f;->l:J

    .line 2
    iget-object p1, p0, Lv9/f;->n:Lj4/s0;

    invoke-virtual {p1}, Lj4/s0;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 3
    iget-wide v0, p0, Lv9/f;->l:J

    invoke-virtual {p0, p1, v0, v1}, Lv9/f;->K(IJ)V

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lv9/f;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public D(IZLaa/f;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lv9/f;->r:Lv9/p;

    invoke-virtual {p4, p2, p1, p3, v0}, Lv9/p;->k(ZILaa/f;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lv9/f;->m:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 4
    iget-object v3, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Lv9/f;->r:Lv9/p;

    .line 9
    iget v3, v3, Lv9/p;->d:I

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    iget-wide v4, p0, Lv9/f;->m:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lv9/f;->m:J

    .line 12
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 13
    iget-object v4, p0, Lv9/f;->r:Lv9/p;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lv9/p;->k(ZILaa/f;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 16
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public J(II)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lv9/e;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lv9/f;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lv9/e;-><init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public K(IJ)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lv9/f$a;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lv9/f;->d:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lv9/f$a;-><init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 3
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 1
    invoke-virtual {p0, v0, v1}, Lv9/f;->k(II)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/f;->r:Lv9/p;

    invoke-virtual {v0}, Lv9/p;->flush()V

    return-void
.end method

.method public k(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lv9/f;->A(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lv9/o;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv9/o;

    .line 5
    iget-object v1, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 8
    :try_start_2
    invoke-virtual {v3, p2}, Lv9/o;->c(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :try_start_3
    iget-object p2, p0, Lv9/f;->r:Lv9/p;

    invoke-virtual {p2}, Lv9/p;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    .line 10
    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Lv9/f;->q:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 11
    :goto_4
    iget-object p2, p0, Lv9/f;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 12
    iget-object p2, p0, Lv9/f;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized l(I)Lv9/o;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv9/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f;->o:Lj4/s0;

    const v1, 0x7fffffff

    .line 2
    iget v2, v0, Lj4/s0;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget-object v0, v0, Lj4/s0;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x4

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p(Lq9/b;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lv9/f;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lv9/f;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public r(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized s(I)Lv9/o;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv9/o;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
