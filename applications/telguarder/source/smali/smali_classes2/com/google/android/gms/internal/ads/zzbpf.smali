.class public final Lcom/google/android/gms/internal/ads/zzbpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrm;
.implements Lcom/google/android/gms/internal/ads/zzbse;
.implements Lcom/google/android/gms/internal/ads/zzbtb;
.implements Lcom/google/android/gms/internal/ads/zzbua;
.implements Lcom/google/android/gms/internal/ads/zzvc;


# instance fields
.field private final zzbqg:Lcom/google/android/gms/common/util/Clock;

.field private final zzfxn:Lcom/google/android/gms/internal/ads/zzayn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzayn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayn;->zzxj()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayn;->zzxk()V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayn;->zzxi()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayn;->zzao(Z)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 2

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzbqg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzayn;->zzey(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzvl;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayn;->zze(Lcom/google/android/gms/internal/ads/zzvl;)V

    return-void
.end method

.method public final zzxl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzfxn:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayn;->zzxl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
