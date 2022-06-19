.class public final synthetic Lcom/google/android/gms/ads/nativead/zzb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaec;


# instance fields
.field private final zzevz:Lcom/google/android/gms/ads/nativead/NativeAdView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/zzb;->zzevz:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-void
.end method


# virtual methods
.method public final setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/zzb;->zzevz:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb(Lcom/google/android/gms/ads/MediaContent;)V

    return-void
.end method
