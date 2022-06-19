.class public final Lcom/google/android/gms/internal/ads/pq;
.super Lcom/google/android/gms/internal/ads/es;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/es;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 0

    return-void
.end method

.method public final R(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcz;->l0()Lcom/google/android/gms/ads/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/b;->n(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->m()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->q()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->z0()V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->r()V

    :cond_0
    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pq;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->p()V

    :cond_0
    return-void
.end method
