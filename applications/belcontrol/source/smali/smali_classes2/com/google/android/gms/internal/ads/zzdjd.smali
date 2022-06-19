.class public final Lcom/google/android/gms/internal/ads/zzdjd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcze<",
        "Lcom/google/android/gms/internal/ads/zzblq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdiz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzblq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdiz;->zza(Lcom/google/android/gms/internal/ads/zzdiz;Lcom/google/android/gms/internal/ads/zzblq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdiz;->zza(Lcom/google/android/gms/internal/ads/zzdiz;)Lcom/google/android/gms/internal/ads/zzdil;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzblp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdiz;->zza(Lcom/google/android/gms/internal/ads/zzdiz;)Lcom/google/android/gms/internal/ads/zzdil;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzblp;-><init>(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/internal/ads/zzdil;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzsk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakb()V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzhgf:Lcom/google/android/gms/internal/ads/zzdiz;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdiz;->zzhgd:Lcom/google/android/gms/internal/ads/zzblq;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
