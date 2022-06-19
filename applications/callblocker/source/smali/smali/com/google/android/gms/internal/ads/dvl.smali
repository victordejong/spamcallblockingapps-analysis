.class public final Lcom/google/android/gms/internal/ads/dvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/internal/ads/dvv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private d:Landroid/content/Context;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/dvz;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dvp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dvp;-><init>(Lcom/google/android/gms/internal/ads/dvl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    return-void
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)Lcom/google/android/gms/internal/ads/dvv;
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dvv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvl;->d:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xc;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/dvv;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/dvv;)Lcom/google/android/gms/internal/ads/dvv;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvl;->e:Lcom/google/android/gms/internal/ads/dvz;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dvl;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvl;->c()V

    return-void
.end method

.method private final b()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    monitor-exit v1

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dvr;-><init>(Lcom/google/android/gms/internal/ads/dvl;)V

    .line 44
    new-instance v2, Lcom/google/android/gms/internal/ads/dvq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/dvq;-><init>(Lcom/google/android/gms/internal/ads/dvl;)V

    .line 45
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)Lcom/google/android/gms/internal/ads/dvv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvv;->o()V

    .line 47
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dvl;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvl;->b()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dvl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private final c()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    if-nez v0, :cond_0

    .line 53
    monitor-exit v1

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvv;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvv;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvv;->e()V

    .line 56
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->e:Lcom/google/android/gms/internal/ads/dvz;

    .line 58
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 59
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/dvl;)Lcom/google/android/gms/internal/ads/dvv;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->c:Lcom/google/android/gms/internal/ads/dvv;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dvu;)Lcom/google/android/gms/internal/ads/dvt;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->e:Lcom/google/android/gms/internal/ads/dvz;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/dvt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dvt;-><init>()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->e:Lcom/google/android/gms/internal/ads/dvz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dvz;->a(Lcom/google/android/gms/internal/ads/dvu;)Lcom/google/android/gms/internal/ads/dvt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    :try_start_3
    const-string/jumbo v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/dvt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dvt;-><init>()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bL:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvl;->b()V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvl;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    sget-object v2, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvl;->a:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bM:Lcom/google/android/gms/internal/ads/ect;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    monitor-exit v1

    .line 31
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 4
    if-nez p1, :cond_0

    .line 19
    :goto_0
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 8
    monitor-exit v1

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvl;->d:Landroid/content/Context;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bK:Lcom/google/android/gms/internal/ads/ect;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvl;->b()V

    .line 19
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bJ:Lcom/google/android/gms/internal/ads/ect;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/dvn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dvn;-><init>(Lcom/google/android/gms/internal/ads/dvl;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/due;->a(Lcom/google/android/gms/internal/ads/duj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
