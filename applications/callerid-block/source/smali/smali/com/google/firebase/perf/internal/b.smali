.class public abstract Lcom/google/firebase/perf/internal/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/perf/internal/a$a;


# instance fields
.field private mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

.field private mIsRegisteredForAppState:Z

.field private mState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/internal/a;->b()Lcom/google/firebase/perf/internal/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/b;-><init>(Lcom/google/firebase/perf/internal/a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/firebase/perf/internal/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->b:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object v0
.end method

.method protected incrementTsnsCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/a;->f(I)V

    return-void
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    sget-object v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->b:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    if-ne v0, v1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    goto :goto_1

    :cond_0
    if-eq v0, p1, :cond_1

    if-eq p1, v1, :cond_1

    sget-object p1, Lcom/google/firebase/perf/v1/ApplicationProcessState;->e:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected registerForAppState()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/a;->a()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/b;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/a;->j(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    return-void
.end method

.method protected unregisterForAppState()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/b;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/a;->m(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    return-void
.end method
