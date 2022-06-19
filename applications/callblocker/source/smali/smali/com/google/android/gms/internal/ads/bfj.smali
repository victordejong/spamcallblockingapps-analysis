.class public final Lcom/google/android/gms/internal/ads/bfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private c:Z

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bfj;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfj;->b:Ljava/util/concurrent/Executor;

    .line 4
    return-void
.end method

.method private final declared-synchronized e()V
    .locals 7

    .prologue
    .line 10
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bfj;->c:Z

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->h()Lcom/google/android/gms/internal/ads/uh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uh;->f()Lorg/json/JSONObject;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v1, "ad_unit_patterns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bfj;->d:Lorg/json/JSONObject;

    .line 18
    const-string/jumbo v1, "ad_unit_id_settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 22
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    const-string/jumbo v3, "ad_unit_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    const-string/jumbo v4, "format"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    const-string/jumbo v5, "request_signals"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 27
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfj;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfj;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 32
    :goto_1
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 30
    :cond_3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bfj;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bfi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bfi;-><init>(Lcom/google/android/gms/internal/ads/bfj;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfj;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/bfl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bfl;-><init>(Lcom/google/android/gms/internal/ads/bfj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method final synthetic b()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bfj;->e()V

    return-void
.end method

.method final synthetic c()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfj;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/bfk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bfk;-><init>(Lcom/google/android/gms/internal/ads/bfj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic d()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bfj;->e()V

    return-void
.end method
