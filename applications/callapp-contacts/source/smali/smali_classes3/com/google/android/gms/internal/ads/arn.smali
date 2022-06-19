.class public final Lcom/google/android/gms/internal/ads/arn;
.super Lcom/google/android/gms/internal/ads/awl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/awl<",
        "Lcom/google/android/gms/internal/ads/arp;",
        ">;",
        "Lcom/google/android/gms/internal/ads/arp;"
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
            "Lcom/google/android/gms/internal/ads/arp;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/awl;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/arr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/arr;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V

    return-void
.end method
