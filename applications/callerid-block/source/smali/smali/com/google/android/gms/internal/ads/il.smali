.class public final Lcom/google/android/gms/internal/ads/il;
.super Lcom/google/android/gms/internal/ads/tk;
.source ""


# instance fields
.field private b:Lcom/google/android/gms/ads/i;

.field private c:Lcom/google/android/gms/ads/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tk;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6(Lcom/google/android/gms/ads/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/il;->c:Lcom/google/android/gms/ads/n;

    return-void
.end method

.method public final B0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzym;->a()Lcom/google/android/gms/ads/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/i;->b(Lcom/google/android/gms/ads/a;)V

    :cond_0
    return-void
.end method

.method public final N0(I)V
    .locals 0

    return-void
.end method

.method public final Z2(Lcom/google/android/gms/internal/ads/ok;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->c:Lcom/google/android/gms/ads/n;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bl;-><init>(Lcom/google/android/gms/internal/ads/ok;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/n;->a(Lcom/google/android/gms/ads/z/a;)V

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->d()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->a()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->c()V

    :cond_0
    return-void
.end method

.method public final z6(Lcom/google/android/gms/ads/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/ads/i;

    return-void
.end method
