.class public Lm2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAd;


# instance fields
.field public a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

.field public final b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

.field public d:Ld2/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm2/e;->c:Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 3
    iput-object p2, p0, Lm2/e;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-void
.end method


# virtual methods
.method public showAd(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lm2/e;->d:Ld2/q;

    if-nez p1, :cond_0

    const/16 p1, 0x69

    const-string v0, "No ad to show."

    .line 2
    invoke-static {p1, v0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 5
    :cond_0
    sget-object p1, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    sget-boolean p1, Ld2/t;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    .line 8
    iget-object p1, p1, Ld2/f1;->p:Ld2/r;

    .line 9
    :goto_0
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 10
    sget-object p1, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "AdColony\'s reward listener has been changed since load time. Setting the listener back to the Google AdColony adapter to be able to detect rewarded events."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object p1

    invoke-static {p1}, Ld2/b;->m(Ld2/r;)Z

    .line 12
    :cond_2
    iget-object p1, p0, Lm2/e;->d:Ld2/q;

    invoke-virtual {p1}, Ld2/q;->d()Z

    return-void
.end method
