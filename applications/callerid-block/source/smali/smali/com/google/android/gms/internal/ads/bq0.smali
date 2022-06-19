.class final synthetic Lcom/google/android/gms/internal/ads/bq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ml1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ml1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bq0;->a:Lcom/google/android/gms/internal/ads/ml1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ex2;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bq0;->a:Lcom/google/android/gms/internal/ads/ml1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ex2;->w()Lcom/google/android/gms/internal/ads/ew2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oc2;->x()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dw2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ex2;->w()Lcom/google/android/gms/internal/ads/ew2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ew2;->E()Lcom/google/android/gms/internal/ads/vw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oc2;->x()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/uw2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dl1;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/uw2;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uw2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dw2;->r(Lcom/google/android/gms/internal/ads/uw2;)Lcom/google/android/gms/internal/ads/dw2;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ex2;->y(Lcom/google/android/gms/internal/ads/dw2;)Lcom/google/android/gms/internal/ads/ex2;

    return-void
.end method
