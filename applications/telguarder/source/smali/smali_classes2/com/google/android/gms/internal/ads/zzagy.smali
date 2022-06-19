.class final Lcom/google/android/gms/internal/ads/zzagy;
.super Lcom/google/android/gms/internal/ads/zzagb;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final synthetic zzdgn:Lcom/google/android/gms/internal/ads/zzagx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzagx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagy;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/internal/ads/zzagw;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(Lcom/google/android/gms/internal/ads/zzagx;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafn;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagy;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagx;->zza(Lcom/google/android/gms/internal/ads/zzagx;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzagx;->zza(Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/internal/ads/zzafn;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
