.class public final Lcom/google/android/gms/internal/ads/aae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:I

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 7
    :goto_1
    const-string/jumbo v0, "aggressive_media_codec_release"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->y:Lcom/google/android/gms/internal/ads/ect;

    .line 8
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aae;->a:Z

    .line 9
    const-string/jumbo v0, "byte_buffer_precache_limit"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->h:Lcom/google/android/gms/internal/ads/ect;

    .line 10
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->b:I

    .line 11
    const-string/jumbo v0, "exo_cache_buffer_size"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->n:Lcom/google/android/gms/internal/ads/ect;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->c:I

    .line 12
    const-string/jumbo v0, "exo_connect_timeout_millis"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->d:Lcom/google/android/gms/internal/ads/ect;

    .line 13
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->d:I

    .line 14
    const-string/jumbo v0, "exo_player_version"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->c:Lcom/google/android/gms/internal/ads/ect;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aae;->k:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "exo_read_timeout_millis"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->e:Lcom/google/android/gms/internal/ads/ect;

    .line 16
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->e:I

    .line 17
    const-string/jumbo v0, "load_check_interval_bytes"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->f:Lcom/google/android/gms/internal/ads/ect;

    .line 18
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->f:I

    .line 19
    const-string/jumbo v0, "player_precache_limit"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->g:Lcom/google/android/gms/internal/ads/ect;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->g:I

    .line 20
    const-string/jumbo v0, "socket_receive_buffer_size"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->i:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->h:I

    .line 22
    const-string/jumbo v0, "use_cache_data_source"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->bN:Lcom/google/android/gms/internal/ads/ect;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aae;->i:Z

    .line 23
    const-string/jumbo v0, "min_retry_count"

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->k:Lcom/google/android/gms/internal/ads/ect;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/aae;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aae;->j:I

    .line 24
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ect",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aae;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 32
    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ect",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 39
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ect",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 45
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
