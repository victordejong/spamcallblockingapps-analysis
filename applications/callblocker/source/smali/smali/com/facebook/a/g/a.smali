.class final Lcom/facebook/a/g/a;
.super Ljava/lang/Object;
.source "FeatureExtractor.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lorg/json/JSONObject;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/a/g/a;->e:Z

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/facebook/a/g/a;->d:Lorg/json/JSONObject;

    .line 60
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 62
    new-array v1, v1, [B

    .line 63
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/a/g/a;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/g/a;->a:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/facebook/a/g/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "ENGLISH"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/facebook/a/g/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "GERMAN"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/facebook/a/g/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "SPANISH"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/facebook/a/g/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "JAPANESE"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    .line 79
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "VIEW_CONTENT"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "SEARCH"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "ADD_TO_CART"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "ADD_TO_WISHLIST"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "INITIATE_CHECKOUT"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "ADD_PAYMENT_INFO"

    const-string/jumbo v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "PURCHASE"

    const-string/jumbo v2, "6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "LEAD"

    const-string/jumbo v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "COMPLETE_REGISTRATION"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/g/a;->c:Ljava/util/Map;

    .line 90
    sget-object v0, Lcom/facebook/a/g/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "BUTTON_TEXT"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/facebook/a/g/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "PAGE_TITLE"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/facebook/a/g/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "RESOLVED_DOCUMENT_LINK"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/facebook/a/g/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "BUTTON_ID"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/g/a;->e:Z

    .line 96
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 377
    const-string/jumbo v0, "text"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string/jumbo v1, "hint"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1
    const-string/jumbo v0, "childviews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 387
    if-nez v1, :cond_3

    .line 393
    :cond_2
    return-void

    .line 390
    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 391
    invoke-static {p0, p1, p2}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([F[F)V
    .locals 3

    .prologue
    .line 365
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 366
    aget v1, p0, v0

    aget v2, p1, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/facebook/a/g/a;->e:Z

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 304
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/facebook/a/g/a;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "rulesForLanguage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/facebook/a/g/a;->a:Ljava/util/Map;

    .line 295
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "rulesForEvent"

    .line 296
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/facebook/a/g/a;->b:Ljava/util/Map;

    .line 297
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "positiveRules"

    .line 298
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v0, Lcom/facebook/a/g/a;->c:Ljava/util/Map;

    .line 299
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0, p3}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    :try_start_0
    const-string/jumbo v0, "is_interacted"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 322
    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return v1

    .line 329
    :cond_0
    const-string/jumbo v0, "childviews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v2

    .line 330
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 331
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 332
    const-string/jumbo v5, "is_interacted"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    move v3, v1

    .line 339
    :goto_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 340
    if-eqz v3, :cond_2

    move v1, v2

    .line 341
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 342
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 343
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 346
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 347
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 348
    invoke-static {v6, p1}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 350
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v0, v1

    .line 346
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 353
    :cond_4
    const-string/jumbo v1, "childviews"

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v1, v0

    .line 356
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    move v1, v2

    .line 361
    goto :goto_0

    :cond_6
    move v0, v2

    move v3, v2

    goto :goto_2
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 308
    array-length v3, p0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 309
    array-length v5, p1

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, p1, v1

    .line 310
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    const/4 v0, 0x1

    .line 316
    :cond_0
    return v0

    .line 309
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)[F
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 143
    const/16 v1, 0x1e

    new-array v1, v1, [F

    .line 144
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 145
    const-string/jumbo v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "hint"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 147
    const-string/jumbo v4, "classname"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 148
    const-string/jumbo v5, "inputtype"

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 150
    new-array v6, v13, [Ljava/lang/String;

    aput-object v2, v6, v0

    aput-object v3, v6, v12

    .line 152
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v7, "$"

    aput-object v7, v3, v0

    const-string/jumbo v7, "amount"

    aput-object v7, v3, v12

    const-string/jumbo v7, "price"

    aput-object v7, v3, v13

    const-string/jumbo v7, "total"

    aput-object v7, v3, v14

    invoke-static {v3, v6}, Lcom/facebook/a/g/a;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    aget v3, v1, v0

    float-to-double v8, v3

    add-double/2addr v8, v10

    double-to-float v3, v8

    aput v3, v1, v0

    .line 157
    :cond_0
    new-array v3, v13, [Ljava/lang/String;

    const-string/jumbo v7, "password"

    aput-object v7, v3, v0

    const-string/jumbo v7, "pwd"

    aput-object v7, v3, v12

    invoke-static {v3, v6}, Lcom/facebook/a/g/a;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    aget v3, v1, v12

    float-to-double v8, v3

    add-double/2addr v8, v10

    double-to-float v3, v8

    aput v3, v1, v12

    .line 162
    :cond_1
    new-array v3, v13, [Ljava/lang/String;

    const-string/jumbo v7, "tel"

    aput-object v7, v3, v0

    const-string/jumbo v7, "phone"

    aput-object v7, v3, v12

    invoke-static {v3, v6}, Lcom/facebook/a/g/a;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    aget v3, v1, v13

    float-to-double v8, v3

    add-double/2addr v8, v10

    double-to-float v3, v8

    aput v3, v1, v13

    .line 167
    :cond_2
    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v7, "search"

    aput-object v7, v3, v0

    invoke-static {v3, v6}, Lcom/facebook/a/g/a;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    const/4 v3, 0x4

    aget v6, v1, v3

    float-to-double v6, v6

    add-double/2addr v6, v10

    double-to-float v6, v6

    aput v6, v1, v3

    .line 173
    :cond_3
    if-ltz v5, :cond_4

    .line 174
    const/4 v3, 0x5

    aget v6, v1, v3

    float-to-double v6, v6

    add-double/2addr v6, v10

    double-to-float v6, v6

    aput v6, v1, v3

    .line 178
    :cond_4
    if-eq v5, v14, :cond_5

    if-ne v5, v13, :cond_6

    .line 179
    :cond_5
    const/4 v3, 0x6

    aget v6, v1, v3

    float-to-double v6, v6

    add-double/2addr v6, v10

    double-to-float v6, v6

    aput v6, v1, v3

    .line 183
    :cond_6
    const/16 v3, 0x20

    if-eq v5, v3, :cond_7

    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 184
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 185
    :cond_7
    const/4 v3, 0x7

    aget v5, v1, v3

    float-to-double v6, v5

    add-double/2addr v6, v10

    double-to-float v5, v6

    aput v5, v1, v3

    .line 189
    :cond_8
    const-string/jumbo v3, "checkbox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 190
    const/16 v3, 0x8

    aget v5, v1, v3

    float-to-double v6, v5

    add-double/2addr v6, v10

    double-to-float v5, v6

    aput v5, v1, v3

    .line 193
    :cond_9
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v5, "complete"

    aput-object v5, v3, v0

    const-string/jumbo v5, "confirm"

    aput-object v5, v3, v12

    const-string/jumbo v5, "done"

    aput-object v5, v3, v13

    const-string/jumbo v5, "submit"

    aput-object v5, v3, v14

    new-array v5, v12, [Ljava/lang/String;

    aput-object v2, v5, v0

    invoke-static {v3, v5}, Lcom/facebook/a/g/a;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 196
    const/16 v2, 0xa

    aget v3, v1, v2

    float-to-double v6, v3

    add-double/2addr v6, v10

    double-to-float v3, v6

    aput v3, v1, v2

    .line 200
    :cond_a
    const-string/jumbo v2, "radio"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "button"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 201
    const/16 v2, 0xc

    aget v3, v1, v2

    float-to-double v4, v3

    add-double/2addr v4, v10

    double-to-float v3, v4

    aput v3, v1, v2

    .line 205
    :cond_b
    :try_start_0
    const-string/jumbo v2, "childviews"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 207
    :goto_0
    if-ge v0, v3, :cond_c

    .line 208
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;)[F

    move-result-object v4

    invoke-static {v1, v4}, Lcom/facebook/a/g/a;->a([F[F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 214
    :cond_c
    return-object v1
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 110
    sget-boolean v1, Lcom/facebook/a/g/a;->e:Z

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    const/16 v1, 0x1e

    new-array v1, v1, [F

    .line 114
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "view"

    .line 118
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v4, "screenname"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-static {v3, v5}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 124
    invoke-static {v3}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;)[F

    move-result-object v6

    .line 125
    invoke-static {v1, v6}, Lcom/facebook/a/g/a;->a([F[F)V

    .line 127
    invoke-static {v3}, Lcom/facebook/a/g/a;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_0

    .line 132
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v6, v5, v4, v0, v2}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object v0

    .line 133
    invoke-static {v1, v0}, Lcom/facebook/a/g/a;->a([F[F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 139
    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 223
    const/16 v0, 0x1e

    new-array v4, v0, [F

    .line 224
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 226
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 227
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-le v0, v6, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    int-to-float v0, v0

    aput v0, v4, v5

    .line 230
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 231
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/g/a;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/16 v0, 0x9

    aget v5, v4, v0

    add-float/2addr v5, v2

    aput v5, v4, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 227
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 239
    :cond_2
    const/16 v0, 0xd

    aput v7, v4, v0

    .line 240
    const/16 v0, 0xe

    aput v7, v4, v0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string/jumbo v0, ""

    .line 245
    const-string/jumbo v0, ""

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-static {p0, v0, v5}, Lcom/facebook/a/g/a;->a(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    const/16 v7, 0xf

    const-string/jumbo v0, "ENGLISH"

    const-string/jumbo v8, "COMPLETE_REGISTRATION"

    const-string/jumbo v9, "BUTTON_TEXT"

    invoke-static {v0, v8, v9, v5}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    aput v0, v4, v7

    .line 255
    const/16 v7, 0x10

    const-string/jumbo v0, "ENGLISH"

    const-string/jumbo v8, "COMPLETE_REGISTRATION"

    const-string/jumbo v9, "PAGE_TITLE"

    invoke-static {v0, v8, v9, v1}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    aput v0, v4, v7

    .line 257
    const/16 v7, 0x11

    const-string/jumbo v0, "ENGLISH"

    const-string/jumbo v8, "COMPLETE_REGISTRATION"

    const-string/jumbo v9, "BUTTON_ID"

    invoke-static {v0, v8, v9, v6}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    aput v0, v4, v7

    .line 261
    const/16 v6, 0x12

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    aput v0, v4, v6

    .line 263
    const/16 v6, 0x13

    const-string/jumbo v0, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    invoke-static {v0, p3}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    aput v0, v4, v6

    .line 265
    const/16 v6, 0x14

    const-string/jumbo v0, "(?i)(sign in)|login|signIn"

    invoke-static {v0, p3}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_7
    aput v0, v4, v6

    .line 267
    const/16 v6, 0x15

    const-string/jumbo v0, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    invoke-static {v0, p3}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_8
    aput v0, v4, v6

    .line 271
    const/16 v6, 0x16

    const-string/jumbo v0, "ENGLISH"

    const-string/jumbo v7, "PURCHASE"

    const-string/jumbo v8, "BUTTON_TEXT"

    invoke-static {v0, v7, v8, v5}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    aput v0, v4, v6

    .line 273
    const/16 v6, 0x18

    const-string/jumbo v0, "ENGLISH"

    const-string/jumbo v7, "PURCHASE"

    const-string/jumbo v8, "PAGE_TITLE"

    invoke-static {v0, v7, v8, v1}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_a
    aput v0, v4, v6

    .line 277
    const/16 v6, 0x19

    const-string/jumbo v0, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    invoke-static {v0, v5}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_b
    aput v0, v4, v6

    .line 279
    const/16 v6, 0x1b

    const-string/jumbo v0, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    invoke-static {v0, v1}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_c
    aput v0, v4, v6

    .line 284
    const/16 v6, 0x1c

    const-string/jumbo v0, "ENGLISH"

    const-string/jumbo v7, "LEAD"

    const-string/jumbo v8, "BUTTON_TEXT"

    invoke-static {v0, v7, v8, v5}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_d
    aput v0, v4, v6

    .line 286
    const/16 v0, 0x1d

    const-string/jumbo v5, "ENGLISH"

    const-string/jumbo v6, "LEAD"

    const-string/jumbo v7, "PAGE_TITLE"

    invoke-static {v5, v6, v7, v1}, Lcom/facebook/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    aput v2, v4, v0

    .line 289
    return-object v4

    :cond_3
    move v0, v3

    .line 253
    goto/16 :goto_2

    :cond_4
    move v0, v3

    .line 255
    goto/16 :goto_3

    :cond_5
    move v0, v3

    .line 257
    goto/16 :goto_4

    :cond_6
    move v0, v3

    .line 261
    goto/16 :goto_5

    :cond_7
    move v0, v3

    .line 263
    goto/16 :goto_6

    :cond_8
    move v0, v3

    .line 265
    goto/16 :goto_7

    :cond_9
    move v0, v3

    .line 267
    goto/16 :goto_8

    :cond_a
    move v0, v3

    .line 271
    goto :goto_9

    :cond_b
    move v0, v3

    .line 273
    goto :goto_a

    :cond_c
    move v0, v3

    .line 277
    goto :goto_b

    :cond_d
    move v0, v3

    .line 279
    goto :goto_c

    :cond_e
    move v0, v3

    .line 284
    goto :goto_d

    :cond_f
    move v2, v3

    .line 286
    goto :goto_e
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 371
    const-string/jumbo v0, "classtypebitmask"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 372
    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 398
    :try_start_0
    const-string/jumbo v1, "is_interacted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-object p0

    .line 402
    :cond_1
    const-string/jumbo v1, "childviews"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 403
    if-nez v2, :cond_2

    move-object p0, v0

    .line 404
    goto :goto_0

    .line 407
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 408
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/a/g/a;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 409
    if-nez p0, :cond_0

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 413
    :catch_0
    move-exception v1

    :cond_3
    move-object p0, v0

    .line 417
    goto :goto_0
.end method
