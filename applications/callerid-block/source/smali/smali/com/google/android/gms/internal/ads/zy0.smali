.class final synthetic Lcom/google/android/gms/internal/ads/zy0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ky2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ky2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zy0;->a:Lcom/google/android/gms/internal/ads/ky2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ex2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy0;->a:Lcom/google/android/gms/internal/ads/ky2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ex2;->u()Lcom/google/android/gms/internal/ads/zw2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oc2;->x()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yw2;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/yw2;->r(Lcom/google/android/gms/internal/ads/ky2;)Lcom/google/android/gms/internal/ads/yw2;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ex2;->v(Lcom/google/android/gms/internal/ads/yw2;)Lcom/google/android/gms/internal/ads/ex2;

    return-void
.end method
