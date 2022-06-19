.class final Lcom/google/android/gms/internal/ads/nc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzaol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaol;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 9
    const-string/jumbo v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaol;->a(Lcom/google/android/gms/internal/ads/zzaol;)Lcom/google/android/gms/ads/mediation/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/l;->b(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 11
    return-void
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final h_()V
    .locals 2

    .prologue
    .line 2
    const-string/jumbo v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaol;->a(Lcom/google/android/gms/internal/ads/zzaol;)Lcom/google/android/gms/ads/mediation/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/l;->c(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 4
    return-void
.end method
