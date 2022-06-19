.class public final Lcom/google/android/gms/internal/ads/acc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/aad;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 7
    :goto_0
    return-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 6
    :catch_0
    move-exception v0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Precache invalid numeric parameter \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 7
    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/aad;

    .line 9
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 11
    const-string/jumbo v1, "google.afma.Notify_dt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Precache GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->y()Lcom/google/android/gms/internal/ads/abu;

    .line 14
    const-string/jumbo v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/abu;->a(Lcom/google/android/gms/internal/ads/aad;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    const-string/jumbo v0, "Precache abort but no precache task running."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 18
    :cond_2
    const-string/jumbo v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    if-eqz v0, :cond_b

    .line 20
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v5

    .line 21
    const-string/jumbo v1, "demuxed"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    if-eqz v1, :cond_e

    .line 23
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move v4, v5

    .line 25
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 26
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 32
    :goto_2
    if-nez v1, :cond_d

    .line 33
    new-array v1, v8, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v2, v1

    .line 34
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/abu;->b(Lcom/google/android/gms/internal/ads/aad;)Lcom/google/android/gms/internal/ads/abs;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    const-string/jumbo v0, "Precache task is already running."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Malformed demuxed URL list for precache: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move-object v1, v3

    .line 31
    goto :goto_2

    .line 30
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->g()Lcom/google/android/gms/ads/internal/a;

    move-result-object v1

    if-nez v1, :cond_6

    .line 39
    const-string/jumbo v0, "Precache requires a dependency provider."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_6
    new-instance v4, Lcom/google/android/gms/internal/ads/aae;

    const-string/jumbo v1, "flags"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/aae;-><init>(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v1, "player"

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/acc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    if-nez v1, :cond_7

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->g()Lcom/google/android/gms/ads/internal/a;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/ads/acb;

    .line 48
    invoke-interface {v5, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/acb;->a(Lcom/google/android/gms/internal/ads/aad;ILjava/lang/String;Lcom/google/android/gms/internal/ads/aae;)Lcom/google/android/gms/internal/ads/abt;

    move-result-object v1

    .line 50
    new-instance v3, Lcom/google/android/gms/internal/ads/abs;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/abs;-><init>(Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/uq;->b()Lcom/google/android/gms/internal/ads/crt;

    move-object v0, v1

    .line 58
    :goto_5
    const-string/jumbo v1, "minBufferMs"

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/acc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abt;->c(I)V

    .line 61
    :cond_8
    const-string/jumbo v1, "maxBufferMs"

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/acc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_9

    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abt;->a(I)V

    .line 64
    :cond_9
    const-string/jumbo v1, "bufferForPlaybackMs"

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/acc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_a

    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abt;->d(I)V

    .line 67
    :cond_a
    const-string/jumbo v1, "bufferForPlaybackAfterRebufferMs"

    .line 68
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/acc;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abt;->e(I)V

    goto/16 :goto_0

    .line 53
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/abu;->b(Lcom/google/android/gms/internal/ads/aad;)Lcom/google/android/gms/internal/ads/abs;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_c

    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abs;->b:Lcom/google/android/gms/internal/ads/abt;

    goto :goto_5

    .line 56
    :cond_c
    const-string/jumbo v0, "Precache must specify a source."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object v2, v1

    goto/16 :goto_3

    :cond_e
    move-object v1, v2

    goto/16 :goto_2
.end method
