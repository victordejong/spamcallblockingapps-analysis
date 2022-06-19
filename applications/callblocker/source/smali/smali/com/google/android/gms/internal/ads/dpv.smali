.class public final Lcom/google/android/gms/internal/ads/dpv;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dqu;

.field private final c:Lcom/google/android/gms/internal/ads/a;

.field private final d:Lcom/google/android/gms/internal/ads/b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/dqu;Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;",
            "Lcom/google/android/gms/internal/ads/dqu;",
            "Lcom/google/android/gms/internal/ads/a;",
            "Lcom/google/android/gms/internal/ads/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpv;->e:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpv;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dpv;->b:Lcom/google/android/gms/internal/ads/dqu;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dpv;->c:Lcom/google/android/gms/internal/ads/a;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dpv;->d:Lcom/google/android/gms/internal/ads/b;

    .line 7
    return-void
.end method

.method private final b()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpv;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dts;

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 23
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    .line 24
    :try_start_0
    const-string/jumbo v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->h()Z

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->d()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpv;->b:Lcom/google/android/gms/internal/ads/dqu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dqu;->a(Lcom/google/android/gms/internal/ads/dts;)Lcom/google/android/gms/internal/ads/drt;

    move-result-object v1

    .line 29
    const-string/jumbo v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 30
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/drt;->e:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    const-string/jumbo v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->c(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->n()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    .line 59
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/ecj;

    move-result-object v1

    .line 36
    const-string/jumbo v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/ecj;->b:Lcom/google/android/gms/internal/ads/bzv;

    if-eqz v4, :cond_1

    .line 38
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpv;->c:Lcom/google/android/gms/internal/ads/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/ecj;->b:Lcom/google/android/gms/internal/ads/bzv;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/ads/a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bzv;)V

    .line 39
    const-string/jumbo v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->l()V

    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpv;->d:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/ecj;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzae;->a(J)V

    .line 48
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dpv;->d:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    .line 53
    :try_start_3
    const-string/jumbo v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v4, Lcom/google/android/gms/internal/ads/zzae;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzae;->a(J)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpv;->d:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    .line 61
    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpv;->e:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dpv;->interrupt()V

    .line 10
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 11
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 12
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpv;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpv;->e:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 17
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ez;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
