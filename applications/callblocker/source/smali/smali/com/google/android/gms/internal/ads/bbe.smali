.class public final Lcom/google/android/gms/internal/ads/bbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bay;

.field private final c:Lcom/google/android/gms/internal/ads/ctl;

.field private final d:Lcom/google/android/gms/internal/ads/yd;

.field private final e:Lcom/google/android/gms/ads/internal/a;

.field private final f:Lcom/google/android/gms/internal/ads/dwi;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/bl;

.field private final i:Lcom/google/android/gms/internal/ads/bbv;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bay;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/bbv;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbe;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbe;->b:Lcom/google/android/gms/internal/ads/bay;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bbe;->c:Lcom/google/android/gms/internal/ads/ctl;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bbe;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bbe;->e:Lcom/google/android/gms/ads/internal/a;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bbe;->f:Lcom/google/android/gms/internal/ads/dwi;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/concurrent/Executor;

    .line 9
    iget-object v0, p8, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Lcom/google/android/gms/internal/ads/bl;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bbe;->i:Lcom/google/android/gms/internal/ads/bbv;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bbe;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    const-class v0, Ljava/lang/Exception;

    new-instance v1, Lcom/google/android/gms/internal/ads/bbk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bbk;-><init>(Ljava/lang/Object;)V

    .line 126
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 127
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 48
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 49
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 51
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v3

    .line 54
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/bbh;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/concurrent/Executor;

    .line 58
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/crt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    const-string/jumbo v0, "scale"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 65
    const-string/jumbo v0, "is_transparent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    const-string/jumbo v1, "width"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 67
    const-string/jumbo v1, "height"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 68
    if-eqz p2, :cond_2

    .line 69
    new-instance v1, Lcom/google/android/gms/internal/ads/bh;

    const/4 v2, 0x0

    .line 70
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bh;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 71
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->b:Lcom/google/android/gms/internal/ads/bay;

    .line 73
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/bay;->a(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/bbg;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bbg;-><init>(Ljava/lang/String;DII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/concurrent/Executor;

    .line 74
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "require"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/bbe;->a(ZLcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(ZLcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TT;>;TT;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p0, :cond_0

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/ads/bbn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/bbn;-><init>(Lcom/google/android/gms/internal/ads/crt;)V

    .line 130
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 131
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bbe;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/ebu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const-string/jumbo v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-string/jumbo v1, "reasons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 18
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 22
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bbe;->d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 26
    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ebu;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    const-string/jumbo v1, "mute"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const-string/jumbo v2, "default_reason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bbe;->d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ebu;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const-string/jumbo v1, "reason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string/jumbo v2, "ping_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/ebu;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ebu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "r"

    .line 93
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "g"

    .line 94
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "b"

    .line 95
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/bg;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 142
    .line 143
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 157
    :goto_0
    return-object v0

    .line 145
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string/jumbo v0, "bg_color"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bbe;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    const-string/jumbo v0, "text_color"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bbe;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 148
    const-string/jumbo v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 149
    const-string/jumbo v0, "allow_pub_rendering"

    .line 150
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 151
    const-string/jumbo v0, "animation_ms"

    const/16 v6, 0x3e8

    .line 152
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 153
    const-string/jumbo v0, "presentation_ms"

    const/16 v7, 0xfa0

    .line 154
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 155
    new-instance v0, Lcom/google/android/gms/internal/ads/bg;

    .line 156
    if-lez v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    add-int/2addr v6, v7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Lcom/google/android/gms/internal/ads/bl;

    iget v7, v2, Lcom/google/android/gms/internal/ads/bl;->e:I

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/bg;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    goto :goto_0
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 133
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->d()Lcom/google/android/gms/internal/ads/adb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbe;->a:Landroid/content/Context;

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->a()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    const-string/jumbo v2, "native-omid"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bbe;->c:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bbe;->d:Lcom/google/android/gms/internal/ads/yd;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/bbe;->e:Lcom/google/android/gms/ads/internal/a;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/bbe;->f:Lcom/google/android/gms/internal/ads/dwi;

    move v4, v3

    move-object v8, v7

    move-object v11, v7

    move v12, v3

    .line 135
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/adb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    .line 138
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bbm;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/bbm;-><init>(Lcom/google/android/gms/internal/ads/yp;)V

    .line 139
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 140
    const-string/jumbo v2, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/act;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/bl;->b:Z

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONObject;Z)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/bh;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/bl;->b:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbe;->h:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/bl;->d:Z

    .line 46
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "html_containers"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "instream"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    if-nez v0, :cond_2

    .line 102
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    .line 104
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string/jumbo v1, "vast_xml"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string/jumbo v0, "Required field \'vast_xml\' is missing"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 108
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->i:Lcom/google/android/gms/internal/ads/bbv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bbv;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 110
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bv:Lcom/google/android/gms/internal/ads/ect;

    .line 112
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bbe;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 114
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 115
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/bbe;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbe;->i:Lcom/google/android/gms/internal/ads/bbv;

    const-string/jumbo v2, "base_url"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "html"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bbv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/google/android/gms/internal/ads/bbl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/bbl;-><init>(Lcom/google/android/gms/internal/ads/crt;)V

    .line 122
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 123
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bg;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string/jumbo v0, "images"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 80
    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 81
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 82
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 86
    new-instance v2, Lcom/google/android/gms/internal/ads/bbj;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/bbj;-><init>(Lcom/google/android/gms/internal/ads/bbe;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bbe;->g:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 88
    const-string/jumbo v2, "require"

    .line 89
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 90
    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/ads/bbe;->a(ZLcom/google/android/gms/internal/ads/crt;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method
