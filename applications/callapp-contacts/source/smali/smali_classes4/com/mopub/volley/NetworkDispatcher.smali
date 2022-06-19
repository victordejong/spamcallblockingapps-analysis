.class public Lcom/mopub/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mopub/volley/Network;

.field private final c:Lcom/mopub/volley/Cache;

.field private final d:Lcom/mopub/volley/ResponseDelivery;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Network;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Lcom/mopub/volley/Network;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->e:Z

    .line 62
    iput-object p1, p0, Lcom/mopub/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    .line 63
    iput-object p2, p0, Lcom/mopub/volley/NetworkDispatcher;->b:Lcom/mopub/volley/Network;

    .line 64
    iput-object p3, p0, Lcom/mopub/volley/NetworkDispatcher;->c:Lcom/mopub/volley/Cache;

    .line 65
    iput-object p4, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->e:Z

    .line 74
    invoke-virtual {p0}, Lcom/mopub/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 9

    const/16 v0, 0xa

    .line 87
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    const/4 v0, 0x0

    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/mopub/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/Request;

    .line 1116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 1117
    invoke-virtual {v1, v4}, Lcom/mopub/volley/Request;->sendEvent(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x4

    :try_start_1
    const-string v5, "network-queue-take"

    .line 1119
    invoke-virtual {v1, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "network-discard-cancelled"

    .line 1124
    invoke-virtual {v1, v5}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_1
    .catch Lcom/mopub/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    :goto_1
    :try_start_2
    invoke-virtual {v1, v4}, Lcom/mopub/volley/Request;->sendEvent(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2080
    :cond_0
    :try_start_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 2081
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->getTrafficStatsTag()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1132
    :cond_1
    iget-object v5, p0, Lcom/mopub/volley/NetworkDispatcher;->b:Lcom/mopub/volley/Network;

    invoke-interface {v5, v1}, Lcom/mopub/volley/Network;->performRequest(Lcom/mopub/volley/Request;)Lcom/mopub/volley/NetworkResponse;

    move-result-object v5

    const-string v6, "network-http-complete"

    .line 1133
    invoke-virtual {v1, v6}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1137
    iget-boolean v6, v5, Lcom/mopub/volley/NetworkResponse;->notModified:Z

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/mopub/volley/Request;->hasHadResponseDelivered()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "not-modified"

    .line 1138
    invoke-virtual {v1, v5}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V

    goto :goto_1

    .line 1144
    :cond_2
    invoke-virtual {v1, v5}, Lcom/mopub/volley/Request;->parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v5

    const-string v6, "network-parse-complete"

    .line 1145
    invoke-virtual {v1, v6}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    if-eqz v6, :cond_3

    .line 1150
    iget-object v6, p0, Lcom/mopub/volley/NetworkDispatcher;->c:Lcom/mopub/volley/Cache;

    invoke-virtual {v1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    invoke-interface {v6, v7, v8}, Lcom/mopub/volley/Cache;->put(Ljava/lang/String;Lcom/mopub/volley/Cache$Entry;)V

    const-string v6, "network-cache-written"

    .line 1151
    invoke-virtual {v1, v6}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 1155
    :cond_3
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->markDelivered()V

    .line 1156
    iget-object v6, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v6, v1, v5}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    .line 1157
    invoke-virtual {v1, v5}, Lcom/mopub/volley/Request;->notifyListenerResponseReceived(Lcom/mopub/volley/Response;)V
    :try_end_3
    .catch Lcom/mopub/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_4
    const-string v6, "Unhandled exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1163
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v6, v7}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    new-instance v6, Lcom/mopub/volley/VolleyError;

    invoke-direct {v6, v5}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 4049
    iput-wide v7, v6, Lcom/mopub/volley/VolleyError;->a:J

    .line 1166
    iget-object v2, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v2, v1, v6}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 1167
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V

    goto/16 :goto_1

    :catch_1
    move-exception v5

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 3049
    iput-wide v6, v5, Lcom/mopub/volley/VolleyError;->a:J

    .line 3174
    invoke-virtual {v1, v5}, Lcom/mopub/volley/Request;->parseNetworkError(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/VolleyError;

    move-result-object v2

    .line 3175
    iget-object v3, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v3, v1, v2}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 1161
    invoke-virtual {v1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1169
    :goto_2
    :try_start_5
    invoke-virtual {v1, v4}, Lcom/mopub/volley/Request;->sendEvent(I)V

    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    nop

    .line 93
    iget-boolean v1, p0, Lcom/mopub/volley/NetworkDispatcher;->e:Z

    if-eqz v1, :cond_4

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 97
    invoke-static {v1, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
