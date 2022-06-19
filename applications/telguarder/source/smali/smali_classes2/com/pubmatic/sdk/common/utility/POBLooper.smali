.class public Lcom/pubmatic/sdk/common/utility/POBLooper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;

.field private d:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/pubmatic/sdk/common/utility/POBLooper;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->c:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->d:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/utility/POBLooper$b;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/utility/POBLooper$b;-><init>(Lcom/pubmatic/sdk/common/utility/POBLooper;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->c:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->d:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->registerConnectivityListener(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PMLooper"

    const-string v2, "Scheduling invoke after delay %d"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBLooper;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/pubmatic/sdk/common/utility/POBLooper$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/utility/POBLooper$a;-><init>(Lcom/pubmatic/sdk/common/utility/POBLooper;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/utility/POBLooper;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->b()V

    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->resume()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->pause()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/utility/POBLooper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->b:Z

    return p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->f:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->g:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PMLooper"

    const-string v2, "Invoking scheduled method"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->f:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;->invoke()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/utility/POBLooper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/utility/POBLooper;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/utility/POBLooper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->b:Z

    return p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->d:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->c:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->unregisterConnectivityListener(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->g:Z

    return-void
.end method

.method public loop(J)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->g:Z

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PMLooper"

    const-string v2, "Looping after %d milli seconds"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->c()V

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/common/utility/POBLooper;->a(J)V

    iput-wide p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->a:J

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->a()V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->a:J

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    new-array v0, v1, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PMLooper"

    const-string v2, "Pausing refresh & saving remaining delay : %d"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->a:J

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PMLooper"

    const-string v2, "Resuming refresh with remaining delay : %d"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->a:J

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/common/utility/POBLooper;->a(J)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->f:Lcom/pubmatic/sdk/common/utility/POBLooper$LooperListener;

    return-void
.end method

.method public setNetworkMonitor(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->d:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isNetworkAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper;->b:Z

    return-void
.end method
