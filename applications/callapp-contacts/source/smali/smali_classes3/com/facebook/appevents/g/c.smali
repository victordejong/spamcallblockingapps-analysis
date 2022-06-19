.class public final Lcom/facebook/appevents/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/g/c$b;,
        Lcom/facebook/appevents/g/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/g/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/g/c;->a:Ljava/util/Map;

    const v0, 0xf731400

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/g/c;->b:Ljava/lang/Integer;

    const-string v0, "other"

    const-string v1, "fb_mobile_complete_registration"

    const-string v2, "fb_mobile_add_to_cart"

    const-string v3, "fb_mobile_purchase"

    const-string v4, "fb_mobile_initiated_checkout"

    .line 102
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/g/c;->c:Ljava/util/List;

    const-string v0, "none"

    const-string v1, "address"

    const-string v2, "health"

    .line 110
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/g/c;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/appevents/g/c$a;)Ljava/io/File;
    .locals 3

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 288
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/g/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/appevents/g/c$a;->toUseCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/g/c$b;

    if-nez p0, :cond_1

    return-object v2

    .line 293
    :cond_1
    iget-object p0, p0, Lcom/facebook/appevents/g/c$b;->f:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 117
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/g/c$1;

    invoke-direct {v1}, Lcom/facebook/appevents/g/c$1;-><init>()V

    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 151
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    .line 8161
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8163
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8165
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/g/c$b;->a(Lorg/json/JSONObject;)Lcom/facebook/appevents/g/c$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8169
    sget-object v3, Lcom/facebook/appevents/g/c;->a:Ljava/util/Map;

    iget-object v4, v2, Lcom/facebook/appevents/g/c$b;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 8174
    :try_start_3
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    .line 57
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(J)Z
    .locals 3

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/g/c;->b(J)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method static synthetic a(Lorg/json/JSONArray;)[F
    .locals 3

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/g/c;->b(Lorg/json/JSONArray;)[F

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a(Lcom/facebook/appevents/g/a;[F)[Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 4040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 5040
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 6036
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    .line 330
    new-array v5, v1, [Ljava/lang/String;

    .line 332
    array-length v6, p1

    if-eq v4, v6, :cond_1

    return-object v2

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    const-string v7, "other"

    .line 337
    aput-object v7, v5, v6

    const/4 v7, 0x0

    .line 338
    :goto_1
    array-length v8, p1

    if-ge v7, v8, :cond_3

    mul-int v8, v6, v4

    add-int/2addr v8, v7

    .line 339
    aget v8, p0, v8

    aget v9, p1, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 340
    sget-object v8, Lcom/facebook/appevents/g/c;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v5

    :catchall_0
    move-exception p0

    .line 344
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Lcom/facebook/appevents/g/c$a;[[F[Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 298
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/g/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/appevents/g/c$a;->toUseCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/g/c$b;

    if-eqz v1, :cond_6

    .line 299
    iget-object v3, v1, Lcom/facebook/appevents/g/c$b;->g:Lcom/facebook/appevents/g/b;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 304
    aget-object v4, p1, v3

    array-length v4, v4

    .line 305
    new-instance v5, Lcom/facebook/appevents/g/a;

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v8, v7, v3

    aput v4, v7, v8

    invoke-direct {v5, v7}, Lcom/facebook/appevents/g/a;-><init>([I)V

    const/4 v7, 0x0

    :goto_0
    if-gtz v7, :cond_2

    .line 307
    aget-object v9, p1, v3

    .line 3036
    iget-object v10, v5, Lcom/facebook/appevents/g/a;->a:[F

    mul-int/lit8 v11, v4, 0x0

    .line 307
    invoke-static {v9, v3, v10, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 310
    :cond_2
    iget-object p1, v1, Lcom/facebook/appevents/g/c$b;->g:Lcom/facebook/appevents/g/b;

    invoke-virtual {p0}, Lcom/facebook/appevents/g/c$a;->toKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, p2, v3}, Lcom/facebook/appevents/g/b;->a(Lcom/facebook/appevents/g/a;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/g/a;

    move-result-object p1

    .line 311
    iget-object p2, v1, Lcom/facebook/appevents/g/c$b;->e:[F

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 4036
    iget-object v1, p1, Lcom/facebook/appevents/g/a;->a:[F

    .line 312
    array-length v1, v1

    if-eqz v1, :cond_6

    array-length v1, p2

    if-nez v1, :cond_3

    goto :goto_1

    .line 316
    :cond_3
    sget-object v1, Lcom/facebook/appevents/g/c$4;->a:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/g/c$a;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v8, :cond_5

    if-eq p0, v6, :cond_4

    return-object v2

    .line 318
    :cond_4
    invoke-static {p1, p2}, Lcom/facebook/appevents/g/c;->a(Lcom/facebook/appevents/g/a;[F)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 320
    :cond_5
    invoke-static {p1, p2}, Lcom/facebook/appevents/g/c;->b(Lcom/facebook/appevents/g/a;[F)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    :goto_1
    return-object v2

    :catchall_0
    move-exception p0

    .line 322
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic b()Lorg/json/JSONObject;
    .locals 3

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/g/c;->d()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    const-string v0, "asset_uri"

    const-string v1, "thresholds"

    const-string v2, "version_id"

    const-class v3, Lcom/facebook/appevents/g/c;

    const-string v4, "rules_uri"

    const-string v5, "use_case"

    invoke-static {v3}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return-object v7

    .line 177
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v8, "data"

    .line 179
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v8, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 181
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 182
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 183
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 189
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_1
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-object v6

    .line 195
    :catch_0
    :try_start_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v3}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v7
.end method

.method private static b(J)Z
    .locals 5

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-nez v1, :cond_1

    return v2

    .line 157
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p0

    sget-object p0, Lcom/facebook/appevents/g/c;->b:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p0, p0

    cmp-long v0, v3, p0

    if-gez v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static b(Lorg/json/JSONArray;)[F
    .locals 5

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    .line 275
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v3, 0x0

    .line 276
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v3, v4, :cond_2

    .line 278
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 283
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static b(Lcom/facebook/appevents/g/a;[F)[Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 6040
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 7040
    iget-object v4, p0, Lcom/facebook/appevents/g/a;->b:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 8036
    iget-object p0, p0, Lcom/facebook/appevents/g/a;->a:[F

    .line 352
    new-array v5, v1, [Ljava/lang/String;

    .line 354
    array-length v6, p1

    if-eq v4, v6, :cond_1

    return-object v2

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    const-string v7, "none"

    .line 359
    aput-object v7, v5, v6

    const/4 v7, 0x0

    .line 360
    :goto_1
    array-length v8, p1

    if-ge v7, v8, :cond_3

    mul-int v8, v6, v4

    add-int/2addr v8, v7

    .line 361
    aget v8, p0, v8

    aget v9, p1, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 362
    sget-object v8, Lcom/facebook/appevents/g/c;->d:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v5

    :catchall_0
    move-exception p0

    .line 366
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic c()V
    .locals 11

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_6

    .line 8221
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8224
    sget-object v4, Lcom/facebook/appevents/g/c;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v7, v2

    const/4 v9, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8226
    sget-object v5, Lcom/facebook/appevents/g/c$a;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/g/c$a;

    invoke-virtual {v5}, Lcom/facebook/appevents/g/c$a;->toUseCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/g/c$b;

    .line 8228
    iget-object v7, v5, Lcom/facebook/appevents/g/c$b;->b:Ljava/lang/String;

    .line 8229
    iget v6, v5, Lcom/facebook/appevents/g/c$b;->d:I

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8230
    sget-object v6, Lcom/facebook/internal/l$b;->SuggestedEvents:Lcom/facebook/internal/l$b;

    invoke-static {v6}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/facebook/appevents/g/c;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8231
    new-instance v6, Lcom/facebook/appevents/g/c$2;

    invoke-direct {v6}, Lcom/facebook/appevents/g/c$2;-><init>()V

    .line 8393
    iput-object v6, v5, Lcom/facebook/appevents/g/c$b;->h:Ljava/lang/Runnable;

    .line 8231
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8241
    :cond_2
    sget-object v5, Lcom/facebook/appevents/g/c$a;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/g/c$a;

    invoke-virtual {v5}, Lcom/facebook/appevents/g/c$a;->toUseCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8242
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/g/c$b;

    .line 8243
    iget-object v3, v2, Lcom/facebook/appevents/g/c$b;->b:Ljava/lang/String;

    .line 8244
    iget v5, v2, Lcom/facebook/appevents/g/c$b;->d:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8245
    sget-object v6, Lcom/facebook/internal/l$b;->IntelligentIntegrity:Lcom/facebook/internal/l$b;

    invoke-static {v6}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8246
    new-instance v6, Lcom/facebook/appevents/g/c$3;

    invoke-direct {v6}, Lcom/facebook/appevents/g/c$3;-><init>()V

    .line 9393
    iput-object v6, v2, Lcom/facebook/appevents/g/c$b;->h:Ljava/lang/Runnable;

    .line 8246
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v7, v3

    move v9, v5

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    if-lez v9, :cond_5

    .line 8258
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 8259
    new-instance v2, Lcom/facebook/appevents/g/c$b;

    const-string v6, "MTML"

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/facebook/appevents/g/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V

    .line 9419
    iget-object v3, v2, Lcom/facebook/appevents/g/c$b;->a:Ljava/lang/String;

    iget v4, v2, Lcom/facebook/appevents/g/c$b;->d:I

    invoke-static {v3, v4}, Lcom/facebook/appevents/g/c$b;->a(Ljava/lang/String;I)V

    .line 9421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/facebook/appevents/g/c$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/facebook/appevents/g/c$b;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9422
    iget-object v2, v2, Lcom/facebook/appevents/g/c$b;->b:Ljava/lang/String;

    new-instance v4, Lcom/facebook/appevents/g/c$b$1;

    invoke-direct {v4, v1}, Lcom/facebook/appevents/g/c$b$1;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3, v4}, Lcom/facebook/appevents/g/c$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/f/e$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 8263
    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    return-void

    :catchall_1
    move-exception v1

    .line 57
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 8

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "use_case"

    const-string v3, "version_id"

    const-string v4, "asset_uri"

    const-string v5, "rules_uri"

    const-string v6, "thresholds"

    .line 201
    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fields"

    const-string v5, ","

    .line 207
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "%s/model_asset"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 210
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v1}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1731
    iput-boolean v4, v1, Lcom/facebook/GraphRequest;->h:Z

    .line 1749
    iput-object v3, v1, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    .line 1962
    invoke-static {v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 2121
    iget-object v1, v1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    return-object v2

    .line 217
    :cond_1
    invoke-static {v1}, Lcom/facebook/appevents/g/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static e()Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/g/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 266
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/ae;->d()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
