.class public final Lcom/google/firebase/perf/network/InstrHttpOutputStream;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field public mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

.field public mBytesWritten:J

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mTimer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iput-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToRequestCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    throw v0
.end method

.method public flush()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    throw v0
.end method

.method public write(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    iget-object p1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    throw p1
.end method

.method public write([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    iget-object p1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBytesWritten:J

    iget-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {p2}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    throw p1
.end method
