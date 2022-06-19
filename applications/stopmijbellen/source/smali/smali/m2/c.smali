.class public Lm2/c;
.super Landroid/support/v4/media/a;
.source "SourceFile"

# interfaces
.implements Ld2/r;


# static fields
.field public static a:Lm2/c;

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lm2/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm2/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static M()Lm2/c;
    .locals 1

    .line 1
    sget-object v0, Lm2/c;->a:Lm2/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lm2/c;

    invoke-direct {v0}, Lm2/c;-><init>()V

    sput-object v0, Lm2/c;->a:Lm2/c;

    .line 3
    :cond_0
    sget-object v0, Lm2/c;->a:Lm2/c;

    return-object v0
.end method


# virtual methods
.method public C(Ld2/q;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    return-void
.end method

.method public D(Ld2/q;)V
    .locals 0

    .line 1
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    return-void
.end method

.method public E(Ld2/q;)V
    .locals 1

    .line 1
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 5
    iget-object v0, p1, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoStart()V

    .line 6
    iget-object p1, p1, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    :cond_0
    return-void
.end method

.method public F(Ld2/q;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, v0, Lm2/e;->d:Ld2/q;

    .line 4
    iget-object p1, v0, Lm2/e;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    iput-object p1, v0, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    :cond_0
    return-void
.end method

.method public G(Ld2/s;)V
    .locals 4

    .line 1
    iget-object v0, p1, Ld2/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ld2/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createSdkError()Lcom/google/android/gms/ads/AdError;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, v0, Lm2/e;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 6
    iget-object v0, p1, Ld2/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ld2/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v0, Lm2/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final N(Ljava/lang/String;)Lm2/e;
    .locals 1

    .line 1
    sget-object v0, Lm2/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm2/e;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public w(Ld2/q;)V
    .locals 0

    .line 1
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    :cond_0
    return-void
.end method

.method public x(Ld2/q;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    .line 5
    :cond_0
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 6
    sget-object v0, Lm2/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public y(Ld2/q;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ld2/q;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lm2/e;->d:Ld2/q;

    .line 4
    iget-object p1, p1, Ld2/q;->i:Ljava/lang/String;

    .line 5
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object v0

    invoke-static {p1, v0}, Ld2/b;->k(Ljava/lang/String;Landroid/support/v4/media/a;)Z

    :cond_0
    return-void
.end method
