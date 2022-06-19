.class public final Lcom/google/android/gms/internal/ads/aza;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/a;

.field private final e:Lcom/google/android/gms/internal/ads/b;

.field private volatile f:Z

.field private final g:Lcom/google/android/gms/internal/ads/daq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/google/android/gms/internal/ads/ez;->a:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/aza;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;",
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

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aza;->f:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aza;->b:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aza;->c:Ljava/util/concurrent/BlockingQueue;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aza;->d:Lcom/google/android/gms/internal/ads/a;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aza;->e:Lcom/google/android/gms/internal/ads/b;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/daq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/daq;-><init>(Lcom/google/android/gms/internal/ads/aza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aza;->g:Lcom/google/android/gms/internal/ads/daq;

    .line 8
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aza;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aza;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/aza;)Lcom/google/android/gms/internal/ads/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aza;->e:Lcom/google/android/gms/internal/ads/b;

    return-object v0
.end method

.method private final b()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aza;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dts;

    .line 25
    const-string/jumbo v2, "cache-queue-take"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    .line 27
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->h()Z

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aza;->d:Lcom/google/android/gms/internal/ads/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bzv;

    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    const-string/jumbo v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->g:Lcom/google/android/gms/internal/ads/daq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/daq;->a(Lcom/google/android/gms/internal/ads/daq;Lcom/google/android/gms/internal/ads/dts;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    .line 57
    :goto_0
    return-void

    .line 35
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bzv;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    const-string/jumbo v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/bzv;)Lcom/google/android/gms/internal/ads/dts;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->g:Lcom/google/android/gms/internal/ads/daq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/daq;->a(Lcom/google/android/gms/internal/ads/daq;Lcom/google/android/gms/internal/ads/dts;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :cond_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    goto :goto_0

    .line 42
    :cond_3
    :try_start_2
    const-string/jumbo v3, "cache-hit"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 43
    new-instance v3, Lcom/google/android/gms/internal/ads/drt;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bzv;->g:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/drt;-><init>([BLjava/util/Map;)V

    .line 44
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/ecj;

    move-result-object v3

    .line 45
    const-string/jumbo v4, "cache-hit-parsed"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 47
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/bzv;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 48
    :goto_1
    if-nez v1, :cond_5

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->e:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :goto_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    goto :goto_0

    .line 47
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 50
    :cond_5
    :try_start_3
    const-string/jumbo v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/bzv;)Lcom/google/android/gms/internal/ads/dts;

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/google/android/gms/internal/ads/ecj;->d:Z

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->g:Lcom/google/android/gms/internal/ads/daq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/daq;->a(Lcom/google/android/gms/internal/ads/daq;Lcom/google/android/gms/internal/ads/dts;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->e:Lcom/google/android/gms/internal/ads/b;

    new-instance v2, Lcom/google/android/gms/internal/ads/diz;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/diz;-><init>(Lcom/google/android/gms/internal/ads/aza;Lcom/google/android/gms/internal/ads/dts;)V

    invoke-interface {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dts;->a(I)V

    .line 59
    throw v1

    .line 55
    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aza;->e:Lcom/google/android/gms/internal/ads/b;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aza;->f:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aza;->interrupt()V

    .line 11
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    sget-boolean v0, Lcom/google/android/gms/internal/ads/aza;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start new dispatcher"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aza;->d:Lcom/google/android/gms/internal/ads/a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/a;->a()V

    .line 15
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aza;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aza;->f:Z

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 20
    return-void

    .line 21
    :cond_1
    const-string/jumbo v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ez;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
