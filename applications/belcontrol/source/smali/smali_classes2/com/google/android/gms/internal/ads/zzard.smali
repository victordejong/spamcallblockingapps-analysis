.class public final Lcom/google/android/gms/internal/ads/zzard;
.super Lcom/google/android/gms/internal/ads/zzagj;
.source ""


# instance fields
.field private final zzdqw:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzard;->zzdqw:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzagr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzard;->zzdqw:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqx;-><init>(Lcom/google/android/gms/internal/ads/zzagr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;->onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
