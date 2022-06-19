.class final Lcom/google/android/gms/internal/ads/daq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dvo;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/aza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aza;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/daq;->b:Lcom/google/android/gms/internal/ads/aza;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/daq;Lcom/google/android/gms/internal/ads/dts;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/daq;->b(Lcom/google/android/gms/internal/ads/dts;)Z

    move-result v0

    return v0
.end method

.method private final declared-synchronized b(Lcom/google/android/gms/internal/ads/dts;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->f()Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :cond_0
    const-string/jumbo v3, "waiting-for-response"

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-boolean v0, Lcom/google/android/gms/internal/ads/ez;->a:Z

    if-eqz v0, :cond_1

    .line 47
    const-string/jumbo v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v0, v1

    .line 53
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 49
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/dvo;)V

    .line 51
    sget-boolean v1, Lcom/google/android/gms/internal/ads/ez;->a:Z

    if-eqz v1, :cond_2

    .line 52
    const-string/jumbo v1, "new request, sending to network %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dts;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->f()Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    sget-boolean v1, Lcom/google/android/gms/internal/ads/ez;->a:Z

    if-eqz v1, :cond_0

    .line 25
    const-string/jumbo v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 27
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dts;

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/dvo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daq;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aza;->a(Lcom/google/android/gms/internal/ads/aza;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    const-string/jumbo v1, "Couldn\'t add request to queue. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ez;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daq;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aza;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ecj;->b:Lcom/google/android/gms/internal/ads/bzv;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ecj;->b:Lcom/google/android/gms/internal/ads/bzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bzv;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/daq;->a(Lcom/google/android/gms/internal/ads/dts;)V

    .line 20
    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->f()Ljava/lang/String;

    move-result-object v1

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daq;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    sget-boolean v2, Lcom/google/android/gms/internal/ads/ez;->a:Z

    if-eqz v2, :cond_3

    .line 14
    const-string/jumbo v2, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 16
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dts;

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/daq;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aza;->b(Lcom/google/android/gms/internal/ads/aza;)Lcom/google/android/gms/internal/ads/b;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lcom/google/android/gms/internal/ads/b;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;)V

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
