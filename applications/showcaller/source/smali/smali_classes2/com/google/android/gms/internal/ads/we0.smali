.class public final Lcom/google/android/gms/internal/ads/we0;
.super Lcom/google/android/gms/internal/ads/he0;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private d:Lcom/google/android/gms/ads/i;

.field private e:Lcom/google/android/gms/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/he0;-><init>()V

    return-void
.end method


# virtual methods
.method public final E6(Lcom/google/android/gms/ads/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/we0;->d:Lcom/google/android/gms/ads/i;

    return-void
.end method

.method public final F6(Lcom/google/android/gms/ads/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/we0;->e:Lcom/google/android/gms/ads/o;

    return-void
.end method

.method public final G3(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we0;->d:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcz;->k0()Lcom/google/android/gms/ads/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/i;->c(Lcom/google/android/gms/ads/a;)V

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we0;->d:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->e()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we0;->d:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->b()V

    :cond_0
    return-void
.end method

.method public final d0(I)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we0;->d:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->d()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we0;->d:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->a()V

    :cond_0
    return-void
.end method

.method public final y2(Lcom/google/android/gms/internal/ads/ce0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we0;->e:Lcom/google/android/gms/ads/o;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/qe0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/qe0;-><init>(Lcom/google/android/gms/internal/ads/ce0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/o;->a(Lcom/google/android/gms/ads/z/a;)V

    :cond_0
    return-void
.end method
