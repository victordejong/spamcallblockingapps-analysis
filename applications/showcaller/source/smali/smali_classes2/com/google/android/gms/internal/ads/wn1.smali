.class public final Lcom/google/android/gms/internal/ads/wn1;
.super Lcom/google/android/gms/internal/ads/yn1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final g:Lcom/google/android/gms/internal/ads/ro2;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ii0;Lcom/google/android/gms/internal/ads/ro2;Lcom/google/android/gms/internal/ads/to2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/yn1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ii0;Lcom/google/android/gms/internal/ads/to2;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wn1;->g:Lcom/google/android/gms/internal/ads/ro2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yn1;->b:Ljava/util/Map;

    .line 2
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/ro2;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yn1;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
