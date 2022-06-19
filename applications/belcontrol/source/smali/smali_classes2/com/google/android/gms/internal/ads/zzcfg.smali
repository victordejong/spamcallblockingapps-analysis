.class public final Lcom/google/android/gms/internal/ads/zzcfg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final type:I

.field public final zzcm:Ljava/lang/String;

.field public final zzdre:Ljava/lang/String;

.field public final zzgij:Lcom/google/android/gms/internal/ads/zzaed;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfg;->type:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzcm:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzdre:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgij:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfg;->type:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzcm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzdre:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->zzgij:Lcom/google/android/gms/internal/ads/zzaed;

    return-void
.end method
