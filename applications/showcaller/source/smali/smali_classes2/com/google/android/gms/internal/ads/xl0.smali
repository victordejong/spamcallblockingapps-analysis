.class public final Lcom/google/android/gms/internal/ads/xl0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/kk0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 2
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

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not parse "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in a video GMSG: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    add-int/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Parse pixels for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", got string "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", int "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    :cond_1
    return p3
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzcip;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcip;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minBufferMs"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "socketReceiveBufferSize"

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcip;->E(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 9
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcip;->F(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcip;->G(I)V

    :cond_2
    if-eqz v3, :cond_3

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcip;->H(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcip;->j(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 13

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/kk0;

    const-string v0, "action"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Action missing from video GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ei0;->j(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "google.afma.Notify_dt"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "background"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "color"

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Color parameter missing from background video GMSG."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/kk0;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Invalid color parameter in background video GMSG."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "playerBackground"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Color parameter missing from playerBackground video GMSG."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    :try_start_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/kk0;->j0(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "Invalid color parameter in playerBackground video GMSG."

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v1, "decoderProps"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "onVideoEvent"

    const-string v4, "event"

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    const-string v0, "mimeTypes"

    .line 23
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_6

    const-string p2, "No MIME types specified for decoder properties inspection."

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    .line 25
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    const-string v1, "missingMimeTypes"

    .line 27
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {p1, v3, p2}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_6
    new-instance v2, Ljava/util/HashMap;

    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, ","

    .line 30
    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v6, p2

    :goto_0
    if-ge v5, v6, :cond_7

    aget-object v7, p2, v5

    .line 31
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/l1;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    new-instance p2, Ljava/util/HashMap;

    .line 32
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {p1, v3, p2}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 36
    :cond_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->d()Lcom/google/android/gms/internal/ads/yj0;

    move-result-object v1

    if-nez v1, :cond_9

    const-string p1, "Could not get underlay container for a video GMSG."

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v2, "new"

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "position"

    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "y"

    const-string v8, "x"

    if-nez v2, :cond_29

    if-eqz v6, :cond_a

    goto/16 :goto_a

    .line 40
    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object v2

    const-string v6, "currentTime"

    if-eqz v2, :cond_f

    const-string v9, "timeupdate"

    .line 41
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 42
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_b

    const-string p1, "currentTime parameter missing from timeupdate video GMSG."

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_b
    :try_start_2
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 45
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/ro0;->G6(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    nop

    const-string p2, "Could not parse currentTime parameter from timeupdate video GMSG: "

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 48
    :cond_c
    new-instance p1, Ljava/lang/String;

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v9, "skip"

    .line 50
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_2

    .line 51
    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ro0;->s()V

    return-void

    .line 52
    :cond_f
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yj0;->c()Lcom/google/android/gms/internal/ads/zzcip;

    move-result-object v1

    if-nez v1, :cond_10

    new-instance p2, Ljava/util/HashMap;

    .line 53
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "no_video_view"

    .line 54
    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {p1, v3, p2}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_10
    const-string v2, "click"

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 57
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    invoke-static {p1, p2, v8, v5}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 59
    invoke-static {p1, p2, v7, v5}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, p1

    const/4 v9, 0x0

    move-wide v2, v4

    .line 61
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcip;->k(Landroid/view/MotionEvent;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 64
    :cond_11
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string p1, "time"

    .line 65
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_12

    const-string p1, "Time parameter missing from currentTime video GMSG."

    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_12
    :try_start_3
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 68
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzcip;->A(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    nop

    const-string p2, "Could not parse time parameter from currentTime video GMSG: "

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 71
    :cond_13
    new-instance p1, Ljava/lang/String;

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v2, "hide"

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 p1, 0x4

    .line 74
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_15
    const-string v2, "load"

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->x()V

    return-void

    :cond_16
    const-string v2, "loadControl"

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 78
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/xl0;->c(Lcom/google/android/gms/internal/ads/zzcip;Ljava/util/Map;)V

    return-void

    :cond_17
    const-string v2, "muted"

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 80
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->B()V

    return-void

    .line 82
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->C()V

    return-void

    :cond_19
    const-string v2, "pause"

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->y()V

    return-void

    :cond_1a
    const-string v2, "play"

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->z()V

    return-void

    :cond_1b
    const-string v2, "show"

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 88
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1c
    const-string v2, "src"

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_22

    .line 90
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "periodicReportIntervalMs"

    .line 91
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1d

    goto :goto_4

    .line 92
    :cond_1d
    :try_start_4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 93
    :catch_4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video gmsg invalid numeric parameter \'periodicReportIntervalMs\': "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :goto_4
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    const-string v3, "demuxed"

    .line 94
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_20

    .line 95
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 97
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1e

    .line 98
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_1e
    move-object v2, v3

    goto :goto_7

    :catch_5
    nop

    const-string v2, "Malformed demuxed URL list for playback: "

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 101
    :cond_1f
    new-instance p2, Ljava/lang/String;

    .line 102
    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    :cond_20
    :goto_7
    if-eqz v6, :cond_21

    .line 103
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/kk0;->T0(I)V

    .line 104
    :cond_21
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcip;->v(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_22
    const-string v2, "touchMove"

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 106
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dx"

    .line 107
    invoke-static {v0, p2, v2, v5}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const-string v3, "dy"

    .line 108
    invoke-static {v0, p2, v3, v5}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    .line 109
    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzcip;->w(FF)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/xl0;->a:Z

    if-nez p2, :cond_30

    .line 110
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->i()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/xl0;->a:Z

    return-void

    :cond_23
    const-string p1, "volume"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 112
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_24

    const-string p1, "Level parameter missing from volume video GMSG."

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_24
    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 115
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzcip;->D(F)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    nop

    const-string p2, "Could not parse volume parameter from volume video GMSG: "

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_25

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 118
    :cond_25
    new-instance p1, Ljava/lang/String;

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_26
    const-string p1, "watermark"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcip;->l()V

    return-void

    :cond_27
    const-string p1, "Unknown video action: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_28

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_28
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_29
    :goto_a
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    invoke-static {v0, p2, v8, v5}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    .line 125
    invoke-static {v0, p2, v7, v5}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    const-string v3, "w"

    const/4 v4, -0x1

    .line 126
    invoke-static {v0, p2, v3, v4}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 127
    sget-object v8, Lcom/google/android/gms/internal/ads/kw;->p2:Lcom/google/android/gms/internal/ads/cw;

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v9

    .line 129
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v10, "."

    if-eqz v9, :cond_2b

    if-ne v3, v4, :cond_2a

    .line 130
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->q()I

    move-result v3

    goto :goto_b

    .line 131
    :cond_2a
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->q()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_b

    .line 132
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 133
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->q()I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x6e

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Calculate width with original width "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", videoHost.getVideoBoundingWidth() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", x "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 134
    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 135
    :cond_2c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->q()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_b
    const-string v9, "h"

    .line 136
    invoke-static {v0, p2, v9, v4}, Lcom/google/android/gms/internal/ads/xl0;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2e

    if-ne v0, v4, :cond_2d

    .line 139
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->v()I

    move-result p1

    goto :goto_c

    .line 140
    :cond_2d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->v()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_c

    .line 141
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 142
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->v()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x71

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Calculate height with original height "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", videoHost.getVideoBoundingHeight() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", y "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 144
    :cond_2f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kk0;->v()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_c
    move v9, p1

    :try_start_7
    const-string p1, "player"

    .line 145
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move v10, v5

    goto :goto_d

    :catch_7
    const/4 v10, 0x0

    :goto_d
    const-string p1, "spherical"

    .line 146
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v2, :cond_31

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yj0;->c()Lcom/google/android/gms/internal/ads/zzcip;

    move-result-object p1

    if-nez p1, :cond_31

    new-instance v12, Lcom/google/android/gms/internal/ads/jk0;

    const-string p1, "flags"

    .line 148
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v12, p1}, Lcom/google/android/gms/internal/ads/jk0;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    move v8, v3

    .line 149
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/yj0;->b(IIIIIZLcom/google/android/gms/internal/ads/jk0;)V

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yj0;->c()Lcom/google/android/gms/internal/ads/zzcip;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 151
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/xl0;->c(Lcom/google/android/gms/internal/ads/zzcip;Ljava/util/Map;)V

    :cond_30
    return-void

    .line 152
    :cond_31
    invoke-virtual {v1, v6, v7, v3, v9}, Lcom/google/android/gms/internal/ads/yj0;->a(IIII)V

    return-void
.end method
