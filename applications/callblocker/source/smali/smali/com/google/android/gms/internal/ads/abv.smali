.class final Lcom/google/android/gms/internal/ads/abv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:J

.field private final synthetic e:Z

.field private final synthetic f:I

.field private final synthetic g:I

.field private final synthetic h:Lcom/google/android/gms/internal/ads/abt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;JJZII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abv;->h:Lcom/google/android/gms/internal/ads/abt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abv;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abv;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/abv;->c:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/abv;->d:J

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/abv;->e:Z

    iput p9, p0, Lcom/google/android/gms/internal/ads/abv;->f:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/abv;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

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

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abv;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string/jumbo v0, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abv;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string/jumbo v0, "bufferedDuration"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abv;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string/jumbo v0, "totalDuration"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abv;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string/jumbo v2, "cacheReady"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abv;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string/jumbo v0, "playerCount"

    iget v2, p0, Lcom/google/android/gms/internal/ads/abv;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string/jumbo v0, "playerPreparedCount"

    iget v2, p0, Lcom/google/android/gms/internal/ads/abv;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abv;->h:Lcom/google/android/gms/internal/ads/abt;

    const-string/jumbo v2, "onPrecacheEvent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/abt;->a(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
