.class public final Lcom/google/android/gms/internal/ads/aua;
.super Lcom/google/android/gms/internal/ads/awl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/auf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/awl<",
        "Lcom/google/android/gms/internal/ads/auf;",
        ">;",
        "Lcom/google/android/gms/internal/ads/auf;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/auf;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/awl;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/auc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/auc;-><init>(Lcom/google/android/gms/internal/ads/cpk;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/aud;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aud;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V

    return-void
.end method
