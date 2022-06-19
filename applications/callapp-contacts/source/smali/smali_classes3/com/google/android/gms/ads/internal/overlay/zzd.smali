.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afd;


# instance fields
.field private final zzdsz:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zze;

    return-void
.end method


# virtual methods
.method public final zzam(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->u()V

    :cond_0
    return-void
.end method
