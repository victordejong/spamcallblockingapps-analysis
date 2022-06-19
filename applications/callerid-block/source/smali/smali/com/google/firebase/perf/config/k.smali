.class public final Lcom/google/firebase/perf/config/k;
.super Lcom/google/firebase/perf/config/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/s<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/firebase/perf/config/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/s;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lcom/google/firebase/perf/config/k;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/k;->a:Lcom/google/firebase/perf/config/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/k;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/k;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/k;->a:Lcom/google/firebase/perf/config/k;

    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/k;->a:Lcom/google/firebase/perf/config/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "sessions_cpu_capture_frequency_fg_ms"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_session_gauge_cpu_capture_frequency_fg_ms"

    return-object v0
.end method

.method protected d()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
