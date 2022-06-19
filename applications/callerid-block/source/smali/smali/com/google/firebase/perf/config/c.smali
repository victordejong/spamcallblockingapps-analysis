.class public final Lcom/google/firebase/perf/config/c;
.super Lcom/google/firebase/perf/config/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/s<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/firebase/perf/config/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/s;-><init>()V

    return-void
.end method

.method protected static declared-synchronized d()Lcom/google/firebase/perf/config/c;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/c;->a:Lcom/google/firebase/perf/config/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/c;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/c;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/c;->a:Lcom/google/firebase/perf/config/c;

    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/c;->a:Lcom/google/firebase/perf/config/c;
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

    const-string v0, "isEnabled"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "firebase_performance_collection_enabled"

    return-object v0
.end method
