.class final Lcom/google/ads/mediation/j;
.super Lcom/google/android/gms/ads/b;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/formats/e$a;
.implements Lcom/google/android/gms/ads/formats/d$b;
.implements Lcom/google/android/gms/ads/formats/d$a;


# instance fields
.field final d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field final e:Lcom/google/android/gms/ads/mediation/p;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/formats/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    new-instance v2, Lcom/google/ads/mediation/f;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/f;-><init>(Lcom/google/android/gms/ads/formats/e;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/p;->q(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/v;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/formats/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/p;->k(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/d;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/ads/formats/d;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/ads/mediation/p;->l(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/d;Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/p;->g(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/p;->c(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/p;->r(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/p;->b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method

.method public final z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/j;->e:Lcom/google/android/gms/ads/mediation/p;

    iget-object v1, p0, Lcom/google/ads/mediation/j;->d:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/p;->i(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    return-void
.end method
