.class final Lcom/google/android/gms/ads/internal/util/y;
.super Lcom/google/android/gms/internal/ads/cu;
.source ""


# instance fields
.field final synthetic p:[B

.field final synthetic q:Ljava/util/Map;

.field final synthetic r:Lcom/google/android/gms/internal/ads/oo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/d0;ILjava/lang/String;Lcom/google/android/gms/internal/ads/w5;Lcom/google/android/gms/internal/ads/x4;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/oo;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/util/y;->p:[B

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/util/y;->q:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/util/y;->r:Lcom/google/android/gms/internal/ads/oo;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/cu;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/w5;Lcom/google/android/gms/internal/ads/x4;)V

    return-void
.end method


# virtual methods
.method protected final E(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/y;->r:Lcom/google/android/gms/internal/ads/oo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/oo;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cu;->E(Ljava/lang/String;)V

    return-void
.end method

.method public final r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/y;->q:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final s()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/y;->p:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cu;->E(Ljava/lang/String;)V

    return-void
.end method
