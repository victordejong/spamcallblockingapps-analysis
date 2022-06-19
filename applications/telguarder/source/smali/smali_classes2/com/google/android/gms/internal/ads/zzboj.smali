.class public final Lcom/google/android/gms/internal/ads/zzboj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzcio:Ljava/lang/String;

.field private final zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 5
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzcio:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzakw()Lcom/google/android/gms/internal/ads/zzdnl;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    return-object v0
.end method

.method public final zzakx()Lcom/google/android/gms/internal/ads/zzdmw;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    return-object v0
.end method

.method public final zzaky()Lcom/google/android/gms/internal/ads/zzdnb;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    return-object v0
.end method

.method public final zzakz()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzcio:Ljava/lang/String;

    return-object v0
.end method
