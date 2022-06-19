.class final Lcom/google/android/gms/internal/ads/qu;
.super Lcom/google/android/gms/internal/ads/xr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic c:Lcom/google/android/gms/internal/ads/ru;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ru;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qu;->c:Lcom/google/android/gms/internal/ads/ru;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xr;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qu;->c:Lcom/google/android/gms/internal/ads/ru;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ru;->c(Lcom/google/android/gms/internal/ads/ru;)Lcom/google/android/gms/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qu;->c:Lcom/google/android/gms/internal/ads/ru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ru;->x()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/s;->b(Lcom/google/android/gms/internal/ads/ju;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/xr;->n(Lcom/google/android/gms/ads/j;)V

    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qu;->c:Lcom/google/android/gms/internal/ads/ru;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ru;->c(Lcom/google/android/gms/internal/ads/ru;)Lcom/google/android/gms/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qu;->c:Lcom/google/android/gms/internal/ads/ru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ru;->x()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/s;->b(Lcom/google/android/gms/internal/ads/ju;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/xr;->q()V

    return-void
.end method
