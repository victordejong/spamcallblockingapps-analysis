.class final synthetic Lcom/google/android/gms/ads/formats/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaec;


# instance fields
.field private final zzbof:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/zzf;->zzbof:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-void
.end method


# virtual methods
.method public final setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/zzf;->zzbof:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Lcom/google/android/gms/ads/MediaContent;)V

    return-void
.end method
