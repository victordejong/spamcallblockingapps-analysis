.class public final Lcom/google/android/gms/internal/ads/zzcbc;
.super Lcom/google/android/gms/internal/ads/zzbpv;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbqf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zza:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcav;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcav;-><init>(Lcom/google/android/gms/internal/ads/zzbqf;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;->onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
