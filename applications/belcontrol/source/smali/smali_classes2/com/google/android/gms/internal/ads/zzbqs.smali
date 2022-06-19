.class public final Lcom/google/android/gms/internal/ads/zzbqs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsh;
.implements Lcom/google/android/gms/internal/ads/zzbtb;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzboo:Lcom/google/android/gms/internal/ads/zzarz;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzarz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzboo:Lcom/google/android/gms/internal/ads/zzarz;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhju:Lcom/google/android/gms/internal/ads/zzarx;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdtk:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhju:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzarx;->zzdtl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhju:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzarx;->zzdtl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzboo:Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqs;->context:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzarz;->zza(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzcb(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzcd(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqs;->zzboo:Lcom/google/android/gms/internal/ads/zzarz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarz;->detach()V

    return-void
.end method
