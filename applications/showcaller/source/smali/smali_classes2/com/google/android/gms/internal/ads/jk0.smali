.class public final Lcom/google/android/gms/internal/ads/jk0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    .line 2
    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->D:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "aggressive_media_codec_release"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/jk0;->a:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->j:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "byte_buffer_precache_limit"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->b:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->r:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "exo_cache_buffer_size"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->c:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->f:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "exo_connect_timeout_millis"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->d:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->e:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "exo_player_version"

    if-eqz v0, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 8
    :catch_1
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jk0;->e:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->g:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "exo_read_timeout_millis"

    .line 11
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->f:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->h:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "load_check_interval_bytes"

    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->g:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->i:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "player_precache_limit"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->h:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->k:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "socket_receive_buffer_size"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->i:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->H2:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "use_cache_data_source"

    .line 15
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/jk0;->j:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->l:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "min_retry_count"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jk0;->k:I

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->o:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "treat_load_exception_as_non_fatal"

    .line 17
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/jk0;->l:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->m1:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "using_official_simple_exo_player"

    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/jk0;->m:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->n1:Lcom/google/android/gms/internal/ads/cw;

    const-string v1, "enable_multiple_video_playback"

    .line 19
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jk0;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/jk0;->n:Z

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cw<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p2
.end method

.method private static final b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cw;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cw<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
