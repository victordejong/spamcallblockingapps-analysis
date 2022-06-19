.class final Lcom/google/android/gms/internal/ads/brt;
.super Lcom/google/android/gms/internal/ads/ako;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bro;Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/cgq;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/google/android/gms/internal/ads/ako;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/cgq;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/arb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/arg;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/arb;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/arb;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/arb;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
