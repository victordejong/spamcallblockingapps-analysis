.class public final Lcom/google/android/gms/internal/ads/zzdnx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzess:Lcom/google/android/gms/internal/ads/zzdnb;

.field private final zzfrf:Lcom/google/android/gms/internal/ads/zzdss;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    return-void
.end method

.method private final zzb(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdss;->zzel(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcrc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Lcom/google/android/gms/internal/ads/zzcrc;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdnx;->zzb(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/zzcqs;->zzgru:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdnx;->zzb(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
