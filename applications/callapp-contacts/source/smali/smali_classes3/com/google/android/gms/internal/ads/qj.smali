.class public final Lcom/google/android/gms/internal/ads/qj;
.super Lcom/google/android/gms/internal/ads/fl;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj;->a:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ft;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj;->a:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/qd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/qd;-><init>(Lcom/google/android/gms/internal/ads/ft;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;->onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
