.class public Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lvl1;


# instance fields
.field private final mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

.field private final mCallback:Lvl1;

.field private final mStartTimeMicros:J

.field private final mTimer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public constructor <init>(Lvl1;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mCallback:Lvl1;

    invoke-static {p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->builder(Lcom/google/firebase/perf/transport/TransportManager;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iput-wide p4, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mStartTimeMicros:J

    iput-object p3, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mTimer:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method


# virtual methods
.method public onFailure(Lul1;Ljava/io/IOException;)V
    .locals 3

    invoke-interface {p1}, Lul1;->a()Lyl1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mStartTimeMicros:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mCallback:Lvl1;

    invoke-interface {v0, p1, p2}, Lvl1;->onFailure(Lul1;Ljava/io/IOException;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lyl1;->a()Lwl1;

    const/4 p1, 0x0

    throw p1
.end method

.method public onResponse(Lul1;Lam1;)V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-wide v3, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mStartTimeMicros:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->sendNetworkMetric(Lam1;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;JJ)V

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback;->mCallback:Lvl1;

    invoke-interface {v0, p1, p2}, Lvl1;->onResponse(Lul1;Lam1;)V

    return-void
.end method
