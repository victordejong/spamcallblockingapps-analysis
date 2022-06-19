.class final Lcom/google/android/gms/internal/ads/bxv;
.super Lcom/google/android/gms/internal/ads/alx;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxq;Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/alx;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/ata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/atb;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/ata;"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/ata;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/ata;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
