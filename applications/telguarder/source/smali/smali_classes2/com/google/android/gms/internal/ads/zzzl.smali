.class final Lcom/google/android/gms/internal/ads/zzzl;
.super Lcom/google/android/gms/internal/ads/zzwu;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final synthetic zzckj:Lcom/google/android/gms/internal/ads/zzzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Lcom/google/android/gms/internal/ads/zzzm;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzm;->zzdw()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzzc;)V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzwu;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Lcom/google/android/gms/internal/ads/zzzm;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzm;->zzdw()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzzc;)V

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzwu;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Lcom/google/android/gms/internal/ads/zzzm;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzckj:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzm;->zzdw()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzzc;)V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzwu;->onAdLoaded()V

    return-void
.end method
