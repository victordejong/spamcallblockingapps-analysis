.class public final Lcom/google/android/gms/internal/ads/zzaud;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzdyz:J

.field public final zzdza:Lcom/google/android/gms/internal/ads/zzatz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaub;Lcom/google/android/gms/internal/ads/zzatz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaud;->zzdyz:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaud;->zzdza:Lcom/google/android/gms/internal/ads/zzatz;

    return-void
.end method
