.class public final Lcom/google/android/gms/internal/ads/zzagz;
.super Lcom/google/android/gms/internal/ads/zzafw;
.source ""


# instance fields
.field private final synthetic zzdgn:Lcom/google/android/gms/internal/ads/zzagx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzagx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafw;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/internal/ads/zzagw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(Lcom/google/android/gms/internal/ads/zzagx;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafn;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagx;->zzb(Lcom/google/android/gms/internal/ads/zzagx;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagx;->zzb(Lcom/google/android/gms/internal/ads/zzagx;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzdgn:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzagx;->zza(Lcom/google/android/gms/internal/ads/zzagx;Lcom/google/android/gms/internal/ads/zzafn;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method
