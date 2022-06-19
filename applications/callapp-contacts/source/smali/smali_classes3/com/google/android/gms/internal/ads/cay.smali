.class final synthetic Lcom/google/android/gms/internal/ads/cay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/caw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/caw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cay;->a:Lcom/google/android/gms/internal/ads/caw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cay;->a:Lcom/google/android/gms/internal/ads/caw;

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 1208
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/caw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/caz;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/caz;-><init>(Lcom/google/android/gms/internal/ads/caw;Ljava/util/List;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 2020
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
