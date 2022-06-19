.class final Lcom/google/android/gms/internal/ads/bsg;
.super Lcom/google/android/gms/internal/ads/avv;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bse;Lcom/google/android/gms/internal/ads/awx;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/avv;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/axc;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/axc;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/app;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
