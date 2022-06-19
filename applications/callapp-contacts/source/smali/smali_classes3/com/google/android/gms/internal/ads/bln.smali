.class public final Lcom/google/android/gms/internal/ads/bln;
.super Lcom/google/android/gms/internal/ads/blq;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/cuh;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zc;Lcom/google/android/gms/internal/ads/cuh;Lcom/google/android/gms/internal/ads/cuj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/blq;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zc;Lcom/google/android/gms/internal/ads/cuj;)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bln;->c:Lcom/google/android/gms/internal/ads/cuh;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/blq;->b()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bln;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected final b()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bln;->c:Lcom/google/android/gms/internal/ads/cuh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bln;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cuh;->a(Ljava/util/Map;)V

    return-void
.end method
