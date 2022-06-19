.class public final Lcom/google/android/gms/internal/ads/zzbek;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;


# instance fields
.field private zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzerq:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/ads/internal/overlay/zzq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzerq:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzerq:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacq()V

    return-void
.end method

.method public final zzvo()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzvo()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzerq:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzwb()V

    return-void
.end method
