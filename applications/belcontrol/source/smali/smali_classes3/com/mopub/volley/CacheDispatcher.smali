.class public Lcom/mopub/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/CacheDispatcher$b;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/mopub/volley/Cache;

.field public final d:Lcom/mopub/volley/ResponseDelivery;

.field public volatile f:Z

.field public final g:Lcom/mopub/volley/CacheDispatcher$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mopub/volley/CacheDispatcher;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->f:Z

    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/mopub/volley/CacheDispatcher;->c:Lcom/mopub/volley/Cache;

    iput-object p4, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    new-instance p1, Lcom/mopub/volley/CacheDispatcher$b;

    invoke-direct {p1, p0}, Lcom/mopub/volley/CacheDispatcher$b;-><init>(Lcom/mopub/volley/CacheDispatcher;)V

    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$b;

    return-void
.end method

.method public static synthetic a(Lcom/mopub/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic b(Lcom/mopub/volley/CacheDispatcher;)Lcom/mopub/volley/ResponseDelivery;
    .locals 0

    iget-object p0, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    invoke-virtual {p0, v0}, Lcom/mopub/volley/CacheDispatcher;->d(Lcom/mopub/volley/Request;)V

    return-void
.end method

.method public d(Lcom/mopub/volley/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->m(I)V

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "cache-discard-canceled"

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->m(I)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->c:Lcom/mopub/volley/Cache;

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mopub/volley/Cache;->get(Ljava/lang/String;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "cache-miss"

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$b;

    invoke-static {v0, p1}, Lcom/mopub/volley/CacheDispatcher$b;->a(Lcom/mopub/volley/CacheDispatcher$b;Lcom/mopub/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->m(I)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/mopub/volley/Cache$Entry;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "cache-hit-expired"

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$b;

    invoke-static {v0, p1}, Lcom/mopub/volley/CacheDispatcher$b;->a(Lcom/mopub/volley/CacheDispatcher$b;Lcom/mopub/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->m(I)V

    return-void

    :cond_4
    :try_start_3
    const-string v3, "cache-hit"

    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    new-instance v3, Lcom/mopub/volley/NetworkResponse;

    iget-object v4, v2, Lcom/mopub/volley/Cache$Entry;->data:[B

    iget-object v5, v2, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/mopub/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->l(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v3

    const-string v4, "cache-hit-parsed"

    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mopub/volley/Cache$Entry;->refreshNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    :goto_0
    invoke-interface {v0, p1, v3}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    goto :goto_1

    :cond_5
    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    iput-boolean v0, v3, Lcom/mopub/volley/Response;->intermediate:Z

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$b;

    invoke-static {v0, p1}, Lcom/mopub/volley/CacheDispatcher$b;->a(Lcom/mopub/volley/CacheDispatcher$b;Lcom/mopub/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    new-instance v2, Lcom/mopub/volley/CacheDispatcher$a;

    invoke-direct {v2, p0, p1}, Lcom/mopub/volley/CacheDispatcher$a;-><init>(Lcom/mopub/volley/CacheDispatcher;Lcom/mopub/volley/Request;)V

    invoke-interface {v0, p1, v3, v2}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->m(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->m(I)V

    throw v0
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->f:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lcom/mopub/volley/CacheDispatcher;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->c:Lcom/mopub/volley/Cache;

    invoke-interface {v0}, Lcom/mopub/volley/Cache;->initialize()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/volley/CacheDispatcher;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
