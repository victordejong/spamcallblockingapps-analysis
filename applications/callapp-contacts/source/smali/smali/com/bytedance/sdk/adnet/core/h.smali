.class Lcom/bytedance/sdk/adnet/core/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/adnet/face/b;

.field private final c:Lcom/bytedance/sdk/adnet/face/a;

.field private final d:Lcom/bytedance/sdk/adnet/face/c;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/b;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;",
            "Lcom/bytedance/sdk/adnet/face/b;",
            "Lcom/bytedance/sdk/adnet/face/a;",
            "Lcom/bytedance/sdk/adnet/face/c;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/h;->e:Z

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Ljava/util/concurrent/BlockingQueue;

    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Lcom/bytedance/sdk/adnet/face/b;

    .line 80
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/h;->c:Lcom/bytedance/sdk/adnet/face/a;

    .line 81
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")V"
        }
    .end annotation

    .line 198
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/err/VAdError;

    move-result-object p2

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    return-void
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request;

    .line 127
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/h;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/h;->e:Z

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/h;->interrupt()V

    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 133
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    const/16 v2, 0x260

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    :try_start_0
    const-string v6, "network-queue-take"

    .line 135
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "network-discard-cancelled"

    .line 140
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_0
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 148
    iget-object v6, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Lcom/bytedance/sdk/adnet/face/b;

    invoke-interface {v6, p1}, Lcom/bytedance/sdk/adnet/face/b;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/i;

    move-result-object v6

    .line 149
    iget-wide v7, v6, Lcom/bytedance/sdk/adnet/core/i;->f:J

    invoke-virtual {p1, v7, v8}, Lcom/bytedance/sdk/adnet/core/Request;->setNetDuration(J)V

    const-string v7, "network-http-complete"

    .line 150
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 154
    iget-boolean v7, v6, Lcom/bytedance/sdk/adnet/core/i;->e:Z

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->hasHadResponseDelivered()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "not-modified"

    .line 155
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_1
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    return-void

    .line 161
    :cond_1
    :try_start_2
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v7

    .line 162
    iget-wide v8, v6, Lcom/bytedance/sdk/adnet/core/i;->f:J

    invoke-virtual {p1, v8, v9}, Lcom/bytedance/sdk/adnet/core/Request;->setNetDuration(J)V

    const-string v6, "network-parse-complete"

    .line 163
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldCache()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v7, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v6, :cond_2

    .line 168
    iget-object v6, p0, Lcom/bytedance/sdk/adnet/core/h;->c:Lcom/bytedance/sdk/adnet/face/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-interface {v6, v8, v9}, Lcom/bytedance/sdk/adnet/face/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V

    const-string v6, "network-cache-written"

    .line 169
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->markDelivered()V

    .line 174
    iget-object v6, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v6, p1, v7}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    .line 175
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->b(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_2
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_3
    const-string v7, "NetworkDispatcher Unhandled throwable %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 187
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v6, v7, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v3, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v3, v6, v2}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;I)V

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v3}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 191
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    return-void

    :catch_0
    move-exception v6

    :try_start_4
    const-string v7, "Unhandled exception %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v6, v7, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v3, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v3, v6, v2}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;I)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v3}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    return-void

    :catch_1
    move-exception v2

    .line 177
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 178
    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/adnet/core/h;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 194
    throw v0
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 103
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 106
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/h;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/h;->e:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 113
    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
