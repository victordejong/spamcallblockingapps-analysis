.class public final Lcom/google/firebase/perf/config/h;
.super Lcom/google/firebase/perf/config/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/s<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/firebase/perf/config/h;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/s;-><init>()V

    return-void
.end method

.method protected static declared-synchronized e()Lcom/google/firebase/perf/config/h;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/h;->a:Lcom/google/firebase/perf/config/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/h;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/h;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/h;->a:Lcom/google/firebase/perf/config/h;

    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/h;->a:Lcom/google/firebase/perf/config/h;
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

    const-string v0, "com.google.firebase.perf.SdkDisabledVersions"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_disabled_android_versions"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
