.class final Lcom/google/ads/mediation/i;
.super Lcom/google/android/gms/ads/i;
.source ""


# instance fields
.field final a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field final b:Lcom/google/android/gms/ads/mediation/n;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/i;->b:Lcom/google/android/gms/ads/mediation/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/i;->b:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/i;->b:Lcom/google/android/gms/ads/mediation/n;

    iget-object v1, p0, Lcom/google/ads/mediation/i;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->s(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
