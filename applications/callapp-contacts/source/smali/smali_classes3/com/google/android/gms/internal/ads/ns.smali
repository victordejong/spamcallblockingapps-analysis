.class public final Lcom/google/android/gms/internal/ads/ns;
.super Lcom/google/android/gms/internal/ads/mw;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ns;->a:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/b;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ns;->a:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ns;->a:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;->shouldDelegateInterscrollerEffect()Z

    move-result v0

    return v0
.end method
