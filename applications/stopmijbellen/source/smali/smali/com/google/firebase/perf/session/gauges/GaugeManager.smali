.class public Lcom/google/firebase/perf/session/gauges/GaugeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC:J = 0x14L

.field private static final INVALID_GAUGE_COLLECTION_FREQUENCY:J = -0x1L

.field private static final TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS:J = 0x14L

.field private static final instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field private static final logger:Lg6/a;


# instance fields
.field private applicationProcessState:Lo6/d;

.field private final configResolver:Le6/a;

.field private final cpuGaugeCollector:Ll6/b;

.field private gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

.field private final gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private gaugeMetadataManager:Ll6/e;

.field private final memoryGaugeCollector:Ll6/f;

.field private sessionId:Ljava/lang/String;

.field private final transportManager:Lm6/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lg6/a;

    .line 2
    new-instance v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 2
    sget-object v2, Lm6/e;->s:Lm6/e;

    .line 3
    invoke-static {}, Le6/a;->e()Le6/a;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    sget-object v0, Ll6/b;->i:Ll6/b;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ll6/b;

    invoke-direct {v0}, Ll6/b;-><init>()V

    sput-object v0, Ll6/b;->i:Ll6/b;

    .line 6
    :cond_0
    sget-object v5, Ll6/b;->i:Ll6/b;

    .line 7
    sget-object v6, Ll6/f;->g:Ll6/f;

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lm6/e;Le6/a;Ll6/e;Ll6/b;Ll6/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lm6/e;Le6/a;Ll6/e;Ll6/b;Ll6/f;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 12
    sget-object v0, Lo6/d;->b:Lo6/d;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lo6/d;

    .line 13
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Lm6/e;

    .line 15
    iput-object p3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le6/a;

    .line 16
    iput-object p4, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    .line 17
    iput-object p5, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Ll6/b;

    .line 18
    iput-object p6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Ll6/f;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lo6/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->lambda$startCollectingGauges$0(Ljava/lang/String;Lo6/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lo6/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->lambda$stopCollectingGauges$1(Ljava/lang/String;Lo6/d;)V

    return-void
.end method

.method private static collectGaugeMetricOnce(Ll6/b;Ll6/f;Ln6/e;)V
    .locals 6

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Ll6/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ll6/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Ll6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 4
    :try_start_1
    sget-object v3, Ll6/b;->g:Lg6/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to collect Cpu Metric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg6/a;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    .line 6
    monitor-enter p1

    .line 7
    :try_start_2
    iget-object p0, p1, Ll6/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ll6/a;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v3}, Ll6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p0, v2, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 9
    :try_start_3
    sget-object p2, Ll6/f;->f:Lg6/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to collect Memory Metric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lg6/a;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p0

    .line 11
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private getCpuGaugeCollectionFrequencyMs(Lo6/d;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move-wide v5, v0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le6/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v5, Le6/k;

    monitor-enter v5

    .line 4
    :try_start_0
    sget-object v6, Le6/k;->a:Le6/k;

    if-nez v6, :cond_1

    .line 5
    new-instance v6, Le6/k;

    invoke-direct {v6}, Le6/k;-><init>()V

    sput-object v6, Le6/k;->a:Le6/k;

    .line 6
    :cond_1
    sget-object v6, Le6/k;->a:Le6/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 7
    invoke-virtual {p1, v6}, Le6/a;->h(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v5, p1, Le6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_cpu_capture_frequency_bg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Ln6/b;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 12
    iget-object p1, p1, Le6/a;->c:Le6/t;

    const-string v6, "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs"

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, v6}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Le6/a;->n(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 17
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v5

    throw p1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le6/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v5, Le6/l;

    monitor-enter v5

    .line 22
    :try_start_1
    sget-object v6, Le6/l;->a:Le6/l;

    if-nez v6, :cond_6

    .line 23
    new-instance v6, Le6/l;

    invoke-direct {v6}, Le6/l;-><init>()V

    sput-object v6, Le6/l;->a:Le6/l;

    .line 24
    :cond_6
    sget-object v6, Le6/l;->a:Le6/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 25
    invoke-virtual {p1, v6}, Le6/a;->h(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 27
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 28
    :cond_7
    iget-object v5, p1, Le6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_cpu_capture_frequency_fg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Ln6/b;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 30
    iget-object p1, p1, Le6/a;->c:Le6/t;

    const-string v6, "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs"

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 32
    :cond_8
    invoke-virtual {p1, v6}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Le6/a;->n(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_9
    const-wide/16 v5, 0x64

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 37
    :goto_0
    sget-object p1, Ll6/b;->g:Lg6/a;

    cmp-long p1, v5, v2

    if-gtz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    return-wide v0

    :cond_b
    return-wide v5

    :catchall_1
    move-exception p1

    .line 38
    monitor-exit v5

    throw p1
.end method

.method private getGaugeMetadata()Lo6/f;
    .locals 5

    .line 1
    invoke-static {}, Lo6/f;->F()Lo6/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    .line 2
    iget-object v1, v1, Ll6/e;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 4
    iget-object v2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/f;

    invoke-static {v2, v1}, Lo6/f;->z(Lo6/f;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    .line 6
    sget-object v2, Ln6/d;->d:Ln6/d;

    iget-object v1, v1, Ll6/e;->c:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v2, v3, v4}, Ln6/d;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ln6/f;->b(J)I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 8
    iget-object v3, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v3, Lo6/f;

    invoke-static {v3, v1}, Lo6/f;->C(Lo6/f;I)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    .line 10
    iget-object v1, v1, Ll6/e;->a:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ln6/d;->a(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ln6/f;->b(J)I

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 12
    iget-object v2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/f;

    invoke-static {v2, v1}, Lo6/f;->A(Lo6/f;I)V

    .line 13
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    .line 14
    sget-object v2, Ln6/d;->b:Ln6/d;

    iget-object v1, v1, Ll6/e;->b:Landroid/app/ActivityManager;

    .line 15
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ln6/d;->a(J)J

    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Ln6/f;->b(J)I

    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 18
    iget-object v2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/f;

    invoke-static {v2, v1}, Lo6/f;->B(Lo6/f;I)V

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v0

    check-cast v0, Lo6/f;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMemoryGaugeCollectionFrequencyMs(Lo6/d;)J
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move-wide v5, v0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le6/a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v5, Le6/n;

    monitor-enter v5

    .line 5
    :try_start_0
    sget-object v6, Le6/n;->a:Le6/n;

    if-nez v6, :cond_1

    .line 6
    new-instance v6, Le6/n;

    invoke-direct {v6}, Le6/n;-><init>()V

    sput-object v6, Le6/n;->a:Le6/n;

    .line 7
    :cond_1
    sget-object v6, Le6/n;->a:Le6/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 8
    invoke-virtual {p1, v6}, Le6/a;->h(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object v5, p1, Le6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_memory_capture_frequency_bg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Ln6/b;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    iget-object p1, p1, Le6/a;->c:Le6/t;

    const-string v6, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs"

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, v6}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Le6/a;->n(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v5

    throw p1

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Le6/a;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v5, Le6/o;

    monitor-enter v5

    .line 24
    :try_start_1
    sget-object v6, Le6/o;->a:Le6/o;

    if-nez v6, :cond_6

    .line 25
    new-instance v6, Le6/o;

    invoke-direct {v6}, Le6/o;-><init>()V

    sput-object v6, Le6/o;->a:Le6/o;

    .line 26
    :cond_6
    sget-object v6, Le6/o;->a:Le6/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 27
    invoke-virtual {p1, v6}, Le6/a;->h(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 30
    :cond_7
    iget-object v5, p1, Le6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v7, "fpr_session_gauge_memory_capture_frequency_fg_ms"

    invoke-virtual {v5, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Ln6/b;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Le6/a;->n(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 32
    iget-object p1, p1, Le6/a;->c:Le6/t;

    const-string v6, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs"

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, p1, v6, v5}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    .line 34
    :cond_8
    invoke-virtual {p1, v6}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ln6/b;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Le6/a;->n(J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {v5}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_9
    const-wide/16 v5, 0x64

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 39
    :goto_0
    sget-object p1, Ll6/f;->f:Lg6/a;

    cmp-long p1, v5, v2

    if-gtz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    return-wide v0

    :cond_b
    return-wide v5

    :catchall_1
    move-exception p1

    .line 40
    monitor-exit v5

    throw p1
.end method

.method private synthetic lambda$startCollectingGauges$0(Ljava/lang/String;Lo6/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Lo6/d;)V

    return-void
.end method

.method private synthetic lambda$stopCollectingGauges$1(Ljava/lang/String;Lo6/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Lo6/d;)V

    return-void
.end method

.method private startCollectingCpuMetrics(JLn6/e;)Z
    .locals 10

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 1
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lg6/a;

    .line 2
    iget-boolean p2, p1, Lg6/a;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lg6/a;->a:Lg6/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v2

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Ll6/b;

    .line 5
    iget-wide v4, v3, Ll6/b;->d:J

    const/4 v6, 0x1

    cmp-long v7, v4, v0

    if-eqz v7, :cond_6

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v4, p1, v7

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iget-object v4, v3, Ll6/b;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_5

    .line 7
    iget-wide v7, v3, Ll6/b;->f:J

    cmp-long v5, v7, p1

    if-eqz v5, :cond_6

    .line 8
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 9
    iput-object v2, v3, Ll6/b;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 10
    iput-wide v0, v3, Ll6/b;->f:J

    .line 11
    invoke-virtual {v3, p1, p2, p3}, Ll6/b;->a(JLn6/e;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v3, p1, p2, p3}, Ll6/b;->a(JLn6/e;)V

    :cond_6
    :goto_1
    return v6
.end method

.method private startCollectingGauges(Lo6/d;Ln6/e;)J
    .locals 7

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getCpuGaugeCollectionFrequencyMs(Lo6/d;)J

    move-result-wide v0

    .line 16
    invoke-direct {p0, v0, v1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingCpuMetrics(JLn6/e;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    .line 17
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getMemoryGaugeCollectionFrequencyMs(Lo6/d;)J

    move-result-wide v5

    .line 18
    invoke-direct {p0, v5, v6, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingMemoryMetrics(JLn6/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    move-wide v0, v5

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v0, p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private startCollectingMemoryMetrics(JLn6/e;)Z
    .locals 9

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 1
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lg6/a;

    .line 2
    iget-boolean p2, p1, Lg6/a;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lg6/a;->a:Lg6/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v2

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Ll6/f;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, p1, v4

    if-gtz v7, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v4, v3, Ll6/f;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_4

    .line 6
    iget-wide v7, v3, Ll6/f;->e:J

    cmp-long v5, v7, p1

    if-eqz v5, :cond_5

    .line 7
    invoke-interface {v4, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 8
    iput-object v2, v3, Ll6/f;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    iput-wide v0, v3, Ll6/f;->e:J

    .line 10
    invoke-virtual {v3, p1, p2, p3}, Ll6/f;->a(JLn6/e;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Ll6/f;->a(JLn6/e;)V

    :cond_5
    :goto_1
    return v6
.end method

.method private syncFlush(Ljava/lang/String;Lo6/d;)V
    .locals 4

    .line 1
    invoke-static {}, Lo6/g;->J()Lo6/g$b;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Ll6/b;

    iget-object v1, v1, Ll6/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Ll6/b;

    iget-object v1, v1, Ll6/b;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo6/e;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 5
    iget-object v2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/g;

    invoke-static {v2, v1}, Lo6/g;->C(Lo6/g;Lo6/e;)V

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Ll6/f;

    iget-object v1, v1, Ll6/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Ll6/f;

    iget-object v1, v1, Ll6/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo6/b;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 9
    iget-object v2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/g;

    invoke-static {v2, v1}, Lo6/g;->A(Lo6/g;Lo6/b;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 11
    iget-object v1, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v1, Lo6/g;

    invoke-static {v1, p1}, Lo6/g;->z(Lo6/g;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Lm6/e;

    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v0

    check-cast v0, Lo6/g;

    .line 13
    iget-object v1, p1, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/emoji2/text/e;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, p2, v3}, Landroidx/emoji2/text/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public collectGaugeMetricOnce(Ln6/e;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Ll6/b;

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Ll6/f;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Ll6/b;Ll6/f;Ln6/e;)V

    return-void
.end method

.method public logGaugeMetadata(Ljava/lang/String;Lo6/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo6/g;->J()Lo6/g$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 4
    iget-object v1, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v1, Lo6/g;

    invoke-static {v1, p1}, Lo6/g;->z(Lo6/g;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getGaugeMetadata()Lo6/f;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 7
    iget-object v1, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v1, Lo6/g;

    invoke-static {v1, p1}, Lo6/g;->B(Lo6/g;Lo6/f;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object p1

    check-cast p1, Lo6/g;

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Lm6/e;

    .line 10
    iget-object v1, v0, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/emoji2/text/e;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, p2, v3}, Landroidx/emoji2/text/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Ll6/e;

    invoke-direct {v0, p1}, Ll6/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Ll6/e;

    return-void
.end method

.method public startCollectingGauges(Lk6/a;Lo6/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->stopCollectingGauges()V

    .line 3
    :cond_0
    iget-object v0, p1, Lk6/a;->b:Ln6/e;

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingGauges(Lo6/d;Ln6/e;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 5
    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lg6/a;

    .line 6
    iget-boolean p2, p1, Lg6/a;->b:Z

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Lg6/a;->a:Lg6/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string p2, "Invalid gauge collection frequency. Unable to start collecting Gauges."

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object p1, p1, Lk6/a;->a:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lo6/d;

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ll6/c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Ll6/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 p1, 0x14

    mul-long v6, v0, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    .line 13
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    sget-object p2, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lg6/a;

    const-string v0, "Unable to start collecting Gauges: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg6/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCollectingGauges()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lo6/d;

    .line 3
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Ll6/b;

    .line 4
    iget-object v3, v2, Ll6/b;->e:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 6
    iput-object v6, v2, Ll6/b;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    iput-wide v4, v2, Ll6/b;->f:J

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Ll6/f;

    .line 9
    iget-object v3, v2, Ll6/f;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v3, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 11
    iput-object v6, v2, Ll6/f;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    iput-wide v4, v2, Ll6/f;->e:J

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ll6/d;

    invoke-direct {v3, p0, v0, v1, v7}, Ll6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lo6/d;I)V

    const-wide/16 v0, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 17
    iput-object v6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    .line 18
    sget-object v0, Lo6/d;->b:Lo6/d;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lo6/d;

    return-void
.end method
