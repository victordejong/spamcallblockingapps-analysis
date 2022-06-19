.class public final Lcom/google/android/gms/internal/ads/zzcgz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzair;


# instance fields
.field private final zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

.field private final zzgjq:Lcom/google/android/gms/internal/ads/zzavj;

.field private final zzgjr:Ljava/lang/String;

.field private final zzgjs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsm;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdwm:Lcom/google/android/gms/internal/ads/zzavj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzgjq:Lcom/google/android/gms/internal/ads/zzavj;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdmf:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzgjr:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdmg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzgjs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzavj;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzgjq:Lcom/google/android/gms/internal/ads/zzavj;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavj;->type:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzavj;->zzdzc:I

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 p1, 0x1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaui;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzaui;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzgjr:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzgjs:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbsm;->zzb(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzuc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsm;->onRewardedVideoStarted()V

    return-void
.end method

.method public final zzud()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgz;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsm;->onRewardedVideoCompleted()V

    return-void
.end method
