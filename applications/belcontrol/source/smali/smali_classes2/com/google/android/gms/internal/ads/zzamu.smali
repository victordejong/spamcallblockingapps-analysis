.class public final synthetic Lcom/google/android/gms/internal/ads/zzamu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzdlj:Lcom/google/android/gms/internal/ads/zzamv;

.field private final zzdlk:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamv;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdlj:Lcom/google/android/gms/internal/ads/zzamv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdlk:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdlj:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamu;->zzdlk:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzamv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzalx;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
