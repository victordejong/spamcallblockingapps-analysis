.class final Lcom/google/android/gms/internal/ads/cvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cwh;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/beb$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cvi;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvi;->c:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cvi;->e:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/cwh;

    .line 7
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cwh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvi;->a:Lcom/google/android/gms/internal/ads/cwh;

    .line 8
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvi;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cvi;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwh;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final c()Lcom/google/android/gms/internal/ads/cwm;
    .locals 1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->a()Lcom/google/android/gms/internal/ads/cwm;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final d()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->a:Lcom/google/android/gms/internal/ads/cwh;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->disconnect()V

    :cond_1
    return-void
.end method

.method private static e()Lcom/google/android/gms/internal/ads/beb$a;
    .locals 3

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/beb$a;->c()Lcom/google/android/gms/internal/ads/beb$a$b;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/beb$a$b;->j(J)Lcom/google/android/gms/internal/ads/beb$a$b;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    .line 53
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/beb$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvi;->c()Lcom/google/android/gms/internal/ads/cwm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cvi;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cvi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdwh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cwm;->a(Lcom/google/android/gms/internal/ads/zzdwh;)Lcom/google/android/gms/internal/ads/zzdwj;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwj;->zzazh()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvi;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvi;->d()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    .line 34
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cvi;->e()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvi;->d()V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvi;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 42
    throw v0

    .line 37
    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvi;->d()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cvi;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cvi;->e()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cvi;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cvi;->e()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/beb$a;
    .locals 4

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvi;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/beb$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvi;->e()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method
