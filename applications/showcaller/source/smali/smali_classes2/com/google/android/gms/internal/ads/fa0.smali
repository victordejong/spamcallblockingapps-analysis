.class final Lcom/google/android/gms/internal/ads/fa0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/zzbye;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbye;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fa0;->d:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a3()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a6(I)V
    .locals 1

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fa0;->d:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbye;->b(Lcom/google/android/gms/internal/ads/zzbye;)Lcom/google/android/gms/ads/mediation/n;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa0;->d:Lcom/google/android/gms/internal/ads/zzbye;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/n;->p(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const-string v0, "Delay close AdMobCustomTabsAdapter overlay."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final m2()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final y4()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa0;->d:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbye;->b(Lcom/google/android/gms/internal/ads/zzbye;)Lcom/google/android/gms/ads/mediation/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa0;->d:Lcom/google/android/gms/internal/ads/zzbye;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/n;->s(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
