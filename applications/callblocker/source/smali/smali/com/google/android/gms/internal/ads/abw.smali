.class final Lcom/google/android/gms/internal/ads/abw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Z

.field private final synthetic f:Lcom/google/android/gms/internal/ads/abt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/abt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abw;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/abw;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/abw;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abw;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string/jumbo v0, "event"

    const-string/jumbo v2, "precacheProgress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string/jumbo v0, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abw;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string/jumbo v0, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abw;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string/jumbo v0, "bytesLoaded"

    iget v2, p0, Lcom/google/android/gms/internal/ads/abw;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string/jumbo v0, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/ads/abw;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string/jumbo v2, "cacheReady"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abw;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/abt;

    const-string/jumbo v2, "onPrecacheEvent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/abt;->a(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
