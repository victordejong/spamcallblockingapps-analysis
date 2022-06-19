.class public final Lcom/google/android/gms/internal/ads/acn;
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


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Could not parse "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in a video GMSG: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p3
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

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 12
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

    .line 14
    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Video gmsg invalid numeric parameter \'"

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

.method private static a(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbcb;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minBufferMs"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    .line 18
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 20
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "socketReceiveBufferSize"

    .line 21
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1100
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbbz;->b(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1102
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbbz;->c(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1104
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->d(I)V

    :cond_2
    if-eqz v3, :cond_3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1106
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->e(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1108
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbz;->f(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    .line 40
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 43
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/abb;

    const-string v3, "action"

    .line 44
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v0, "Action missing from video GMSG."

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    .line 48
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzd;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v6, "google.afma.Notify_dt"

    .line 50
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xd

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Video GMSG: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    :cond_1
    const-string v5, "background"

    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "color"

    .line 53
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Color parameter missing from color video GMSG."

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 58
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/abb;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Invalid color parameter in video GMSG."

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v5, "decoderProps"

    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    const-string v3, "mimeTypes"

    .line 64
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "No MIME types specified for decoder properties inspection."

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    const-string v0, "missingMimeTypes"

    .line 67
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Lcom/google/android/gms/internal/ads/abb;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, ","

    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v5, v0, v6

    .line 71
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzer(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    :cond_5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Lcom/google/android/gms/internal/ads/abb;Ljava/util/Map;)V

    return-void

    .line 75
    :cond_6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/aaq;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v0, "Could not get underlay container for a video GMSG."

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v7, "new"

    .line 79
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "position"

    .line 80
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v7, :cond_2a

    if-eqz v8, :cond_8

    goto/16 :goto_8

    .line 105
    :cond_8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v7

    if-eqz v7, :cond_c

    const-string v8, "timeupdate"

    .line 107
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v2, "currentTime"

    .line 108
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "currentTime parameter missing from timeupdate video GMSG."

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_9
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 113
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/aem;->a(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    nop

    const-string v2, "Could not parse currentTime parameter from timeupdate video GMSG: "

    .line 116
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v8, "skip"

    .line 118
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 5068
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v8

    .line 5069
    :try_start_2
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/aem;->f:Z

    .line 5070
    iget v2, v7, Lcom/google/android/gms/internal/ads/aem;->c:I

    .line 5071
    iput v4, v7, Lcom/google/android/gms/internal/ads/aem;->c:I

    .line 5072
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5073
    invoke-virtual {v7, v2, v4, v0, v0}, Lcom/google/android/gms/internal/ads/aem;->a(IIZZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 5072
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 121
    :cond_c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/aaq;->a()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v4

    if-nez v4, :cond_d

    .line 123
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbcb;->a(Lcom/google/android/gms/internal/ads/abb;)V

    return-void

    :cond_d
    const-string v5, "click"

    .line 125
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 126
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "x"

    .line 127
    invoke-static {v2, v0, v3, v6}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "y"

    .line 128
    invoke-static {v2, v0, v5, v6}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    int-to-float v10, v3

    int-to-float v11, v0

    const/4 v12, 0x0

    move-wide v5, v7

    .line 130
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 5110
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v2, :cond_e

    .line 5112
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbz;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_f
    const-string v5, "currentTime"

    .line 133
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v2, "time"

    .line 134
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Time parameter missing from currentTime video GMSG."

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_10
    :try_start_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 6078
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v3, :cond_11

    .line 6080
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbz;->a(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_11
    return-void

    :catch_2
    nop

    const-string v2, "Could not parse time parameter from currentTime video GMSG: "

    .line 143
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_13
    const-string v5, "hide"

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v0, 0x4

    .line 145
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbcb;->setVisibility(I)V

    return-void

    :cond_14
    const-string v5, "load"

    .line 146
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 147
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbcb;->h()V

    return-void

    :cond_15
    const-string v5, "loadControl"

    .line 148
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 149
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/acn;->a(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/util/Map;)V

    return-void

    :cond_16
    const-string v5, "muted"

    .line 150
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v2, "muted"

    .line 151
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 153
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbcb;->j()V

    return-void

    .line 154
    :cond_17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbcb;->k()V

    return-void

    :cond_18
    const-string v5, "pause"

    .line 155
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 156
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbcb;->i()V

    return-void

    :cond_19
    const-string v5, "play"

    .line 157
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 7074
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v0, :cond_1a

    .line 7076
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->c()V

    :cond_1a
    return-void

    :cond_1b
    const-string v5, "show"

    .line 159
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 160
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzbcb;->setVisibility(I)V

    return-void

    :cond_1c
    const-string v5, "src"

    .line 161
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_21

    const-string v3, "src"

    .line 162
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "periodicReportIntervalMs"

    .line 164
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/acn;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v6

    const-string v9, "demuxed"

    .line 166
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 168
    :try_start_5
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 170
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_1d

    .line 171
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1d
    move-object v8, v9

    goto :goto_5

    :catch_3
    nop

    const-string v8, "Malformed demuxed URL list for playback: "

    .line 175
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v6

    :cond_1f
    :goto_5
    if-eqz v5, :cond_20

    .line 178
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/abb;->a(I)V

    .line 8058
    :cond_20
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzbcb;->c:Ljava/lang/String;

    .line 8059
    iput-object v8, v4, Lcom/google/android/gms/internal/ads/zzbcb;->d:[Ljava/lang/String;

    return-void

    :cond_21
    const-string v5, "touchMove"

    .line 180
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 181
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "dx"

    .line 182
    invoke-static {v3, v0, v5, v6}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "dy"

    .line 183
    invoke-static {v3, v0, v8, v6}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    int-to-float v3, v5

    int-to-float v0, v0

    .line 8061
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    if-eqz v5, :cond_22

    .line 8062
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbcb;->b:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzbbz;->a(FF)V

    .line 185
    :cond_22
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/acn;->a:Z

    if-nez v0, :cond_23

    .line 186
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->f()V

    .line 187
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/acn;->a:Z

    :cond_23
    return-void

    :cond_24
    const-string v2, "volume"

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "volume"

    .line 189
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_25

    const-string v0, "Level parameter missing from volume video GMSG."

    .line 191
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_25
    :try_start_6
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 194
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->setVolume(F)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    return-void

    :catch_4
    nop

    const-string v2, "Could not parse volume parameter from volume video GMSG: "

    .line 197
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    :cond_27
    const-string v0, "watermark"

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbcb;->l()V

    return-void

    :cond_28
    const-string v0, "Unknown video action: "

    .line 200
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_29
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_2a
    :goto_8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "x"

    .line 83
    invoke-static {v3, v0, v4, v6}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    const-string v8, "y"

    .line 84
    invoke-static {v3, v0, v8, v6}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "w"

    const/4 v10, -0x1

    .line 86
    invoke-static {v3, v0, v9, v10}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v9

    const-string v11, "h"

    .line 88
    invoke-static {v3, v0, v11, v10}, Lcom/google/android/gms/internal/ads/acn;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 89
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->m()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 90
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/abb;->l()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :try_start_7
    const-string v3, "player"

    .line 91
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move v14, v3

    goto :goto_9

    :catch_5
    const/4 v14, 0x0

    :goto_9
    const-string v3, "spherical"

    .line 95
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v7, :cond_2d

    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/aaq;->a()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v3

    if-nez v3, :cond_2d

    .line 97
    new-instance v3, Lcom/google/android/gms/internal/ads/aay;

    const-string v7, "flags"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/aay;-><init>(Ljava/lang/String;)V

    .line 2014
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/aaq;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    if-nez v7, :cond_2b

    .line 2016
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/aaq;->b:Lcom/google/android/gms/internal/ads/abb;

    .line 2017
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/abb;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object v7

    .line 3018
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 2017
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/aaq;->b:Lcom/google/android/gms/internal/ads/abb;

    .line 2018
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/abb;->c()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v11

    const-string v12, "vpr2"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    .line 2019
    invoke-static {v7, v11, v12}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/bg;[Ljava/lang/String;)Z

    .line 2020
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbcb;

    iget-object v12, v5, Lcom/google/android/gms/internal/ads/aaq;->a:Landroid/content/Context;

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/aaq;->b:Lcom/google/android/gms/internal/ads/abb;

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/aaq;->b:Lcom/google/android/gms/internal/ads/abb;

    .line 2021
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/abb;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object v11

    .line 4018
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v17, v3

    .line 2021
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/abb;IZLcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/aay;)V

    iput-object v7, v5, Lcom/google/android/gms/internal/ads/aaq;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    .line 2022
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/aaq;->c:Landroid/view/ViewGroup;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/aaq;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2023
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/aaq;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v3, v4, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->a(IIII)V

    .line 2024
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/aaq;->b:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/ads/abb;->a(Z)V

    .line 99
    :cond_2b
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/aaq;->a()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 101
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/acn;->a(Lcom/google/android/gms/internal/ads/zzbcb;Ljava/util/Map;)V

    :cond_2c
    return-void

    :cond_2d
    const-string v0, "The underlay may only be modified from the UI thread."

    .line 5010
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 5011
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/aaq;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    if-eqz v0, :cond_2e

    .line 5012
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/aaq;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0, v4, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzbcb;->a(IIII)V

    :cond_2e
    return-void
.end method
