.class public final Lcom/google/android/gms/internal/ads/aay;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field public final k:Z

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 7
    :catch_0
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->A:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "aggressive_media_codec_release"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aay;->a:Z

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->g:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "byte_buffer_precache_limit"

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->b:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->p:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "exo_cache_buffer_size"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->c:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->c:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "exo_connect_timeout_millis"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->d:I

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->b:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "exo_player_version"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aay;->l:Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->d:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "exo_read_timeout_millis"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->e:I

    .line 17
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->e:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "load_check_interval_bytes"

    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->f:I

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->f:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "player_precache_limit"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->g:I

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->h:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "socket_receive_buffer_size"

    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->h:I

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->cn:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "use_cache_data_source"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aay;->i:Z

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->j:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "min_retry_count"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aay;->j:I

    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->m:Lcom/google/android/gms/internal/ads/af;

    const-string v1, "treat_load_exception_as_non_fatal"

    .line 25
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aay;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aay;->k:Z

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/af<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aay;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/af<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 40
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/af;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/af<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 47
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
