.class final Lcom/google/ads/mediation/g;
.super Lcom/google/android/gms/ads/b;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/admanager/b;
.implements Lcom/google/android/gms/internal/ads/kq;


# instance fields
.field final d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field final e:Lcom/google/android/gms/ads/mediation/i;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/ads/mediation/i;->j(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/i;->a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/i;->e(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/i;->h(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/i;->o(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/g;->e:Lcom/google/android/gms/ads/mediation/i;

    iget-object v1, p0, Lcom/google/ads/mediation/g;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/i;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method
