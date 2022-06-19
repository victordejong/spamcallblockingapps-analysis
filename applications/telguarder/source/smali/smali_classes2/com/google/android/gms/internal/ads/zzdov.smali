.class public final Lcom/google/android/gms/internal/ads/zzdov;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private zzhmm:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhmn:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhmo:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhmp:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhmq:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhmr:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhms:Lcom/google/android/gms/internal/ads/zzdoy;

.field private zzhmt:Lcom/google/android/gms/internal/ads/zzdoy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmm:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmn:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmo:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmp:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmq:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmr:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhms:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmt:Lcom/google/android/gms/internal/ads/zzdoy;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmp:Lcom/google/android/gms/internal/ads/zzdoy;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->execute()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdoy;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdov;->zzhmp:Lcom/google/android/gms/internal/ads/zzdoy;

    return-void
.end method
