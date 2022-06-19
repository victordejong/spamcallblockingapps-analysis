.class final Lcom/google/android/gms/internal/ads/abx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Lcom/google/android/gms/internal/ads/abt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abx;->d:Lcom/google/android/gms/internal/ads/abt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abx;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abx;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/abx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "precacheComplete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string/jumbo v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abx;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string/jumbo v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abx;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string/jumbo v1, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/ads/abx;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abx;->d:Lcom/google/android/gms/internal/ads/abt;

    const-string/jumbo v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/abt;->a(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    return-void
.end method
