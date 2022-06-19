.class public Lm2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/a$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lm2/e;


# direct methods
.method public constructor <init>(Lm2/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm2/d;->b:Lm2/e;

    iput-object p2, p0, Lm2/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm2/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    const-string v1, "Missing or invalid Zone ID."

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lm2/d;->b:Lm2/e;

    .line 5
    iget-object v1, v1, Lm2/e;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Lcom/jirbo/adcolony/a;

    move-result-object v0

    iget-object v1, p0, Lm2/d;->b:Lm2/e;

    .line 8
    iget-object v1, v1, Lm2/e;->c:Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 9
    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a;->c(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Ld2/g;

    move-result-object v0

    .line 10
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object v1

    invoke-static {v1}, Ld2/b;->m(Ld2/r;)Z

    .line 11
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object v1

    iget-object v2, p0, Lm2/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lm2/d;->b:Lm2/e;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    sget-object v3, Lm2/c;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lm2/d;->a:Ljava/lang/String;

    .line 16
    invoke-static {}, Lm2/c;->M()Lm2/c;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ld2/b;->l(Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm2/d;->b:Lm2/e;

    .line 3
    iget-object v0, v0, Lm2/e;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method
