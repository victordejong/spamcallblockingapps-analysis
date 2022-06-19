.class public final Lcom/google/android/gms/internal/ads/zzawe;
.super Lcom/google/android/gms/internal/ads/zzavx;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private final zzdzr:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzr:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method


# virtual methods
.method public final onRewardedAdFailedToLoad(I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedAdLoaded()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdLoaded()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzr:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvg;->zzqc()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzdzq:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method
