.class final Lcom/google/android/gms/internal/ads/zzarb;
.super Lcom/google/android/gms/internal/ads/zzagb;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final synthetic zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarb;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaqz;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzarb;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafn;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarb;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzaqw;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarb;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzafn;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
