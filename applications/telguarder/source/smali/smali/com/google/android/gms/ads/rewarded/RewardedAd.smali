.class public Lcom/google/android/gms/ads/rewarded/RewardedAd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private zzhsd:Lcom/google/android/gms/internal/ads/zzawb;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    const-string v0, "context cannot be null"

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitID cannot be null"

    .line 18
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdRequest cannot be null."

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 4
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 8
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdManagerAdRequest cannot be null."

    .line 10
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 11
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isLoaded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    :cond_0
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setImmersiveMode(Z)V

    :cond_0
    return-void
.end method

.method public setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    :cond_0
    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    :cond_0
    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V

    :cond_0
    return-void
.end method
