.class public final Lcom/google/android/gms/internal/ads/acz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/abb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 11

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/abb;

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "google.afma.Notify_dt"

    .line 11
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

    const-string v1, "Precache GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lcom/google/android/gms/internal/ads/acr;

    const-string v0, "abort"

    .line 14
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acr;->a(Lcom/google/android/gms/internal/ads/abb;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Precache abort but no precache task running."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "src"

    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "periodicReportIntervalMs"

    .line 20
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exoPlayerRenderingIntervalMs"

    .line 22
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "exoPlayerIdleIntervalMs"

    .line 24
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v7, "demuxed"

    .line 27
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 29
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 31
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 32
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move-object v5, v8

    goto :goto_2

    :catch_0
    nop

    const-string v5, "Malformed demuxed URL list for precache: "

    .line 36
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v6

    .line 40
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acr;->b(Lcom/google/android/gms/internal/ads/abb;)Lcom/google/android/gms/internal/ads/acp;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string p1, "Precache task is already running."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/abb;->e()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v4

    if-nez v4, :cond_8

    const-string p1, "Precache requires a dependency provider."

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_8
    new-instance v4, Lcom/google/android/gms/internal/ads/aay;

    const-string v7, "flags"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/ads/aay;-><init>(Ljava/lang/String;)V

    const-string v7, "player"

    .line 48
    invoke-static {p2, v7}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_9

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_9
    if-eqz v1, :cond_a

    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/abb;->a(I)V

    :cond_a
    if-eqz v2, :cond_b

    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/abb;->b(I)V

    :cond_b
    if-eqz v3, :cond_c

    .line 56
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/abb;->c(I)V

    .line 57
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/abb;->e()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzb;->zzbou:Lcom/google/android/gms/internal/ads/adc;

    .line 60
    invoke-interface {v2, p1, v1, v4}, Lcom/google/android/gms/internal/ads/adc;->a(Lcom/google/android/gms/internal/ads/abb;ILcom/google/android/gms/internal/ads/aay;)Lcom/google/android/gms/internal/ads/acu;

    move-result-object v1

    .line 62
    new-instance v2, Lcom/google/android/gms/internal/ads/acp;

    invoke-direct {v2, p1, v1, v0, v5}, Lcom/google/android/gms/internal/ads/acp;-><init>(Lcom/google/android/gms/internal/ads/abb;Lcom/google/android/gms/internal/ads/acu;Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Lcom/google/android/gms/internal/ads/dbt;

    goto :goto_3

    .line 65
    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/acr;->b(Lcom/google/android/gms/internal/ads/abb;)Lcom/google/android/gms/internal/ads/acp;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 67
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/acp;->b:Lcom/google/android/gms/internal/ads/acu;

    :goto_3
    const-string p1, "minBufferMs"

    .line 70
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/acu;->b(I)V

    :cond_e
    const-string p1, "maxBufferMs"

    .line 73
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/acu;->a(I)V

    :cond_f
    const-string p1, "bufferForPlaybackMs"

    .line 76
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/acu;->d(I)V

    :cond_10
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    .line 80
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/acz;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/acu;->e(I)V

    :cond_11
    return-void

    :cond_12
    const-string p1, "Precache must specify a source."

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void
.end method
