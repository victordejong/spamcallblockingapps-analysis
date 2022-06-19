.class public final Lcom/google/android/gms/internal/ads/blh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/ads/bli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bli;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blh;->b:Lcom/google/android/gms/internal/ads/bli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/blh;)Lcom/google/android/gms/internal/ads/blh;
    .locals 2

    .line 2004
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/blh;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 2007
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bli;->c:Ljava/util/Map;

    .line 2004
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/blh;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cov;->v:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/blh;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blh;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 1008
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bli;->b:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/blk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/blk;-><init>(Lcom/google/android/gms/internal/ads/blh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blh;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 1009
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bli;->a:Lcom/google/android/gms/internal/ads/bln;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/blq;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
