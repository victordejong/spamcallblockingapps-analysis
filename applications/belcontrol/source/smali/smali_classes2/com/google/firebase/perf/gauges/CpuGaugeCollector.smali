.class public Lcom/google/firebase/perf/gauges/CpuGaugeCollector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CSTIME_POSITION_IN_PROC_PID_STAT:I = 0x10

.field private static final CUTIME_POSITION_IN_PROC_PID_STAT:I = 0xf

.field public static final INVALID_CPU_COLLECTION_FREQUENCY:J = -0x1L

.field private static final INVALID_SC_PER_CPU_CLOCK_TICK:I = -0x1

.field private static final MICROSECONDS_PER_SECOND:J

.field private static final STIME_POSITION_IN_PROC_PID_STAT:I = 0xe

.field private static final UNSET_CPU_METRIC_COLLECTION_RATE:I = -0x1

.field private static final UTIME_POSITION_IN_PROC_PID_STAT:I = 0xd

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;

.field private static sharedInstance:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;


# instance fields
.field private final clockTicksPerSecond:J

.field private cpuMetricCollectionRateMs:J

.field private final cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

.field public final cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation
.end field

.field private final procFileName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->MICROSECONDS_PER_SECOND:J

    const/4 v0, 0x0

    sput-object v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->sharedInstance:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/stat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->procFileName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->getClockTicksPerSecond()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->procFileName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    return-void
.end method

.method private convertClockTicksToMicroseconds(J)J
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    sget-wide v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->MICROSECONDS_PER_SECOND:J

    long-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method private getClockTicksPerSecond()J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getInstance()Lcom/google/firebase/perf/gauges/CpuGaugeCollector;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->sharedInstance:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    invoke-direct {v0}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->sharedInstance:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    :cond_0
    sget-object v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->sharedInstance:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    return-object v0
.end method

.method public static isInvalidCollectionFrequency(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$scheduleCpuMetricCollectionOnce$1(Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->syncCollectCpuMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$scheduleCpuMetricCollectionWithRate$0(Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->syncCollectCpuMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized scheduleCpuMetricCollectionOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to collect Cpu Metric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized scheduleCpuMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, p3}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start collecting Cpu Metrics: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private syncCollectCpuMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->procFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Timer;->getCurrentTimestampMicros()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0xd

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0xf

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v9, 0xe

    aget-object v9, p1, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/16 v11, 0x10

    aget-object p1, p1, v11

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {}, Lcom/google/firebase/perf/v1/CpuMetricReading;->newBuilder()Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->setClientTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    add-long/2addr v9, v11

    invoke-direct {p0, v9, v10}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->convertClockTicksToMicroseconds(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->setSystemTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    add-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->convertClockTicksToMicroseconds(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->setUserTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/CpuMetricReading;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    sget-object v2, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected \'/proc/[pid]/stat\' file format encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception p1

    sget-object v2, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read \'proc/[pid]/stat\' file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public collectOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->scheduleCpuMetricCollectionOnce(Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public startCollecting(JLcom/google/firebase/perf/util/Timer;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->isInvalidCollectionFrequency(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->stopCollecting()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->scheduleCpuMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->scheduleCpuMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public stopCollecting()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    return-void
.end method
