.class public final synthetic Lcom/google/android/gms/internal/ads/zzdps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdrw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpx;Lcom/google/android/gms/internal/ads/zzdrw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zza:Lcom/google/android/gms/internal/ads/zzdpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzb:Lcom/google/android/gms/internal/ads/zzdrw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdps;->zza:Lcom/google/android/gms/internal/ads/zzdpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdps;->zzb:Lcom/google/android/gms/internal/ads/zzdrw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpx;->zzt(Lcom/google/android/gms/internal/ads/zzdrw;)V

    return-void
.end method
