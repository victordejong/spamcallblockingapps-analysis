.class public final Lcom/google/android/gms/internal/ads/abq;
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


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 9
    :cond_0
    :goto_0
    return p3

    .line 8
    :catch_0
    move-exception v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Could not parse "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in a video GMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/zq;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    const-string/jumbo v0, "minBufferMs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    const-string/jumbo v1, "maxBufferMs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    const-string/jumbo v2, "bufferForPlaybackMs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    const-string/jumbo v3, "bufferForPlaybackAfterRebufferMs"

    .line 14
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    const-string/jumbo v4, "socketReceiveBufferSize"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    if-eqz v0, :cond_0

    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 18
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zq;->b(I)V

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 21
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zq;->c(I)V

    .line 22
    :cond_1
    if-eqz v2, :cond_2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 24
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zq;->d(I)V

    .line 25
    :cond_2
    if-eqz v3, :cond_3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zq;->e(I)V

    .line 28
    :cond_3
    if-eqz v4, :cond_4

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zq;->f(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_4
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 34
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/aad;

    .line 38
    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 39
    if-nez v1, :cond_1

    .line 40
    const-string/jumbo v0, "Action missing from video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 44
    const-string/jumbo v2, "google.afma.Notify_dt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Video GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 46
    :cond_2
    const-string/jumbo v0, "background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    const-string/jumbo v0, "color"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    const-string/jumbo v0, "Color parameter missing from color video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 52
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/aad;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Invalid color parameter in video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string/jumbo v0, "decoderProps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    const-string/jumbo v0, "mimeTypes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-nez v0, :cond_5

    .line 60
    const-string/jumbo v0, "No MIME types specified for decoder properties inspection."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "missingMimeTypes"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zq;->a(Lcom/google/android/gms/internal/ads/aad;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v8, v2, :cond_6

    aget-object v3, v0, v8

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/xp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 67
    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zq;->a(Lcom/google/android/gms/internal/ads/aad;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 69
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->c()Lcom/google/android/gms/internal/ads/zw;

    move-result-object v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    const-string/jumbo v0, "Could not get underlay container for a video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_8
    const-string/jumbo v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 74
    const-string/jumbo v2, "position"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 75
    if-nez v7, :cond_9

    if-eqz v2, :cond_b

    .line 76
    :cond_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 77
    const-string/jumbo v1, "x"

    invoke-static {v3, p2, v1, v8}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    .line 78
    const-string/jumbo v2, "y"

    invoke-static {v3, p2, v2, v8}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    .line 79
    const-string/jumbo v4, "w"

    .line 80
    invoke-static {v3, p2, v4, v9}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 81
    const-string/jumbo v5, "h"

    .line 82
    invoke-static {v3, p2, v5, v9}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    .line 83
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->l()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 84
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->k()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 85
    :try_start_1
    const-string/jumbo v5, "player"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 89
    :goto_2
    const-string/jumbo v6, "spherical"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 90
    if-eqz v7, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zw;->a()Lcom/google/android/gms/internal/ads/zq;

    move-result-object v7

    if-nez v7, :cond_a

    .line 91
    new-instance v7, Lcom/google/android/gms/internal/ads/aae;

    const-string/jumbo v8, "flags"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/aae;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zw;->a(IIIIIZLcom/google/android/gms/internal/ads/aae;)V

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zw;->a()Lcom/google/android/gms/internal/ads/zq;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/abq;->a(Lcom/google/android/gms/internal/ads/zq;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 88
    :catch_1
    move-exception v5

    move v5, v8

    goto :goto_2

    .line 97
    :cond_a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zw;->a(IIII)V

    goto/16 :goto_0

    .line 99
    :cond_b
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_f

    .line 101
    const-string/jumbo v3, "timeupdate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 102
    const-string/jumbo v0, "currentTime"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    if-nez v0, :cond_c

    .line 104
    const-string/jumbo v0, "currentTime parameter missing from timeupdate video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_c
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 107
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/adn;->a(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 110
    :catch_2
    move-exception v1

    const-string/jumbo v1, "Could not parse currentTime parameter from timeupdate video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 112
    :cond_e
    const-string/jumbo v3, "skip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/adn;->l()V

    goto/16 :goto_0

    .line 115
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zw;->a()Lcom/google/android/gms/internal/ads/zq;

    move-result-object v9

    .line 116
    if-nez v9, :cond_10

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zq;->a(Lcom/google/android/gms/internal/ads/aad;)V

    goto/16 :goto_0

    .line 119
    :cond_10
    const-string/jumbo v0, "click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "x"

    invoke-static {v0, p2, v1, v8}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    .line 122
    const-string/jumbo v1, "y"

    invoke-static {v0, p2, v1, v8}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 124
    int-to-float v5, v2

    int-to-float v6, v3

    move-wide v2, v0

    move v4, v8

    move v7, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 125
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zq;->a(Landroid/view/MotionEvent;)V

    .line 126
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 127
    :cond_11
    const-string/jumbo v0, "currentTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    const-string/jumbo v0, "time"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    if-nez v0, :cond_12

    .line 130
    const-string/jumbo v0, "Time parameter missing from currentTime video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_12
    :try_start_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 133
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 134
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zq;->a(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 137
    :catch_3
    move-exception v1

    const-string/jumbo v1, "Could not parse time parameter from currentTime video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 138
    :cond_14
    const-string/jumbo v0, "hide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 139
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zq;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    :cond_15
    const-string/jumbo v0, "load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 141
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zq;->h()V

    goto/16 :goto_0

    .line 142
    :cond_16
    const-string/jumbo v0, "loadControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 143
    invoke-static {v9, p2}, Lcom/google/android/gms/internal/ads/abq;->a(Lcom/google/android/gms/internal/ads/zq;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 144
    :cond_17
    const-string/jumbo v0, "muted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 145
    const-string/jumbo v0, "muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 146
    if-eqz v0, :cond_18

    .line 147
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zq;->k()V

    goto/16 :goto_0

    .line 148
    :cond_18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zq;->l()V

    goto/16 :goto_0

    .line 149
    :cond_19
    const-string/jumbo v0, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 150
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zq;->i()V

    goto/16 :goto_0

    .line 151
    :cond_1a
    const-string/jumbo v0, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 152
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zq;->j()V

    goto/16 :goto_0

    .line 153
    :cond_1b
    const-string/jumbo v0, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 154
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zq;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    :cond_1c
    const-string/jumbo v0, "src"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 156
    const-string/jumbo v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v8

    .line 158
    const-string/jumbo v1, "demuxed"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    if-eqz v1, :cond_26

    .line 160
    :try_start_4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move v3, v8

    .line 162
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1d

    .line 163
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1d
    move-object v1, v2

    .line 169
    :goto_6
    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/internal/ads/zq;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :catch_4
    move-exception v2

    const-string/jumbo v2, "Malformed demuxed URL list for playback: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 168
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v8

    goto :goto_6

    .line 167
    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 170
    :cond_1f
    const-string/jumbo v0, "touchMove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 171
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "dx"

    invoke-static {v0, p2, v1, v8}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    .line 173
    const-string/jumbo v2, "dy"

    invoke-static {v0, p2, v2, v8}, Lcom/google/android/gms/internal/ads/abq;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 174
    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v9, v1, v0}, Lcom/google/android/gms/internal/ads/zq;->a(FF)V

    .line 175
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abq;->a:Z

    if-nez v0, :cond_0

    .line 176
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->h()V

    .line 177
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/abq;->a:Z

    goto/16 :goto_0

    .line 178
    :cond_20
    const-string/jumbo v0, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 179
    const-string/jumbo v0, "volume"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    if-nez v0, :cond_21

    .line 181
    const-string/jumbo v0, "Level parameter missing from volume video GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_21
    :try_start_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 184
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zq;->setVolume(F)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 187
    :catch_5
    move-exception v1

    const-string/jumbo v1, "Could not parse volume parameter from volume video GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 188
    :cond_23
    const-string/jumbo v0, "watermark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 189
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zq;->m()V

    goto/16 :goto_0

    .line 190
    :cond_24
    const-string/jumbo v2, "Unknown video action: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_26
    move-object v1, v2

    goto/16 :goto_6
.end method
