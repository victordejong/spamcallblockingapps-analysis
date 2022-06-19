.class final Lcom/google/android/gms/internal/ads/x12;
.super Lcom/google/android/gms/internal/ads/ex0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/z12;Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/vy0;Lcom/google/android/gms/internal/ads/hj2;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/ex0;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/vy0;Lcom/google/android/gms/internal/ads/hj2;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/l41;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/n41;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/l41;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/l41;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/l41;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
