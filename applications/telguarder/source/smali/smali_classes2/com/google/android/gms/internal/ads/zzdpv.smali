.class final Lcom/google/android/gms/internal/ads/zzdpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzdpm<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhox:Lcom/google/android/gms/internal/ads/zzdpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpm;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zza(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzdpx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdpx;->zza(Lcom/google/android/gms/internal/ads/zzdpm;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zzb(Lcom/google/android/gms/internal/ads/zzdpu;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhpa:I

    if-eq v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zzd(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzdpc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdpu;->zzc(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzdqa;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaup()Lcom/google/android/gms/internal/ads/zzdpl;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdpc;->zza(Lcom/google/android/gms/internal/ads/zzdpl;Lcom/google/android/gms/internal/ads/zzdpm;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zzb(Lcom/google/android/gms/internal/ads/zzdpu;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhoz:I

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zzc(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzdqa;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdpu;->zza(Lcom/google/android/gms/internal/ads/zzdpu;Lcom/google/android/gms/internal/ads/zzdqa;)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    sget v2, Lcom/google/android/gms/internal/ads/zzdpz;->zzhoz:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdpu;->zza(Lcom/google/android/gms/internal/ads/zzdpu;I)I

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zze(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzeae;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeae;->set(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zza(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzdpx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdpx;->zzb(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpv;->zzhox:Lcom/google/android/gms/internal/ads/zzdpu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zze(Lcom/google/android/gms/internal/ads/zzdpu;)Lcom/google/android/gms/internal/ads/zzeae;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeae;->setException(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
