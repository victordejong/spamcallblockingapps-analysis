.class public final Lcom/google/android/gms/internal/ads/bhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bhi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bhi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhh;->b:Lcom/google/android/gms/internal/ads/bhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Ljava/util/Map;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bhh;)Lcom/google/android/gms/internal/ads/bhh;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bhh;->c()Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lcom/google/android/gms/internal/ads/bhh;
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bhh;->b:Lcom/google/android/gms/internal/ads/bhi;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bhi;->a(Lcom/google/android/gms/internal/ads/bhi;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/bhh;
    .locals 3

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Ljava/util/Map;

    const-string/jumbo v1, "aai"

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cgr;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cgs;)Lcom/google/android/gms/internal/ads/bhh;
    .locals 3

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Ljava/util/Map;

    const-string/jumbo v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-object p0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->b:Lcom/google/android/gms/internal/ads/bhi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bhi;->b(Lcom/google/android/gms/internal/ads/bhi;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bhl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bhl;-><init>(Lcom/google/android/gms/internal/ads/bhh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method final synthetic b()V
    .locals 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhh;->b:Lcom/google/android/gms/internal/ads/bhi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bhi;->c(Lcom/google/android/gms/internal/ads/bhi;)Lcom/google/android/gms/internal/ads/bho;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bhh;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bho;->a(Ljava/util/Map;)V

    return-void
.end method
