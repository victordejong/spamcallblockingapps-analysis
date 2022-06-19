.class final Lcom/google/android/gms/internal/ads/cvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cwh;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/duu;

.field private final e:I

.field private final f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzdwt;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/google/android/gms/internal/ads/cuy;

.field private final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/duu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cuy;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cvk;->b:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cvk;->e:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvk;->d:Lcom/google/android/gms/internal/ads/duu;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cvk;->c:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/cvk;->h:Lcom/google/android/gms/internal/ads/cuy;

    .line 7
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cvk;->g:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    .line 10
    new-instance p3, Lcom/google/android/gms/internal/ads/cwh;

    .line 11
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cwh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cvk;->a:Lcom/google/android/gms/internal/ads/cwh;

    .line 12
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvk;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cvk;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwh;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final a(IJLjava/lang/Exception;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->h:Lcom/google/android/gms/internal/ads/cuy;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 70
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    :cond_0
    return-void
.end method

.method private final c()Lcom/google/android/gms/internal/ads/cwm;
    .locals 1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->a:Lcom/google/android/gms/internal/ads/cwh;

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

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->a:Lcom/google/android/gms/internal/ads/cwh;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->a:Lcom/google/android/gms/internal/ads/cwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwh;->disconnect()V

    :cond_1
    return-void
.end method

.method private static e()Lcom/google/android/gms/internal/ads/zzdwt;
    .locals 3

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>([BI)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvk;->c()Lcom/google/android/gms/internal/ads/cwm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwr;

    iget v2, p0, Lcom/google/android/gms/internal/ads/cvk;->e:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cvk;->d:Lcom/google/android/gms/internal/ads/duu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cvk;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cvk;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdwr;-><init>(ILcom/google/android/gms/internal/ads/duu;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cwm;->a(Lcom/google/android/gms/internal/ads/zzdwr;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    .line 41
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    const/16 v3, 0x1393

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/cvk;->a(IJLjava/lang/Exception;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvk;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvk;->d()V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0x7da

    .line 49
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cvk;->a(IJLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvk;->d()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvk;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_1
    move-exception v0

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cvk;->d()V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvk;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    throw v0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/cvk;->a(IJLjava/lang/Exception;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cvk;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cvk;->e()Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/cvk;->a(IJLjava/lang/Exception;)V

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cvk;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cvk;->e()Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzdwt;
    .locals 5

    const/4 v0, 0x0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cvk;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v2, 0xc350

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdwt;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0x7d9

    .line 20
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/cvk;->a(IJLjava/lang/Exception;)V

    move-object v1, v0

    .line 21
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cvk;->i:J

    const/16 v4, 0xbbc

    .line 22
    invoke-direct {p0, v4, v2, v3, v0}, Lcom/google/android/gms/internal/ads/cvk;->a(IJLjava/lang/Exception;)V

    if-eqz v1, :cond_1

    .line 24
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzdwt;->status:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a$c;->zzer:Lcom/google/android/gms/internal/ads/aut$a$c;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cuy;->a(Lcom/google/android/gms/internal/ads/aut$a$c;)V

    goto :goto_1

    .line 26
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a$c;->zzeq:Lcom/google/android/gms/internal/ads/aut$a$c;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cuy;->a(Lcom/google/android/gms/internal/ads/aut$a$c;)V

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvk;->e()Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method
