.class public final Lcom/google/android/gms/internal/ads/ekf;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/ehl;

.field private final c:Lcom/google/android/gms/internal/ads/dxu;

.field private final d:Lcom/google/android/gms/internal/ads/jz;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/ehl;Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/jz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/ehl;",
            "Lcom/google/android/gms/internal/ads/dxu;",
            "Lcom/google/android/gms/internal/ads/jz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ekf;->e:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ekf;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ekf;->b:Lcom/google/android/gms/internal/ads/ehl;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ekf;->c:Lcom/google/android/gms/internal/ads/dxu;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ekf;->d:Lcom/google/android/gms/internal/ads/jz;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ekf;->e:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ekf;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 9

    const/16 v0, 0xa

    .line 11
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    const/4 v0, 0x0

    .line 1020
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ekf;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/z;

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 1023
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x4

    :try_start_1
    const-string v5, "network-queue-take"

    .line 1024
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->isCanceled()Z

    .line 1027
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzd()I

    move-result v5

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1028
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ekf;->b:Lcom/google/android/gms/internal/ads/ehl;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/ehl;->zza(Lcom/google/android/gms/internal/ads/z;)Lcom/google/android/gms/internal/ads/emg;

    move-result-object v5

    const-string v6, "network-http-complete"

    .line 1029
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1030
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/emg;->e:Z

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzl()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "not-modified"

    .line 1031
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/z;->zzd(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzm()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzap; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    :try_start_2
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1035
    :cond_0
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/emg;)Lcom/google/android/gms/internal/ads/fa;

    move-result-object v5

    const-string v6, "network-parse-complete"

    .line 1036
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzh()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/fa;->b:Lcom/google/android/gms/internal/ads/eap;

    if-eqz v6, :cond_1

    .line 1038
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ekf;->c:Lcom/google/android/gms/internal/ads/dxu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zze()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/fa;->b:Lcom/google/android/gms/internal/ads/eap;

    invoke-interface {v6, v7, v8}, Lcom/google/android/gms/internal/ads/dxu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/eap;)V

    const-string v6, "network-cache-written"

    .line 1039
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1040
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzk()V

    .line 1041
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ekf;->d:Lcom/google/android/gms/internal/ads/jz;

    invoke-interface {v6, v1, v5}, Lcom/google/android/gms/internal/ads/jz;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;)V

    .line 1042
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/fa;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzap; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1043
    :try_start_4
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_5
    const-string v6, "Unhandled exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1053
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/mz;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    new-instance v6, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/lang/Throwable;)V

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 3013
    iput-wide v7, v6, Lcom/google/android/gms/internal/ads/zzap;->a:J

    .line 1056
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ekf;->d:Lcom/google/android/gms/internal/ads/jz;

    invoke-interface {v2, v1, v6}, Lcom/google/android/gms/internal/ads/jz;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V

    .line 1057
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzm()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1058
    :try_start_6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v5

    .line 1046
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 2013
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzap;->a:J

    .line 1048
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ekf;->d:Lcom/google/android/gms/internal/ads/jz;

    invoke-interface {v2, v1, v5}, Lcom/google/android/gms/internal/ads/jz;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V

    .line 1049
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/z;->zzm()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1050
    :try_start_8
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V

    goto/16 :goto_0

    .line 1060
    :goto_1
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V

    .line 1061
    throw v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    nop

    .line 15
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ekf;->e:Z

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mz;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
