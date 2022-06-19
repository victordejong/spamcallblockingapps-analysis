.class public final Lcom/google/android/gms/internal/ads/zzalg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdju:Lcom/google/android/gms/internal/ads/zzalq;

.field private final synthetic zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

.field private final synthetic zzdjw:Lcom/google/android/gms/internal/ads/zzakz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzakm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbad;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbad;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbad;->reject()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalg;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzalj;->zzb(Lcom/google/android/gms/internal/ads/zzakm;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
