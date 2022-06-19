.class public final Lcom/google/android/gms/internal/ads/z03;
.super Lcom/google/android/gms/internal/ads/cz2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cz2<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cz2;-><init>()V

    return-void
.end method

.method public static E()Lcom/google/android/gms/internal/ads/z03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/z03<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/z03;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/z03;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final u(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/fz2;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final v(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/fz2;->v(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
