.class final Lcom/google/android/gms/internal/ads/tg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/q;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/zzasz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tg;->b:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final K5()V
    .locals 0

    return-void
.end method

.method public final M1()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final T4()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h0()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->b:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasz;->a(Lcom/google/android/gms/internal/ads/zzasz;)Lcom/google/android/gms/ads/mediation/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->b:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->s(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final r1(I)V
    .locals 1

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tg;->b:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasz;->a(Lcom/google/android/gms/internal/ads/zzasz;)Lcom/google/android/gms/ads/mediation/n;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->b:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/n;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
