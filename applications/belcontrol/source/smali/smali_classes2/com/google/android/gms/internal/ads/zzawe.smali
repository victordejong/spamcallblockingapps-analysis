.class public final Lcom/google/android/gms/internal/ads/zzawe;
.super Lcom/google/android/gms/internal/ads/zzavx;
.source ""


# instance fields
.field private final zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private final zzdzr:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzr:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method


# virtual methods
.method public final onRewardedAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdLoaded()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzr:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvg;->zzqc()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method
