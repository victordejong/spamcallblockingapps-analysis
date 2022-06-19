.class public final Lcom/google/android/gms/internal/ads/zzapw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdon:Lcom/google/android/gms/internal/ads/zzank;

.field private final synthetic zzdot:Lcom/google/android/gms/internal/ads/zzapt;

.field private final synthetic zzdou:Lcom/google/android/gms/internal/ads/zzapj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapt;Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzank;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdot:Lcom/google/android/gms/internal/ads/zzapt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdou:Lcom/google/android/gms/internal/ads/zzapj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdon:Lcom/google/android/gms/internal/ads/zzank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdou:Lcom/google/android/gms/internal/ads/zzapj;

    const-string v1, "Adapter returned null."

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzdl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdot:Lcom/google/android/gms/internal/ads/zzapt;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzapt;->zza(Lcom/google/android/gms/internal/ads/zzapt;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdou:Lcom/google/android/gms/internal/ads/zzapj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzvn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdon:Lcom/google/android/gms/internal/ads/zzank;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapz;-><init>(Lcom/google/android/gms/internal/ads/zzank;)V

    return-object p1
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdou:Lcom/google/android/gms/internal/ads/zzapj;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdq()Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzg(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdou:Lcom/google/android/gms/internal/ads/zzapj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapj;->zzdl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapw;->zza(Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object p1

    return-object p1
.end method
