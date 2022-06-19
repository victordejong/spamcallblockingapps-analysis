.class public final Lcom/google/android/gms/internal/ads/zzm;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final zzl:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzm:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzn:Lcom/google/android/gms/internal/ads/zzk;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzal;

.field private volatile zzp:Z

.field private final zzq:Lcom/google/android/gms/internal/ads/zzas;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzao;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzm;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/zzk;",
            "Lcom/google/android/gms/internal/ads/zzal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzl:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzm;->zzm:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzm;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzm;->zzo:Lcom/google/android/gms/internal/ads/zzal;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzas;

    invoke-direct {p1, p0, p2, p4}, Lcom/google/android/gms/internal/ads/zzas;-><init>(Lcom/google/android/gms/internal/ads/zzm;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzal;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzq:Lcom/google/android/gms/internal/ads/zzas;

    return-void
.end method

.method private final processRequest()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzl:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzd(I)V

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->isCanceled()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzm;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzq:Lcom/google/android/gms/internal/ads/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzm:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzd(I)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzn;->zza()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zza(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzq:Lcom/google/android/gms/internal/ads/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzm:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzd(I)V

    return-void

    :cond_3
    :try_start_2
    const-string v4, "cache-hit"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzn;->data:[B

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzz;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzab;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzag;

    move-result-object v4

    const-string v5, "cache-hit-parsed"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzag;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v3, "cache-parsing-failed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzm;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzk;->zza(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zza(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzq:Lcom/google/android/gms/internal/ads/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzm:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzd(I)V

    return-void

    :cond_5
    :try_start_3
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzn;->zzv:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzo:Lcom/google/android/gms/internal/ads/zzal;

    :goto_1
    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzal;->zza(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzag;)V

    goto :goto_2

    :cond_7
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zza(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzab;

    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzag;->zzbs:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzq:Lcom/google/android/gms/internal/ads/zzas;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzo:Lcom/google/android/gms/internal/ads/zzal;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzp;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzp;-><init>(Lcom/google/android/gms/internal/ads/zzm;Lcom/google/android/gms/internal/ads/zzab;)V

    invoke-interface {v1, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzal;->zza(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzag;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzo:Lcom/google/android/gms/internal/ads/zzal;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzd(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzd(I)V

    throw v1
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzm;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzm:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public final quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzp:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzm;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzao;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzn:Lcom/google/android/gms/internal/ads/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzk;->initialize()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzm;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzp:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzao;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
