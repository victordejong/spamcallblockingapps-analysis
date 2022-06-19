.class public final Lcom/google/android/gms/internal/ads/ri;
.super Lcom/google/android/gms/internal/ads/re;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/ads/reward/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/d;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/re;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/d;->a()V

    .line 6
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/d;->b_(I)V

    .line 24
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/d;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    .line 30
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    new-instance v1, Lcom/google/android/gms/internal/ads/rg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/rg;-><init>(Lcom/google/android/gms/internal/ads/qr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/d;->a(Lcom/google/android/gms/ads/reward/b;)V

    .line 18
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/d;->D_()V

    .line 9
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/d;->E_()V

    .line 12
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/d;->d()V

    .line 15
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/d;->F_()V

    .line 21
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ri;->a:Lcom/google/android/gms/ads/reward/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/d;->f()V

    .line 27
    :cond_0
    return-void
.end method
