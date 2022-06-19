.class final Lorg/xutils/http/HttpTask$c;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Throwable;

.field final synthetic c:Lorg/xutils/http/HttpTask;


# direct methods
.method private constructor <init>(Lorg/xutils/http/HttpTask;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/xutils/http/HttpTask$c;-><init>(Lorg/xutils/http/HttpTask;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v2}, Lorg/xutils/http/HttpTask;->e(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :catchall_0
    :goto_0
    :try_start_1
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    .line 4
    invoke-virtual {v2}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 5
    :try_start_2
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 6
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    :try_start_4
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 8
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 9
    iget-object v1, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    :try_start_7
    iget-object v0, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->h(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->g(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/http/request/UriRequest;->setRequestInterceptListener(Lorg/xutils/http/app/RequestInterceptListener;)V

    .line 11
    iget-object v0, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->h(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask$c;->a:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 12
    :try_start_8
    iput-object v0, p0, Lorg/xutils/http/HttpTask$c;->b:Ljava/lang/Throwable;

    .line 13
    :goto_2
    iget-object v0, p0, Lorg/xutils/http/HttpTask$c;->b:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v0, :cond_3

    .line 14
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->e(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 15
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    monitor-enter v0

    .line 16
    :try_start_9
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 17
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit v0

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    .line 19
    :cond_3
    :try_start_a
    throw v0

    .line 20
    :cond_4
    :goto_3
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelled before request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v0, "(interrupted)"

    goto :goto_4

    :cond_5
    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    .line 21
    :try_start_b
    iput-object v0, p0, Lorg/xutils/http/HttpTask$c;->b:Ljava/lang/Throwable;

    .line 22
    instance-of v1, v0, Lorg/xutils/ex/HttpException;

    if-eqz v1, :cond_8

    .line 23
    move-object v1, v0

    check-cast v1, Lorg/xutils/ex/HttpException;

    .line 24
    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_6

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_8

    .line 25
    :cond_6
    iget-object v3, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v3}, Lorg/xutils/http/HttpTask;->j(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v3, :cond_8

    .line 26
    :try_start_c
    iget-object v4, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->h(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xutils/http/app/RedirectHandler;->getRedirectParams(Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/RequestParams;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 27
    invoke-virtual {v3}, Lorg/xutils/http/BaseParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v4

    if-nez v4, :cond_7

    .line 28
    iget-object v4, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->j(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/http/BaseParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/http/BaseParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 29
    :cond_7
    iget-object v4, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4, v3}, Lorg/xutils/http/HttpTask;->k(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;

    .line 30
    iget-object v3, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v3}, Lorg/xutils/http/HttpTask;->l(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xutils/http/HttpTask;->i(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;

    .line 31
    new-instance v3, Lorg/xutils/ex/HttpRedirectException;

    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lorg/xutils/ex/HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xutils/http/HttpTask$c;->b:Ljava/lang/Throwable;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_5

    .line 32
    :catchall_5
    :try_start_d
    iput-object v0, p0, Lorg/xutils/http/HttpTask$c;->b:Ljava/lang/Throwable;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 33
    :cond_8
    :goto_5
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->e(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 34
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    monitor-enter v0

    .line 35
    :try_start_e
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 36
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 37
    monitor-exit v0

    goto :goto_6

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v1

    :cond_9
    :goto_6
    return-void

    :catchall_7
    move-exception v0

    .line 38
    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/HttpTask$c;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v2}, Lorg/xutils/http/HttpTask;->e(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v1, v2, :cond_a

    .line 39
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 40
    :try_start_f
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 41
    invoke-static {}, Lorg/xutils/http/HttpTask;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit v1

    goto :goto_7

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    .line 43
    :cond_a
    :goto_7
    throw v0
.end method
