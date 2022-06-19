.class final Lcom/google/ads/mediation/h;
.super Lcom/google/android/gms/ads/x/b;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field final b:Lcom/google/android/gms/ads/mediation/n;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/x/b;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/h;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/h;->b:Lcom/google/android/gms/ads/mediation/n;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/h;->b:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/h;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/n;->m(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/x/a;

    iget-object v0, p0, Lcom/google/ads/mediation/h;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p1, v0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/x/a;

    new-instance v1, Lcom/google/ads/mediation/i;

    iget-object v2, p0, Lcom/google/ads/mediation/h;->b:Lcom/google/android/gms/ads/mediation/n;

    .line 2
    invoke-direct {v1, v0, v2}, Lcom/google/ads/mediation/i;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/n;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/x/a;->b(Lcom/google/android/gms/ads/i;)V

    iget-object p1, p0, Lcom/google/ads/mediation/h;->b:Lcom/google/android/gms/ads/mediation/n;

    iget-object v0, p0, Lcom/google/ads/mediation/h;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/n;->n(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
