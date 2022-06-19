.class final Lcom/google/android/gms/internal/ads/zzeba;
.super Lcom/google/android/gms/internal/ads/zzbtq;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:J

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcjr;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzebb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzcjr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeba;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzd:Lcom/google/android/gms/internal/ads/zzcjr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeba;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzc:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 2
    invoke-static {v1, v2, v3, p1, v5}, Lcom/google/android/gms/internal/ads/zzebb;->zzj(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebb;->zzd(Lcom/google/android/gms/internal/ads/zzebb;)Lcom/google/android/gms/internal/ads/zzdzi;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    const-string v2, "error"

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzi;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebb;->zzc(Lcom/google/android/gms/internal/ads/zzebb;)Lcom/google/android/gms/internal/ads/zzdli;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    const-string v2, "error"

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdli;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzd:Lcom/google/android/gms/internal/ads/zzcjr;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcjr;->zzd(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeba;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzA()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzc:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    .line 2
    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzebb;->zzj(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzd(Lcom/google/android/gms/internal/ads/zzebb;)Lcom/google/android/gms/internal/ads/zzdzi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzi;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zze:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzc(Lcom/google/android/gms/internal/ads/zzebb;)Lcom/google/android/gms/internal/ads/zzdli;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdli;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba;->zzd:Lcom/google/android/gms/internal/ads/zzcjr;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcjr;->zzd(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
