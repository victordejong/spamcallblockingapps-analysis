.class public final Lcom/google/android/gms/internal/ads/zzawd;
.super Lcom/google/android/gms/internal/ads/zzavq;
.source ""


# instance fields
.field private zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdClosed()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    :cond_1
    return-void
.end method

.method public final onRewardedAdFailedToShow(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdOpened()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    :cond_1
    return-void
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzawa;-><init>(Lcom/google/android/gms/internal/ads/zzavl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_0
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvg;->zzqb()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzdzp:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_1
    return-void
.end method
