.class public final Lcom/google/android/gms/internal/ads/s51;
.super Lcom/google/android/gms/internal/ads/m81;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u51;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/m81<",
        "Lcom/google/android/gms/internal/ads/u51;",
        ">;",
        "Lcom/google/android/gms/internal/ads/u51;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/u51;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/m81;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final S(Lcom/google/android/gms/internal/ads/rj2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/r51;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/r51;-><init>(Lcom/google/android/gms/internal/ads/rj2;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/q51;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/q51;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method
