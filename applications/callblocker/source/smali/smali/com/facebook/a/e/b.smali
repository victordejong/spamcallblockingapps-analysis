.class public final Lcom/facebook/a/e/b;
.super Ljava/lang/Object;
.source "ModelManager.java"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/a/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/SharedPreferences;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "version_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "asset_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "use_case"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thresholds"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "rules_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/a/e/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a;

    invoke-virtual {v0}, Lcom/facebook/a/e/a;->a()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[FLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/a/e/a;->a([FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/facebook/a/e/b;->b()V

    .line 69
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/facebook/a/e/b;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)[F
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [F

    .line 221
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-object v1

    .line 224
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.internal.MODEL_STORE"

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/e/b;->b:Landroid/content/SharedPreferences;

    .line 74
    invoke-static {}, Lcom/facebook/a/e/b;->h()V

    .line 75
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/a/e/b;->d(Lorg/json/JSONObject;)Lcom/facebook/a/e/a;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_0

    .line 109
    sget-object v3, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 114
    :cond_1
    return-void
.end method

.method private static c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    :try_start_0
    const-string/jumbo v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 120
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 121
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 122
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string/jumbo v5, "version_id"

    const-string/jumbo v6, "version_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v5, "use_case"

    const-string/jumbo v6, "use_case"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v5, "thresholds"

    const-string/jumbo v6, "thresholds"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v5, "asset_uri"

    const-string/jumbo v6, "asset_uri"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v5, "rules_uri"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const-string/jumbo v5, "rules_uri"

    const-string/jumbo v6, "rules_uri"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_0
    const-string/jumbo v5, "use_case"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "DATA_DETECTION_ADDRESS"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 201
    :cond_0
    sget-object v0, Lcom/facebook/internal/j$b;->i:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/e/b$3;

    invoke-direct {v1}, Lcom/facebook/a/e/b$3;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/facebook/a/e/a;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 158
    :try_start_0
    const-string/jumbo v0, "use_case"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string/jumbo v0, "asset_uri"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string/jumbo v0, "thresholds"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 161
    const-string/jumbo v0, "version_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 162
    const-string/jumbo v0, "rules_uri"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v0, Lcom/facebook/a/e/a;

    invoke-static {v5}, Lcom/facebook/a/e/b;->a(Lorg/json/JSONArray;)[F

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/e/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 165
    goto :goto_0
.end method

.method static synthetic d()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/facebook/a/e/b;->i()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/e/b;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/facebook/a/e/b;->j()V

    return-void
.end method

.method static synthetic g()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private static h()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/facebook/a/e/b$1;

    invoke-direct {v0}, Lcom/facebook/a/e/b$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method private static i()Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/a/e/b;->c:[Ljava/lang/String;

    .line 141
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "%s/model_asset"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 146
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v0, v1, v0}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v6}, Lcom/facebook/k;->a(Z)V

    .line 148
    invoke-virtual {v1, v2}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {v1}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 150
    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/facebook/a/e/b;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private static j()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/facebook/a/e/b;->a:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "SUGGEST_EVENT"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Lcom/facebook/internal/x;->b()Ljava/util/Locale;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :cond_2
    sget-object v0, Lcom/facebook/internal/j$b;->h:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/e/b$2;

    invoke-direct {v1}, Lcom/facebook/a/e/b$2;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    goto :goto_0
.end method
