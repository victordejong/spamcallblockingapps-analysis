.class public Lcom/mopub/common/DoubleTimeTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/DoubleTimeTracker$b;,
        Lcom/mopub/common/DoubleTimeTracker$a;,
        Lcom/mopub/common/DoubleTimeTracker$Clock;
    }
.end annotation


# instance fields
.field private volatile a:I

.field private b:J

.field private c:J

.field private final d:Lcom/mopub/common/DoubleTimeTracker$Clock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/mopub/common/DoubleTimeTracker$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/common/DoubleTimeTracker$b;-><init>(Lcom/mopub/common/DoubleTimeTracker$1;)V

    invoke-direct {p0, v0}, Lcom/mopub/common/DoubleTimeTracker;-><init>(Lcom/mopub/common/DoubleTimeTracker$Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/common/DoubleTimeTracker$Clock;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mopub/common/DoubleTimeTracker;->d:Lcom/mopub/common/DoubleTimeTracker$Clock;

    .line 40
    sget p1, Lcom/mopub/common/DoubleTimeTracker$a;->PAUSED$273b45aa:I

    iput p1, p0, Lcom/mopub/common/DoubleTimeTracker;->a:I

    return-void
.end method

.method private declared-synchronized a()J
    .locals 4

    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/mopub/common/DoubleTimeTracker;->a:I

    sget v1, Lcom/mopub/common/DoubleTimeTracker$a;->PAUSED$273b45aa:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 72
    monitor-exit p0

    return-wide v0

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->d:Lcom/mopub/common/DoubleTimeTracker$Clock;

    invoke-interface {v0}, Lcom/mopub/common/DoubleTimeTracker$Clock;->elapsedRealTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mopub/common/DoubleTimeTracker;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getInterval()D
    .locals 4

    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->c:J

    invoke-direct {p0}, Lcom/mopub/common/DoubleTimeTracker;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    long-to-double v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 4

    monitor-enter p0

    .line 54
    :try_start_0
    iget v0, p0, Lcom/mopub/common/DoubleTimeTracker;->a:I

    sget v1, Lcom/mopub/common/DoubleTimeTracker$a;->PAUSED$273b45aa:I

    if-ne v0, v1, :cond_0

    .line 55
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DoubleTimeTracker already paused."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->c:J

    invoke-direct {p0}, Lcom/mopub/common/DoubleTimeTracker;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->c:J

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->b:J

    .line 62
    sget v0, Lcom/mopub/common/DoubleTimeTracker$a;->PAUSED$273b45aa:I

    iput v0, p0, Lcom/mopub/common/DoubleTimeTracker;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 44
    :try_start_0
    iget v0, p0, Lcom/mopub/common/DoubleTimeTracker;->a:I

    sget v1, Lcom/mopub/common/DoubleTimeTracker$a;->STARTED$273b45aa:I

    if-ne v0, v1, :cond_0

    .line 45
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DoubleTimeTracker already started."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    sget v0, Lcom/mopub/common/DoubleTimeTracker$a;->STARTED$273b45aa:I

    iput v0, p0, Lcom/mopub/common/DoubleTimeTracker;->a:I

    .line 50
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->d:Lcom/mopub/common/DoubleTimeTracker$Clock;

    invoke-interface {v0}, Lcom/mopub/common/DoubleTimeTracker$Clock;->elapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
