.class final Lcom/google/android/gms/internal/ads/t1;
.super Lcom/google/android/gms/internal/ads/n03;
.source ""


# instance fields
.field final synthetic c:Lcom/google/android/gms/internal/ads/u1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t1;->c:Lcom/google/android/gms/internal/ads/u1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/n03;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Lcom/google/android/gms/ads/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t1;->c:Lcom/google/android/gms/internal/ads/u1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u1;->a(Lcom/google/android/gms/internal/ads/u1;)Lcom/google/android/gms/ads/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t1;->c:Lcom/google/android/gms/internal/ads/u1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u1;->x()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/r;->b(Lcom/google/android/gms/internal/ads/m1;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/n03;->m(Lcom/google/android/gms/ads/j;)V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t1;->c:Lcom/google/android/gms/internal/ads/u1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u1;->a(Lcom/google/android/gms/internal/ads/u1;)Lcom/google/android/gms/ads/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t1;->c:Lcom/google/android/gms/internal/ads/u1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u1;->x()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/r;->b(Lcom/google/android/gms/internal/ads/m1;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/n03;->p()V

    return-void
.end method
