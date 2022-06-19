.class final Lcom/google/firebase/messaging/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/stats/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/av;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/av;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 10

    sget-object v0, Lcom/google/firebase/messaging/av;->b:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/av;->c:Lcom/google/android/gms/stats/a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1001
    new-instance v1, Lcom/google/android/gms/stats/a;

    const-string/jumbo v3, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/stats/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/messaging/av;->c:Lcom/google/android/gms/stats/a;

    .line 1113
    iget-object v3, v1, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1114
    iput-boolean v2, v1, Lcom/google/android/gms/stats/a;->e:Z

    :cond_0
    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v3, 0x0

    .line 2001
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    invoke-static {p1, v2}, Lcom/google/firebase/messaging/av;->a(Landroid/content/Intent;Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_1

    .line 6
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez v1, :cond_8

    sget-object p1, Lcom/google/firebase/messaging/av;->c:Lcom/google/android/gms/stats/a;

    sget-wide v4, Lcom/google/firebase/messaging/av;->a:J

    .line 2047
    iget-object v1, p1, Lcom/google/android/gms/stats/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2051
    invoke-virtual {p1}, Lcom/google/android/gms/stats/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 2052
    iget-object v6, p1, Lcom/google/android/gms/stats/a;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2053
    :try_start_1
    iget-object v7, p1, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Lcom/google/android/gms/stats/a;->g:I

    if-lez v7, :cond_3

    :cond_2
    iget-object v7, p1, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2054
    iget-object v7, p1, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 2055
    iput v3, p1, Lcom/google/android/gms/stats/a;->g:I

    .line 2056
    :cond_3
    iget-boolean v7, p1, Lcom/google/android/gms/stats/a;->e:Z

    if-eqz v7, :cond_5

    .line 2057
    iget-object v7, p1, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Integer;

    if-nez v7, :cond_4

    .line 2059
    iget-object v7, p1, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    new-array v8, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0

    .line 2061
    :cond_4
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    :goto_0
    if-nez v3, :cond_6

    .line 2063
    :cond_5
    iget-boolean v3, p1, Lcom/google/android/gms/stats/a;->e:Z

    if-nez v3, :cond_7

    iget v3, p1, Lcom/google/android/gms/stats/a;->g:I

    if-nez v3, :cond_7

    .line 2064
    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/stats/c;->a()Lcom/google/android/gms/common/stats/c;

    iget-object v3, p1, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 2065
    invoke-static {v3, v1}, Lcom/google/android/gms/common/stats/b;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    .line 3045
    iget-object v1, p1, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(Landroid/os/WorkSource;)Ljava/util/List;

    .line 2068
    iget v1, p1, Lcom/google/android/gms/stats/a;->g:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/gms/stats/a;->g:I

    .line 2069
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2070
    :try_start_2
    iget-object v1, p1, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-lez v3, :cond_8

    .line 2073
    sget-object v1, Lcom/google/android/gms/stats/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/stats/c;

    invoke-direct {v2, p1}, Lcom/google/android/gms/stats/c;-><init>(Lcom/google/android/gms/stats/a;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2074
    invoke-interface {v1, v2, v4, v5, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 2069
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 8
    :cond_8
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method static a(Landroid/content/Intent;)V
    .locals 7

    sget-object v0, Lcom/google/firebase/messaging/av;->b:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/av;->c:Lcom/google/android/gms/stats/a;

    if-eqz v1, :cond_6

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    .line 4001
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-static {p0, v2}, Lcom/google/firebase/messaging/av;->a(Landroid/content/Intent;Z)V

    sget-object p0, Lcom/google/firebase/messaging/av;->c:Lcom/google/android/gms/stats/a;

    .line 4077
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "WakeLock"

    .line 4079
    iget-object v3, p0, Lcom/google/android/gms/stats/a;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " release without a matched acquire!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/stats/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 4083
    iget-object v3, p0, Lcom/google/android/gms/stats/a;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4084
    :try_start_1
    iget-boolean v4, p0, Lcom/google/android/gms/stats/a;->e:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 4085
    iget-object v4, p0, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_0

    .line 4088
    :cond_1
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 4089
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    .line 4091
    :cond_2
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    :goto_0
    if-nez v2, :cond_4

    .line 4093
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/stats/a;->e:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/stats/a;->g:I

    if-ne v2, v5, :cond_5

    .line 4094
    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/stats/c;->a()Lcom/google/android/gms/common/stats/c;

    iget-object v2, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 4095
    invoke-static {v2, v1}, Lcom/google/android/gms/common/stats/b;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    .line 5045
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(Landroid/os/WorkSource;)Ljava/util/List;

    .line 4098
    iget v1, p0, Lcom/google/android/gms/stats/a;->g:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/gms/stats/a;->g:I

    .line 4099
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4100
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/stats/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 4099
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 5
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static a(Landroid/content/Intent;Z)V
    .locals 1

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
