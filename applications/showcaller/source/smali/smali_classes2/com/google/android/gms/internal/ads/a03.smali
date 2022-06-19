.class public Lcom/google/android/gms/internal/ads/a03;
.super Lcom/google/android/gms/internal/ads/l03;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/l03<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l03;-><init>()V

    return-void
.end method

.method public static E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/a03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/a03;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/a03;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/b03;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/b03;-><init>(Lcom/google/android/gms/internal/ads/r03;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
