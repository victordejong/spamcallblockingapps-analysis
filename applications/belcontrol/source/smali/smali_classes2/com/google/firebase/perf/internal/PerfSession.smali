.class public Lcom/google/firebase/perf/internal/PerfSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/internal/PerfSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreationTime:Lcom/google/firebase/perf/util/Timer;

.field private mGaugeAndEventCollectionEnabled:Z

.field private mSessionId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/internal/PerfSession$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/PerfSession$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/PerfSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    const-class v0, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/util/Timer;

    iput-object p1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mCreationTime:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/internal/PerfSession$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/PerfSession;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    iput-object p1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mCreationTime:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public static buildAndSort(Ljava/util/List;)[Lcom/google/firebase/perf/v1/PerfSession;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/PerfSession;",
            ">;)[",
            "Lcom/google/firebase/perf/v1/PerfSession;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/firebase/perf/v1/PerfSession;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v2}, Lcom/google/firebase/perf/internal/PerfSession;->build()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v6}, Lcom/google/firebase/perf/internal/PerfSession;->build()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v6

    if-nez v5, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v7}, Lcom/google/firebase/perf/internal/PerfSession;->isVerbose()Z

    move-result v7

    if-eqz v7, :cond_1

    aput-object v6, v0, v1

    aput-object v2, v0, v4

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static create()Lcom/google/firebase/perf/internal/PerfSession;
    .locals 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/perf/internal/PerfSession;

    new-instance v2, Lcom/google/firebase/perf/util/Clock;

    invoke-direct {v2}, Lcom/google/firebase/perf/util/Clock;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/perf/internal/PerfSession;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/util/Clock;)V

    invoke-static {}, Lcom/google/firebase/perf/internal/PerfSession;->shouldCollectGaugesAndEvents()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/PerfSession;->setGaugeAndEventCollectionEnabled(Z)V

    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/PerfSession;->isVerbose()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Verbose"

    goto :goto_0

    :cond_0
    const-string v4, "Non Verbose"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "Creating a new %s Session: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static isVerbose(Lcom/google/firebase/perf/v1/PerfSession;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfSession;->getSessionVerbosityList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/SessionVerbosity;

    sget-object v1, Lcom/google/firebase/perf/v1/SessionVerbosity;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/v1/SessionVerbosity;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldCollectGaugesAndEvents()Z
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsSamplingRate()F

    move-result v0

    float-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public build()Lcom/google/firebase/perf/v1/PerfSession;
    .locals 2

    invoke-static {}, Lcom/google/firebase/perf/v1/PerfSession;->newBuilder()Lcom/google/firebase/perf/v1/PerfSession$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/PerfSession$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/firebase/perf/v1/SessionVerbosity;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/v1/SessionVerbosity;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->addSessionVerbosity(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/PerfSession$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimer()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mCreationTime:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method

.method public isExpired()Z
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mCreationTime:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsMaxDurationMinutes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGaugeAndEventCollectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    return v0
.end method

.method public isVerbose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    return v0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/PerfSession;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setGaugeAndEventCollectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/google/firebase/perf/internal/PerfSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/firebase/perf/internal/PerfSession;->mGaugeAndEventCollectionEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/google/firebase/perf/internal/PerfSession;->mCreationTime:Lcom/google/firebase/perf/util/Timer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
