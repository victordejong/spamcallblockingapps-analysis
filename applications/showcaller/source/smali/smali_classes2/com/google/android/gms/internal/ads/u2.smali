.class public abstract Lcom/google/android/gms/internal/ads/u2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n6;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/o7;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/o7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/o7;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->z()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->m()I

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->n()Z

    .line 6
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/p7;->c(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final b()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->z()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->m()I

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->n()Z

    .line 6
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/p7;->b(IIZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final c()Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->z()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->z()Lcom/google/android/gms/internal/ads/p7;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p7;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/n6;->w()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u2;->a:Lcom/google/android/gms/internal/ads/o7;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/o7;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
