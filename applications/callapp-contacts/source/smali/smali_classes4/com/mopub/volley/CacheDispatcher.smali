.class public Lcom/mopub/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/CacheDispatcher$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/mopub/volley/Cache;

.field private final e:Lcom/mopub/volley/ResponseDelivery;

.field private volatile f:Z

.field private final g:Lcom/mopub/volley/CacheDispatcher$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mopub/volley/CacheDispatcher;->a:Z

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

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->f:Z

    .line 71
    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    .line 72
    iput-object p2, p0, Lcom/mopub/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    .line 73
    iput-object p3, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/Cache;

    .line 74
    iput-object p4, p0, Lcom/mopub/volley/CacheDispatcher;->e:Lcom/mopub/volley/ResponseDelivery;

    .line 75
    new-instance p1, Lcom/mopub/volley/CacheDispatcher$a;

    invoke-direct {p1, p0}, Lcom/mopub/volley/CacheDispatcher$a;-><init>(Lcom/mopub/volley/CacheDispatcher;)V

    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$a;

    return-void
.end method

.method static synthetic a(Lcom/mopub/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/volley/CacheDispatcher;)Lcom/mopub/volley/ResponseDelivery;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/volley/CacheDispatcher;->e:Lcom/mopub/volley/ResponseDelivery;

    return-object p0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->f:Z

    .line 84
    invoke-virtual {p0}, Lcom/mopub/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 8

    .line 89
    sget-boolean v0, Lcom/mopub/volley/CacheDispatcher;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 90
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/Cache;

    invoke-interface {v0}, Lcom/mopub/volley/Cache;->initialize()V

    .line 1118
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    const-string v2, "cache-queue-take"

    .line 1124
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1125
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->sendEvent(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    .line 1129
    :try_start_1
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "cache-discard-canceled"

    .line 1130
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->sendEvent(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1135
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/Cache;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mopub/volley/Cache;->get(Ljava/lang/String;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v2, "cache-miss"

    .line 1137
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1139
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$a;

    .line 1202
    invoke-virtual {v2, v0}, Lcom/mopub/volley/CacheDispatcher$a;->a(Lcom/mopub/volley/Request;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 1146
    :cond_3
    invoke-virtual {v4}, Lcom/mopub/volley/Cache$Entry;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "cache-hit-expired"

    .line 1147
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    .line 1149
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$a;

    .line 2202
    invoke-virtual {v2, v0}, Lcom/mopub/volley/CacheDispatcher$a;->a(Lcom/mopub/volley/Request;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1150
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v5, "cache-hit"

    .line 1156
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1157
    new-instance v5, Lcom/mopub/volley/NetworkResponse;

    iget-object v6, v4, Lcom/mopub/volley/Cache$Entry;->data:[B

    iget-object v7, v4, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/mopub/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 1158
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v5

    const-string v6, "cache-hit-parsed"

    .line 1160
    invoke-virtual {v0, v6}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v4}, Lcom/mopub/volley/Cache$Entry;->refreshNeeded()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1164
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->e:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v2, v0, v5}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    goto :goto_1

    :cond_5
    const-string v6, "cache-hit-refresh-needed"

    .line 1169
    invoke-virtual {v0, v6}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    .line 1172
    iput-boolean v2, v5, Lcom/mopub/volley/Response;->intermediate:Z

    .line 1174
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->g:Lcom/mopub/volley/CacheDispatcher$a;

    .line 3202
    invoke-virtual {v2, v0}, Lcom/mopub/volley/CacheDispatcher$a;->a(Lcom/mopub/volley/Request;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1177
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->e:Lcom/mopub/volley/ResponseDelivery;

    new-instance v4, Lcom/mopub/volley/CacheDispatcher$1;

    invoke-direct {v4, p0, v0}, Lcom/mopub/volley/CacheDispatcher$1;-><init>(Lcom/mopub/volley/CacheDispatcher;Lcom/mopub/volley/Request;)V

    invoke-interface {v2, v0, v5, v4}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1194
    :cond_6
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->e:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v2, v0, v5}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    .line 1198
    :try_start_4
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->sendEvent(I)V

    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    nop

    .line 100
    iget-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->f:Z

    if-eqz v0, :cond_7

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_7
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 104
    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
