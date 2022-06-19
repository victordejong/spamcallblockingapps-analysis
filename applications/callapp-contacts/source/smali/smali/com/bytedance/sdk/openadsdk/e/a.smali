.class public Lcom/bytedance/sdk/openadsdk/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/e/a$a;
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gecko-pangle-sg.byteoversea.com"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gecko"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a;->b:Ljava/io/File;

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/e/a$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/e/a;
    .locals 1

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/e/a$a;->a()Lcom/bytedance/sdk/openadsdk/e/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "?"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "GeckoHub"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 156
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a;->c:Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const-string v2, "refresh cache manifest"

    .line 158
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "a1a15b782e3ee8a25247561a91a99835"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/e/a;->b:Ljava/io/File;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/manifest.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/g/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "getFileInfoInManifest error null"

    .line 162
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 165
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v2, p1, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/a;->c:Ljava/util/Map$Entry;

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a;->c:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 169
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 173
    :cond_4
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    return-object v1

    .line 177
    :cond_5
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    const-string p2, "getFileInfoInManifest error"

    .line 183
    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    return-object v1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->x()[Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeckoLog:get gecko hosts from settings "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeckoHub"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a;->a:[Ljava/lang/String;

    .line 85
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 86
    aget-object v0, v0, v1

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/e/a;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 89
    sget-object v1, Lcom/bytedance/sdk/openadsdk/e/a;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 91
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GeckoLog:random host "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const-string v0, "respHeader"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 220
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    const-string v2, "fileName"

    .line 225
    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 230
    :cond_2
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    goto :goto_0

    :cond_3
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_4

    return-object v1

    .line 237
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/e/a;->b(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v1

    .line 241
    :cond_5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 247
    :cond_6
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/falconx/b/a;->a(Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "GeckoHub"

    const-string p3, "findRes error"

    .line 249
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "GeckoHub"

    const-string v1, "releaseGeckoResLoader error"

    .line 203
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "GeckoHub"

    const-string v0, "no did so don\'t preload"

    .line 98
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;-><init>(Landroid/content/Context;)V

    const-string v2, "a1a15b782e3ee8a25247561a91a99835"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v1

    const-wide/16 v3, 0x26

    .line 106
    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    const-string v1, "9999999.0.0"

    .line 108
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;-><init>()V

    const/16 v3, 0x14

    .line 109
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;

    move-result-object v1

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a;->b:Ljava/io/File;

    .line 110
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Ljava/io/File;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Z)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/e/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/e/a;Ljava/util/Map;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    new-instance v5, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;
    .locals 4

    .line 190
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "a1a15b782e3ee8a25247561a91a99835"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/e/a;->b:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "GeckoHub"

    const-string v2, "getGeckoResLoader error"

    .line 192
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
