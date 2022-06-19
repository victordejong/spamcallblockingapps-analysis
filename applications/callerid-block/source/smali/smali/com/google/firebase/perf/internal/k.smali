.class final synthetic Lcom/google/firebase/perf/internal/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# instance fields
.field private final a:Lcom/google/firebase/perf/internal/RemoteConfigManager;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/k;->a:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    return-void
.end method

.method public static b(Lcom/google/firebase/perf/internal/RemoteConfigManager;)Lcom/google/android/gms/tasks/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/internal/k;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/internal/k;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/k;->a:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0(Lcom/google/firebase/perf/internal/RemoteConfigManager;Ljava/lang/Boolean;)V

    return-void
.end method
