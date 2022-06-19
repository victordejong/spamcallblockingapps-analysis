.class public final Lcom/google/android/gms/internal/ads/dzu;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dxu;

.field private final e:Lcom/google/android/gms/internal/ads/jz;

.field private volatile f:Z

.field private final g:Lcom/google/android/gms/internal/ads/qr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/google/android/gms/internal/ads/mz;->a:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/dzu;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/dxu;Lcom/google/android/gms/internal/ads/jz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/dxu;",
            "Lcom/google/android/gms/internal/ads/jz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dzu;->f:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dzu;->b:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dzu;->c:Ljava/util/concurrent/BlockingQueue;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dzu;->d:Lcom/google/android/gms/internal/ads/dxu;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dzu;->e:Lcom/google/android/gms/internal/ads/jz;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/qr;

    invoke-direct {p1, p0, p2, p4}, Lcom/google/android/gms/internal/ads/qr;-><init>(Lcom/google/android/gms/internal/ads/dzu;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/jz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dzu;->g:Lcom/google/android/gms/internal/ads/qr;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dzu;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dzu;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dzu;->f:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzu;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 11

    .line 12
    sget-boolean v0, Lcom/google/android/gms/internal/ads/dzu;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/mz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 13
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzu;->d:Lcom/google/android/gms/internal/ads/dxu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dxu;->a()V

    .line 1023
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzu;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/z;

    const-string v2, "cache-queue-take"

    .line 1025
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1026
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    .line 1027
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z;->isCanceled()Z

    .line 1028
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dzu;->d:Lcom/google/android/gms/internal/ads/dxu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/dxu;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eap;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v2, "cache-miss"

    .line 1030
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1031
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->g:Lcom/google/android/gms/internal/ads/qr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qr;->b(Lcom/google/android/gms/internal/ads/z;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1032
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    :cond_1
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1035
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/eap;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "cache-hit-expired"

    .line 1036
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/eap;)Lcom/google/android/gms/internal/ads/z;

    .line 1038
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->g:Lcom/google/android/gms/internal/ads/qr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qr;->b(Lcom/google/android/gms/internal/ads/z;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1039
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1040
    :cond_3
    :try_start_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_4
    :try_start_5
    const-string v5, "cache-hit"

    .line 1042
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1043
    new-instance v5, Lcom/google/android/gms/internal/ads/emg;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/eap;->a:[B

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/eap;->g:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/emg;-><init>([BLjava/util/Map;)V

    .line 1044
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/emg;)Lcom/google/android/gms/internal/ads/fa;

    move-result-object v5

    const-string v6, "cache-hit-parsed"

    .line 1045
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/fa;->a()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v2, "cache-parsing-failed"

    .line 1047
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1048
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->d:Lcom/google/android/gms/internal/ads/dxu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/dxu;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1049
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/eap;)Lcom/google/android/gms/internal/ads/z;

    .line 1050
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->g:Lcom/google/android/gms/internal/ads/qr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qr;->b(Lcom/google/android/gms/internal/ads/z;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1051
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1052
    :cond_5
    :try_start_6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1055
    :cond_6
    :try_start_7
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/eap;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    .line 1057
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->e:Lcom/google/android/gms/internal/ads/jz;

    invoke-interface {v2, v0, v5}, Lcom/google/android/gms/internal/ads/jz;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;)V

    goto :goto_2

    :cond_8
    const-string v6, "cache-hit-refresh-needed"

    .line 1058
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/z;->zza(Lcom/google/android/gms/internal/ads/eap;)Lcom/google/android/gms/internal/ads/z;

    .line 1060
    iput-boolean v2, v5, Lcom/google/android/gms/internal/ads/fa;->d:Z

    .line 1061
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->g:Lcom/google/android/gms/internal/ads/qr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qr;->b(Lcom/google/android/gms/internal/ads/z;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1062
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->e:Lcom/google/android/gms/internal/ads/jz;

    new-instance v4, Lcom/google/android/gms/internal/ads/ecl;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/ads/ecl;-><init>(Lcom/google/android/gms/internal/ads/dzu;Lcom/google/android/gms/internal/ads/z;)V

    invoke-interface {v2, v0, v5, v4}, Lcom/google/android/gms/internal/ads/jz;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1063
    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dzu;->e:Lcom/google/android/gms/internal/ads/jz;

    invoke-interface {v2, v0, v5}, Lcom/google/android/gms/internal/ads/jz;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1064
    :goto_2
    :try_start_8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    .line 1066
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/z;->zzd(I)V

    .line 1067
    throw v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    nop

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dzu;->f:Z

    if-eqz v0, :cond_a

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_a
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 21
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/mz;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
