.class public final Lcom/google/android/gms/internal/ads/apt;
.super Lcom/google/android/gms/internal/ads/ate;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ate",
        "<",
        "Lcom/google/android/gms/internal/ads/apv;",
        ">;",
        "Lcom/google/android/gms/internal/ads/apv;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/apv;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ate;-><init>(Ljava/util/Set;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/apr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/apr;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/atg;)V

    .line 4
    return-void
.end method
