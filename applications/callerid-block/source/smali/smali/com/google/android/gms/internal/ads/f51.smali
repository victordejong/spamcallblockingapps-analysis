.class final Lcom/google/android/gms/internal/ads/f51;
.super Lcom/google/android/gms/internal/ads/b20;
.source ""


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/h51;Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/s30;Lcom/google/android/gms/internal/ads/bl1;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/b20;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/s30;Lcom/google/android/gms/internal/ads/bl1;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/d90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/f90;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/d90;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/d90;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/d90;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
