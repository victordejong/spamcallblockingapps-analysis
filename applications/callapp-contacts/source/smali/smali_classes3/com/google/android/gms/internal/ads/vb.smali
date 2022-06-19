.class public final Lcom/google/android/gms/internal/ads/vb;
.super Lcom/google/android/gms/ads/rewarded/RewardedAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/uq;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/vl;

.field private final e:Lcom/google/android/gms/internal/ads/vd;

.field private f:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

.field private g:Lcom/google/android/gms/ads/OnPaidEventListener;

.field private h:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    .line 6
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ejj;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/vl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->d:Lcom/google/android/gms/internal/ads/vl;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/vd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->e:Lcom/google/android/gms/internal/ads/vd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/emr;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->c:Landroid/content/Context;

    .line 11
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/vh;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/vh;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 12
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 15
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

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

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->h:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 19
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->f:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->g:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->e()Lcom/google/android/gms/internal/ads/emj;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/emj;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 3

    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uq;->d()Lcom/google/android/gms/internal/ads/ul;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/ve;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ve;-><init>(Lcom/google/android/gms/internal/ads/ul;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 66
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->b()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 38
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    .line 82
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->h:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->d:Lcom/google/android/gms/internal/ads/vl;

    .line 4002
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/vl;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->e:Lcom/google/android/gms/internal/ads/vd;

    .line 5002
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/vd;->b:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uq;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 91
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 2

    .line 26
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->f:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    new-instance v1, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/emc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 30
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 74
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->g:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    new-instance v1, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/emd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 78
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaww;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/zzaww;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->d:Lcom/google/android/gms/internal/ads/vl;

    .line 3004
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/vl;->b:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 56
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 57
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->d:Lcom/google/android/gms/internal/ads/vl;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/ur;)V

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 61
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->e:Lcom/google/android/gms/internal/ads/vd;

    .line 1004
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/vd;->a:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 41
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->e:Lcom/google/android/gms/internal/ads/vd;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/ur;)V

    .line 42
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 45
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->e:Lcom/google/android/gms/internal/ads/vd;

    .line 2004
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/vd;->a:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    .line 48
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->e:Lcom/google/android/gms/internal/ads/vd;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/internal/ads/ur;)V

    .line 49
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vb;->b:Lcom/google/android/gms/internal/ads/uq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/uq;->a(Lcom/google/android/gms/dynamic/b;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 52
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
