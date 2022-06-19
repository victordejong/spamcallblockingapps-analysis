.class public final Lcom/google/android/gms/internal/ads/zzbzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;


# instance fields
.field private final zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

.field private final zzgbm:Lcom/google/android/gms/internal/ads/zzbxw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtj;Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbm:Lcom/google/android/gms/internal/ads/zzbxw;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtj;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtj;->onResume()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtj;->onUserLeaveHint()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtj;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbm:Lcom/google/android/gms/internal/ads/zzbxw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxw;->onHide()V

    return-void
.end method

.method public final zzvo()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtj;->zzvo()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzgbm:Lcom/google/android/gms/internal/ads/zzbxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxw;->zzamp()V

    return-void
.end method
