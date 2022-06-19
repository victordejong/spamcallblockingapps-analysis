.class final Lcom/google/android/gms/internal/ads/cmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cmy;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/dkc;

.field private final e:I

.field private final f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/ads/cno;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/google/android/gms/internal/ads/clq;

.field private final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/dkc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/clq;)V
    .locals 6

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cmb;->b:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cmb;->e:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cmb;->d:Lcom/google/android/gms/internal/ads/dkc;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cmb;->c:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/cmb;->h:Lcom/google/android/gms/internal/ads/clq;

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GassDGClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->g:Landroid/os/HandlerThread;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/cmy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmb;->g:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cmy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->o()V

    .line 15
    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/cnf;
    .locals 1

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->c()Lcom/google/android/gms/internal/ads/cnf;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 30
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

.method private final a(IJLjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->h:Lcom/google/android/gms/internal/ads/clq;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->h:Lcom/google/android/gms/internal/ads/clq;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    .line 70
    invoke-virtual {v0, p1, v2, v3, p4}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    .line 71
    :cond_0
    return-void
.end method

.method private final b()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->e()V

    .line 65
    :cond_1
    return-void
.end method

.method private static c()Lcom/google/android/gms/internal/ads/cno;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/cno;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cno;-><init>([BI)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    .line 32
    const/16 v2, 0xfab

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/cmb;->a(IJLjava/lang/Exception;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cmb;->c()Lcom/google/android/gms/internal/ads/cno;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmb;->a()Lcom/google/android/gms/internal/ads/cnf;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cnm;

    iget v2, p0, Lcom/google/android/gms/internal/ads/cmb;->e:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cmb;->d:Lcom/google/android/gms/internal/ads/dkc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cmb;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cmb;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/cnm;-><init>(ILcom/google/android/gms/internal/ads/dkc;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cnf;->a(Lcom/google/android/gms/internal/ads/cnm;)Lcom/google/android/gms/internal/ads/cno;

    move-result-object v0

    .line 41
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    .line 42
    const/16 v1, 0x1393

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cmb;->a(IJLjava/lang/Exception;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmb;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmb;->b()V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 49
    const/16 v0, 0x7da

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cmb;->a(IJLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmb;->b()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmb;->b()V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmb;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 4

    .prologue
    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    .line 58
    const/16 v2, 0xfac

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/cmb;->a(IJLjava/lang/Exception;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/cmb;->c()Lcom/google/android/gms/internal/ads/cno;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/cno;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v2, 0xc350

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cno;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    .line 22
    const/16 v4, 0xbbc

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cmb;->a(IJLjava/lang/Exception;)V

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget v1, v0, Lcom/google/android/gms/internal/ads/cno;->b:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/akn$a$c;->c:Lcom/google/android/gms/internal/ads/akn$a$c;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/clq;->a(Lcom/google/android/gms/internal/ads/akn$a$c;)V

    .line 27
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/cmb;->c()Lcom/google/android/gms/internal/ads/cno;

    move-result-object v0

    :cond_1
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const/16 v2, 0x7d9

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cmb;->i:J

    invoke-direct {p0, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/cmb;->a(IJLjava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    .line 26
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/akn$a$c;->b:Lcom/google/android/gms/internal/ads/akn$a$c;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/clq;->a(Lcom/google/android/gms/internal/ads/akn$a$c;)V

    goto :goto_1
.end method
