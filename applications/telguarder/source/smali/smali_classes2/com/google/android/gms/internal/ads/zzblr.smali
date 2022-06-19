.class public final Lcom/google/android/gms/internal/ads/zzblr;
.super Lcom/google/android/gms/internal/ads/zzsn;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

.field private final zzfuk:Lcom/google/android/gms/internal/ads/zzblg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzblg;Lcom/google/android/gms/internal/ads/zzxl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblr;->zzfuk:Lcom/google/android/gms/internal/ads/zzblg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblr;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    return-void
.end method


# virtual methods
.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsv;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblr;->zzfuk:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzblg;->zza(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void
.end method

.method public final zzdx()Lcom/google/android/gms/internal/ads/zzxl;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblr;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
