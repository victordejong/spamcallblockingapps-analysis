.class public Lcom/facebook/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "j"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lcom/facebook/FacebookRequestError;

.field public final c:Ljava/lang/String;

.field private final e:Ljava/net/HttpURLConnection;

.field private final f:Lorg/json/JSONArray;

.field private final g:Lcom/facebook/GraphRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/facebook/j;->g:Lcom/facebook/GraphRequest;

    .line 98
    iput-object p2, p0, Lcom/facebook/j;->e:Ljava/net/HttpURLConnection;

    .line 99
    iput-object p3, p0, Lcom/facebook/j;->c:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 101
    iput-object p5, p0, Lcom/facebook/j;->f:Lorg/json/JSONArray;

    .line 102
    iput-object p6, p0, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;

    return-void
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/i;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/i;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    const-string v0, "Response <Error>: %s"

    const-string v1, "Response"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 240
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x190

    if-lt v5, v6, :cond_0

    .line 247
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1273
    :goto_0
    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 1274
    sget-object v6, Lcom/facebook/m;->INCLUDE_RAW_RESPONSES:Lcom/facebook/m;

    const-string v7, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 1278
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    aput-object v5, v9, v3

    .line 1274
    invoke-static {v6, v1, v7, v9}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    .line 1290
    invoke-static {p0, p1, v6}, Lcom/facebook/j;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1291
    sget-object v7, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    const-string v9, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 2156
    iget-object v11, p1, Lcom/facebook/i;->d:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 1296
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v3

    aput-object v6, v10, v8

    .line 1291
    invoke-static {v7, v1, v9, v10}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    return-object v6

    :cond_1
    :try_start_1
    const-string v5, "GraphRequest can\'t be used when Facebook SDK isn\'t fully initialized"

    .line 242
    sget-object v6, Lcom/facebook/j;->d:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-direct {v6, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 262
    :try_start_2
    sget-object v6, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v6, v1, v0, v3}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v0}, Lcom/facebook/j;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_1
    move-exception v5

    .line 254
    :try_start_3
    sget-object v6, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v6, v1, v0, v3}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {p1, p0, v5}, Lcom/facebook/j;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    return-object p0

    :goto_1
    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    .line 266
    throw p0
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "body"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 310
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 316
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 317
    invoke-virtual {v5, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    goto :goto_0

    :cond_0
    const/16 v6, 0xc8

    :goto_0
    const-string v7, "code"

    .line 319
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 321
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 322
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 330
    new-instance v6, Lcom/facebook/j;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, v5}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v6, v4, p0, v7}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v5

    .line 327
    new-instance v6, Lcom/facebook/j;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, v5}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v6, v4, p0, v7}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v6, p2

    .line 335
    :goto_2
    instance-of v4, v6, Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    check-cast v6, Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v4, v0, :cond_a

    .line 341
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 342
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 344
    :try_start_1
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2361
    instance-of v5, v4, Lorg/json/JSONObject;

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 2362
    check-cast v4, Lorg/json/JSONObject;

    .line 2365
    invoke-static {v4, p2, p0}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2367
    sget-object v4, Lcom/facebook/j;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v4

    const/16 v8, 0xbe

    if-ne v4, v8, :cond_3

    .line 2759
    iget-object v4, v0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    .line 2369
    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Lcom/facebook/AccessToken;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2370
    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v4

    const/16 v8, 0x1ed

    if-eq v4, v8, :cond_2

    .line 2371
    invoke-static {v7}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    goto :goto_4

    .line 2372
    :cond_2
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2373
    invoke-static {}, Lcom/facebook/AccessToken;->expireCurrentAccessToken()V

    .line 2376
    :cond_3
    :goto_4
    new-instance v4, Lcom/facebook/j;

    invoke-direct {v4, v0, p0, v5}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    goto :goto_6

    :cond_4
    const-string v5, "FACEBOOK_NON_JSON_RESULT"

    .line 2380
    invoke-static {v4, v2, v5}, Lcom/facebook/internal/ae;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2382
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_5

    .line 2383
    new-instance v5, Lcom/facebook/j;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v5, v0, p0, v7, v4}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 2384
    :cond_5
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_6

    .line 2385
    new-instance v5, Lcom/facebook/j;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Lorg/json/JSONArray;

    invoke-direct {v5, v0, p0, v7, v4}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_5

    .line 2388
    :cond_6
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 2391
    :cond_7
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v4, v5, :cond_8

    .line 2392
    new-instance v5, Lcom/facebook/j;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, p0, v4, v7}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_5
    move-object v4, v5

    .line 345
    :goto_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2394
    :cond_8
    new-instance v5, Lcom/facebook/FacebookException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got unexpected object type in response, class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception v4

    .line 350
    new-instance v5, Lcom/facebook/j;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v7}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_3
    move-exception v4

    .line 347
    new-instance v5, Lcom/facebook/j;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v7}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_9
    return-object v1

    .line 336
    :cond_a
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unexpected number of results"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 404
    new-instance v3, Lcom/facebook/j;

    .line 406
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/facebook/j;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 407
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/facebook/FacebookRequestError;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 216
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/j;->e:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    .line 217
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0xc8

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    .line 222
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response:  responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", graphObject: "

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/j;->b:Lcom/facebook/FacebookRequestError;

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
