.class final Lcom/google/android/gms/internal/ads/clz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cmy;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/atw$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clz;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/clz;->c:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GassClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->e:Landroid/os/HandlerThread;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cmy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clz;->e:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cmy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    .line 8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->o()V

    .line 11
    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/cnf;
    .locals 1

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->c()Lcom/google/android/gms/internal/ads/cnf;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private final b()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->e()V

    .line 50
    :cond_1
    return-void
.end method

.method private static c()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$a;->h()Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v0

    const-wide/32 v2, 0x8000

    .line 52
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->j(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a;

    .line 54
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/clz;->c()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/clz;->a()Lcom/google/android/gms/internal/ads/cnf;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/clz;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/clz;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cnb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cnf;->a(Lcom/google/android/gms/internal/ads/cnb;)Lcom/google/android/gms/internal/ads/cnd;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnd;->a()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clz;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/clz;->b()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 43
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/clz;->c()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/clz;->b()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/clz;->b()V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clz;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 42
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/clz;->c()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/atw$a;
    .locals 5

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clz;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/clz;->c()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
