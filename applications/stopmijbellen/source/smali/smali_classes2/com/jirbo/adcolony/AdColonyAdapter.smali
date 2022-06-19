.class public Lcom/jirbo/adcolony/AdColonyAdapter;
.super Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;


# instance fields
.field public b:Ld2/q;

.field public c:Lj7/a;

.field public d:Ld2/j;

.field public e:Lj7/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Ld2/j;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Ld2/q;->c:Ld2/j0;

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 4
    instance-of v1, v1, Lcom/adcolony/sdk/AdColonyInterstitialActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 6
    iget-object v2, v0, Ld2/q;->c:Ld2/j0;

    .line 7
    iget-object v2, v2, Ld2/j0;->l:Ljava/lang/String;

    const-string v3, "id"

    .line 8
    invoke-static {v1, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    new-instance v2, Ld2/t0;

    iget-object v0, v0, Ld2/q;->c:Ld2/j0;

    .line 10
    iget v0, v0, Ld2/j0;->k:I

    const-string v3, "AdSession.on_request_close"

    .line 11
    invoke-direct {v2, v3, v0, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v2}, Ld2/t0;->b()V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->l()Ld2/k0;

    move-result-object v1

    .line 14
    iget-object v1, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    iget-object v0, v0, Ld2/q;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lj7/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 17
    iput-object v1, v0, Lj7/a;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 18
    iput-object v1, v0, Lj7/a;->a:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Ld2/j;

    if-eqz v0, :cond_6

    .line 20
    iget-boolean v2, v0, Ld2/j;->l:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    const-string v2, "Ignoring duplicate call to destroy()."

    .line 21
    invoke-static {v0, v3, v2, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_1

    .line 22
    :cond_4
    iput-boolean v3, v0, Ld2/j;->l:Z

    .line 23
    iget-object v2, v0, Ld2/j;->i:Ld2/t1;

    if-eqz v2, :cond_5

    .line 24
    iget-object v3, v2, Ld2/t1;->a:Landroid/support/v4/media/a;

    if-eqz v3, :cond_5

    .line 25
    invoke-virtual {v2}, Ld2/t1;->d()V

    .line 26
    :cond_5
    new-instance v2, Ld2/i;

    invoke-direct {v2, v0}, Ld2/i;-><init>(Ld2/j;)V

    invoke-static {v2}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 27
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lj7/b;

    if-eqz v0, :cond_7

    .line 28
    iput-object v1, v0, Lj7/b;->e:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 29
    iput-object v1, v0, Lj7/b;->d:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    :cond_7
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v4, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p1, p4, v0}, Lcom/google/android/gms/ads/MediationUtils;->findClosestSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/List;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget-object v0, Ld2/h;->d:Ld2/h;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v0, Ld2/h;->c:Ld2/h;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    sget-object v0, Ld2/h;->e:Ld2/h;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Ld2/h;->f:Ld2/h;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    const/16 p1, 0x68

    const-string p3, "Failed to request banner with unsupported size: "

    .line 15
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_4
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    .line 16
    :goto_1
    invoke-static {p1, p3}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 18
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 19
    :cond_5
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p4

    .line 20
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v1

    invoke-virtual {v1, p4, p6}, Lcom/jirbo/adcolony/a;->e(Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p4

    .line 21
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_6

    const/16 p1, 0x65

    const-string p3, "Failed to request ad: zone ID is null or empty"

    .line 22
    invoke-static {p1, p3}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 24
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 25
    :cond_6
    new-instance p6, Lj7/b;

    invoke-direct {p6, p0, p2}, Lj7/b;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    iput-object p6, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lj7/b;

    .line 26
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object p6

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$b;

    invoke-direct {v1, p0, v0, p4, p2}, Lcom/jirbo/adcolony/AdColonyAdapter$b;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;Ld2/h;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    invoke-virtual {p6, p1, p3, p5, v1}, Lcom/jirbo/adcolony/a;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Lcom/jirbo/adcolony/a$a;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0, p5}, Lcom/jirbo/adcolony/a;->e(Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p5

    .line 4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    const-string p3, "Missing or invalid Zone ID."

    .line 5
    invoke-static {p1, p3}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lj7/a;

    invoke-direct {v0, p0, p2}, Lj7/a;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lj7/a;

    .line 9
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v0

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$a;

    invoke-direct {v1, p0, p5, p2}, Lcom/jirbo/adcolony/AdColonyAdapter$a;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {v0, p1, p3, p4, v1}, Lcom/jirbo/adcolony/a;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Lcom/jirbo/adcolony/a$a;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Ld2/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld2/q;->d()Z

    :cond_0
    return-void
.end method
