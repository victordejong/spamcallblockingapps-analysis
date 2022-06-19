.class final Lcom/google/android/gms/internal/ads/zzcxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcze<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblv;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Lcom/google/android/gms/internal/ads/zzcxw;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Lcom/google/android/gms/internal/ads/zzcxw;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Lcom/google/android/gms/internal/ads/zzcxw;Lcom/google/android/gms/internal/ads/zzblv;)Lcom/google/android/gms/internal/ads/zzblv;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Lcom/google/android/gms/internal/ads/zzcxw;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakb()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzasi()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgxw:Lcom/google/android/gms/internal/ads/zzcxw;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Lcom/google/android/gms/internal/ads/zzcxw;Lcom/google/android/gms/internal/ads/zzblv;)Lcom/google/android/gms/internal/ads/zzblv;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
