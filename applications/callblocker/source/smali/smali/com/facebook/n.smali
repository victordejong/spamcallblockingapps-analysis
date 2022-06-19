.class public Lcom/facebook/n;
.super Ljava/lang/Object;
.source "GraphResponse.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/net/HttpURLConnection;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lorg/json/JSONArray;

.field private final e:Lcom/facebook/i;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/facebook/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/n;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/i;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/i;)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/i;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/i;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/n;->g:Lcom/facebook/k;

    .line 104
    iput-object p2, p0, Lcom/facebook/n;->b:Ljava/net/HttpURLConnection;

    .line 105
    iput-object p3, p0, Lcom/facebook/n;->f:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/facebook/n;->c:Lorg/json/JSONObject;

    .line 107
    iput-object p5, p0, Lcom/facebook/n;->d:Lorg/json/JSONArray;

    .line 108
    iput-object p6, p0, Lcom/facebook/n;->e:Lcom/facebook/i;

    .line 109
    return-void
.end method

.method private static a(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/n;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 412
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 413
    check-cast p2, Lorg/json/JSONObject;

    .line 416
    invoke-static {p2, p3, p1}, Lcom/facebook/i;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/i;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_2

    .line 421
    sget-object v0, Lcom/facebook/n;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/facebook/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v2}, Lcom/facebook/i;->b()I

    move-result v0

    const/16 v3, 0xbe

    if-ne v0, v3, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/facebook/k;->f()Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Lcom/facebook/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v2}, Lcom/facebook/i;->c()I

    move-result v0

    const/16 v3, 0x1ed

    if-eq v0, v3, :cond_1

    .line 425
    invoke-static {v1}, Lcom/facebook/a;->a(Lcom/facebook/a;)V

    .line 430
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/n;

    invoke-direct {v0, p0, p1, v2}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V

    .line 448
    :goto_1
    return-object v0

    .line 426
    :cond_1
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Lcom/facebook/a;->c()V

    goto :goto_0

    .line 433
    :cond_2
    const-string/jumbo v0, "body"

    const-string/jumbo v2, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p2, v0, v2}, Lcom/facebook/internal/x;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 439
    new-instance v1, Lcom/facebook/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_1

    .line 440
    :cond_3
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    .line 441
    new-instance v1, Lcom/facebook/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lorg/json/JSONArray;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    move-object v0, v1

    goto :goto_1

    .line 444
    :cond_4
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 447
    :cond_5
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v0, :cond_6

    .line 448
    new-instance v2, Lcom/facebook/n;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v0, v2

    goto :goto_1

    .line 450
    :cond_6
    new-instance v0, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got unexpected object type in response, class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {p0}, Lcom/facebook/internal/x;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 301
    sget-object v1, Lcom/facebook/q;->c:Lcom/facebook/q;

    const-string/jumbo v2, "Response"

    const-string/jumbo v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 301
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {v0, p1, p2}, Lcom/facebook/n;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 316
    invoke-static {p1, p2, v0}, Lcom/facebook/n;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/facebook/q;->a:Lcom/facebook/q;

    const-string/jumbo v2, "Response"

    const-string/jumbo v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 324
    invoke-virtual {p2}, Lcom/facebook/m;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 320
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    return-object v0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-static {}, Lcom/facebook/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string/jumbo v0, "GraphRequest can\'t be used when Facebook SDK isn\'t fully initialized"

    .line 260
    sget-object v2, Lcom/facebook/n;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    :try_start_1
    sget-object v2, Lcom/facebook/q;->a:Lcom/facebook/q;

    const-string/jumbo v3, "Response"

    const-string/jumbo v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-static {p1, p0, v0}, Lcom/facebook/n;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 290
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/io/Closeable;)V

    .line 288
    :goto_0
    return-object v0

    .line 264
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_1

    .line 265
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 270
    :goto_1
    invoke-static {v1, p0, p1}, Lcom/facebook/n;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;
    :try_end_2
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 290
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 267
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Lcom/facebook/FacebookException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 278
    :catch_1
    move-exception v0

    .line 283
    :try_start_4
    sget-object v2, Lcom/facebook/q;->a:Lcom/facebook/q;

    const-string/jumbo v3, "Response"

    const-string/jumbo v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/n;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 290
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/io/Closeable;)V

    .line 291
    throw v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/k;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 337
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    .line 341
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 347
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 348
    const-string/jumbo v1, "body"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 350
    :goto_0
    const-string/jumbo v6, "code"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 353
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    :goto_1
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 373
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected number of results"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    const/16 v1, 0xc8

    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    new-instance v5, Lcom/facebook/n;

    new-instance v6, Lcom/facebook/i;

    invoke-direct {v6, p0, v1}, Lcom/facebook/i;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p2

    .line 369
    goto :goto_1

    .line 363
    :catch_1
    move-exception v1

    .line 364
    new-instance v5, Lcom/facebook/n;

    new-instance v6, Lcom/facebook/i;

    invoke-direct {v6, p0, v1}, Lcom/facebook/i;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, p2

    goto :goto_1

    .line 376
    :cond_3
    check-cast v1, Lorg/json/JSONArray;

    .line 378
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 379
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 381
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 383
    invoke-static {v0, p0, v3, p2}, Lcom/facebook/n;->a(Lcom/facebook/k;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/n;

    move-result-object v3

    .line 382
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3

    .line 378
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 388
    :catch_2
    move-exception v3

    .line 389
    new-instance v5, Lcom/facebook/n;

    new-instance v6, Lcom/facebook/i;

    invoke-direct {v6, p0, v3}, Lcom/facebook/i;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 394
    :catch_3
    move-exception v3

    .line 395
    new-instance v5, Lcom/facebook/n;

    new-instance v6, Lcom/facebook/i;

    invoke-direct {v6, p0, v3}, Lcom/facebook/i;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 403
    :cond_4
    return-object v4
.end method

.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/k;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 460
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 462
    new-instance v4, Lcom/facebook/n;

    .line 463
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    new-instance v5, Lcom/facebook/i;

    invoke-direct {v5, p1, p2}, Lcom/facebook/i;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p1, v5}, Lcom/facebook/n;-><init>(Lcom/facebook/k;Ljava/net/HttpURLConnection;Lcom/facebook/i;)V

    .line 466
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 468
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final a()Lcom/facebook/i;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/n;->e:Lcom/facebook/i;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/n;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 231
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/n;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/n;->b:Ljava/net/HttpURLConnection;

    .line 234
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 231
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{Response: "

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " responseCode: "

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", graphObject: "

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/n;->c:Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error: "

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/n;->e:Lcom/facebook/i;

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    return-object v0

    .line 234
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v0, "unknown"

    goto :goto_1
.end method
