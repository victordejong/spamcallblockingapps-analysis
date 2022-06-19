.class public final Lcom/google/android/gms/internal/ads/qn1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/gms/internal/ads/rn1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rn1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qn1;->b:Lcom/google/android/gms/internal/ads/rn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/qn1;)Lcom/google/android/gms/internal/ads/qn1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn1;->b:Lcom/google/android/gms/internal/ads/rn1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/rn1;->c(Lcom/google/android/gms/internal/ads/rn1;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/qn1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/qn1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ej2;->w:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->b:Lcom/google/android/gms/internal/ads/rn1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rn1;->b(Lcom/google/android/gms/internal/ads/rn1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/pn1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/pn1;-><init>(Lcom/google/android/gms/internal/ads/qn1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->b:Lcom/google/android/gms/internal/ads/rn1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rn1;->a(Lcom/google/android/gms/internal/ads/rn1;)Lcom/google/android/gms/internal/ads/wn1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yn1;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn1;->b:Lcom/google/android/gms/internal/ads/rn1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rn1;->a(Lcom/google/android/gms/internal/ads/rn1;)Lcom/google/android/gms/internal/ads/wn1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qn1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yn1;->a(Ljava/util/Map;)V

    return-void
.end method
