.class public final Lcom/google/android/gms/internal/ads/fj3;
.super Lcom/google/android/gms/internal/ads/wi3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/wi3<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/ej3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/wi3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/fj3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/fj3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/wi3;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/wi3;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/gj3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/gj3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/gj3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wi3;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gj3;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/ej3;)V

    return-object v0
.end method
