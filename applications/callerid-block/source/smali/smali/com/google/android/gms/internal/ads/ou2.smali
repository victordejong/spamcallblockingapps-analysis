.class public final Lcom/google/android/gms/internal/ads/ou2;
.super Lcom/google/android/gms/internal/ads/yu2;
.source ""


# instance fields
.field private b:Lcom/google/android/gms/ads/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yu2;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou2;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->d()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou2;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->c()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou2;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->a()V

    :cond_0
    return-void
.end method

.method public final t0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ou2;->b:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzym;->a()Lcom/google/android/gms/ads/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/i;->b(Lcom/google/android/gms/ads/a;)V

    :cond_0
    return-void
.end method

.method public final z6(Lcom/google/android/gms/ads/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ou2;->b:Lcom/google/android/gms/ads/i;

    return-void
.end method
