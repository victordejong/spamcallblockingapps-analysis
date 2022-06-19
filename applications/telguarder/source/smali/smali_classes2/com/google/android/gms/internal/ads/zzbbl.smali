.class public final Lcom/google/android/gms/internal/ads/zzbbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public final zzelf:Z

.field public final zzelg:I

.field public final zzelh:I

.field public final zzeli:I

.field private final zzelj:Ljava/lang/String;

.field public final zzelk:I

.field public final zzell:I

.field public final zzelm:I

.field public final zzeln:I

.field public final zzelo:Z

.field public final zzelp:I


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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcnk:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "aggressive_media_codec_release"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelf:Z

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcms:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "byte_buffer_precache_limit"

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelg:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmz:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "exo_cache_buffer_size"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelh:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmo:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "exo_connect_timeout_millis"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeli:I

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmn:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "exo_player_version"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelj:Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmp:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "exo_read_timeout_millis"

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelk:I

    .line 17
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmq:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "load_check_interval_bytes"

    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzell:I

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmr:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "player_precache_limit"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelm:I

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmt:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "socket_receive_buffer_size"

    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeln:I

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcug:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "use_cache_data_source"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelo:Z

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcmv:Lcom/google/android/gms/internal/ads/zzaba;

    const-string v1, "min_retry_count"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelp:I

    return-void
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaba<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 29
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

.method private static zzb(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaba<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 38
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzc(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaba<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 45
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
