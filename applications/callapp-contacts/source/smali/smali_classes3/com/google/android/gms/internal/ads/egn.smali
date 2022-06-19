.class public final Lcom/google/android/gms/internal/ads/egn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/lang/Object;

.field c:Lcom/google/android/gms/internal/ads/egu;

.field d:Lcom/google/android/gms/internal/ads/egy;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/egq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/egq;-><init>(Lcom/google/android/gms/internal/ads/egn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)Lcom/google/android/gms/internal/ads/egu;
    .locals 3

    monitor-enter p0

    .line 60
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/egu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->e:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/egu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/egn;)V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    if-nez v1, :cond_0

    .line 1065
    monitor-exit v0

    return-void

    .line 1066
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    .line 1068
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    .line 1069
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    .line 1070
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 1071
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    if-nez v1, :cond_0

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 36
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/egy;->b(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 38
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/egy;->a(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 40
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method final a()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->e:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/egs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/egs;-><init>(Lcom/google/android/gms/internal/ads/egn;)V

    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/egr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/egr;-><init>(Lcom/google/android/gms/internal/ads/egn;)V

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/egn;->a(Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)Lcom/google/android/gms/internal/ads/egu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->checkAvailabilityAndConnect()V

    .line 59
    monitor-exit v0

    return-void

    .line 54
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->e:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/egn;->e:Landroid/content/Context;

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->ck:Lcom/google/android/gms/internal/ads/af;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/egn;->a()V

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->cj:Lcom/google/android/gms/internal/ads/af;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/egp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/egp;-><init>(Lcom/google/android/gms/internal/ads/egn;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/eex;->a(Lcom/google/android/gms/internal/ads/efc;)V

    .line 19
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzti;)J
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/egn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    const-wide/16 v2, -0x2

    if-nez v1, :cond_0

    .line 45
    monitor-exit v0

    return-wide v2

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->c:Lcom/google/android/gms/internal/ads/egu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/egn;->d:Lcom/google/android/gms/internal/ads/egy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/egy;->c(Lcom/google/android/gms/internal/ads/zzti;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 49
    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
