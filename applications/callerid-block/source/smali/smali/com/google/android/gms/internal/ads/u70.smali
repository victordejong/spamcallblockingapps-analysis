.class public final Lcom/google/android/gms/internal/ads/u70;
.super Lcom/google/android/gms/internal/ads/tc0;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v70;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/tc0<",
        "Lcom/google/android/gms/internal/ads/v70;",
        ">;",
        "Lcom/google/android/gms/internal/ads/v70;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/v70;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tc0;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final f0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/t70;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/t70;-><init>(Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V

    return-void
.end method
