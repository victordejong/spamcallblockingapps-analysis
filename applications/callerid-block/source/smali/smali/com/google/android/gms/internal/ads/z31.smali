.class public final Lcom/google/android/gms/internal/ads/z31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/xz0<",
        "Lcom/google/android/gms/internal/ads/im1;",
        "Lcom/google/android/gms/internal/ads/t11;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/im1;",
            "Lcom/google/android/gms/internal/ads/t11;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/fp0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fp0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z31;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z31;->b:Lcom/google/android/gms/internal/ads/fp0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/yz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/im1;",
            "Lcom/google/android/gms/internal/ads/t11;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z31;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yz0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z31;->b:Lcom/google/android/gms/internal/ads/fp0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/fp0;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/im1;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/yz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/t11;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/t11;-><init>()V

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/yz0;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/b90;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z31;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
