.class public final Lcom/google/android/gms/internal/ads/lz2;
.super Lcom/google/android/gms/internal/ads/i;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    return-void
.end method


# virtual methods
.method public final H(I)V
    .locals 0

    return-void
.end method

.method public final Y(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzym;->p()Lcom/google/android/gms/ads/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/b;->m(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->k()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->p()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->F()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->s()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz2;->b:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b;->n()V

    :cond_0
    return-void
.end method
