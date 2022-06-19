.class final Lcom/google/android/gms/internal/ads/zzaqy;
.super Lcom/google/android/gms/internal/ads/zzafw;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final synthetic zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqy;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaqz;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqy;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafn;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Lcom/google/android/gms/internal/ads/zzaqw;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Lcom/google/android/gms/internal/ads/zzaqw;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqy;->zzdqs:Lcom/google/android/gms/internal/ads/zzaqw;

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzafn;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V

    return-void
.end method
