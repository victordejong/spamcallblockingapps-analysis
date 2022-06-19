.class public final Lcom/google/android/gms/internal/ads/vn;
.super Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/uq;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/vl;

.field private e:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private f:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

.field private g:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vn;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->c:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    .line 6
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ejj;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/vl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->d:Lcom/google/android/gms/internal/ads/vl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/emr;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V
    .locals 2

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vn;->c:Landroid/content/Context;

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/vo;-><init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;Lcom/google/android/gms/internal/ads/vn;)V

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/uq;->b(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->a()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 34
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->f:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->g:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->e()Lcom/google/android/gms/internal/ads/emj;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 47
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/emj;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->d()Lcom/google/android/gms/internal/ads/ul;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Lcom/google/android/gms/internal/ads/ve;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ve;-><init>(Lcom/google/android/gms/internal/ads/ul;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/rewarded/RewardItem;->DEFAULT_REWARD:Lcom/google/android/gms/ads/rewarded/RewardItem;

    return-object v0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->d:Lcom/google/android/gms/internal/ads/vl;

    .line 1002
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/vl;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uq;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 67
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 2

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->f:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    new-instance v1, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/emc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 29
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn;->g:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    new-instance v1, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/emd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 60
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaww;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/zzaww;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->d:Lcom/google/android/gms/internal/ads/vl;

    .line 1004
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/vl;->b:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    .line 50
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn;->d:Lcom/google/android/gms/internal/ads/vl;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/ur;)V

    .line 51
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vn;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 54
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
