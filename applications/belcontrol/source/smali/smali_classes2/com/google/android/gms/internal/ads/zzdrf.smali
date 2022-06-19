.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhqd:Lcom/google/android/gms/internal/ads/zzdrb;

.field private final zzhqe:Lcom/google/android/gms/internal/ads/zzdqw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrb;Lcom/google/android/gms/internal/ads/zzdqw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzhqd:Lcom/google/android/gms/internal/ads/zzdrb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzhqe:Lcom/google/android/gms/internal/ads/zzdqw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzhqd:Lcom/google/android/gms/internal/ads/zzdrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzhqe:Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhpy:Lcom/google/android/gms/internal/ads/zzdqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqv;->zzc(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrh;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrh;->zzb(Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method
