.class Lcom/bytedance/sdk/openadsdk/g/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/u$b;,
        Lcom/bytedance/sdk/openadsdk/g/a/u$a;,
        Lcom/bytedance/sdk/openadsdk/g/a/u$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/a/u$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/u$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/g/a/k$a;

.field private final d:Ljava/lang/String;

.field private volatile e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/g/a/k$a;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->e:Z

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->d:Ljava/lang/String;

    if-gtz p2, :cond_0

    .line 50
    new-instance p2, Landroid/util/LruCache;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->b:Landroid/util/LruCache;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->b:Landroid/util/LruCache;

    .line 54
    :goto_0
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->c:Lcom/bytedance/sdk/openadsdk/g/a/k$a;

    if-nez p5, :cond_1

    .line 56
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/g/a/u$1;

    invoke-direct {p2, p0, p4}, Lcom/bytedance/sdk/openadsdk/g/a/u$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/u;Ljava/util/concurrent/Executor;)V

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/k$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/k$a$a;)V

    return-void

    .line 74
    :cond_1
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/g/a/u;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/u$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/g/a/u$a;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/u$c;-><init>()V

    .line 138
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/a/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v3, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/g/a/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 153
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/g/a/u$b;

    .line 154
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->b:Lcom/bytedance/sdk/openadsdk/g/a/w;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/g/a/w;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 156
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->b:Lcom/bytedance/sdk/openadsdk/g/a/w;

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    .line 158
    :cond_3
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->b:Ljava/util/Set;

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->c:Ljava/util/Set;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 145
    :cond_5
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/g/a/w;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "[.]"

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 177
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return-object v0

    :cond_1
    if-ne v2, v3, :cond_2

    return-object p0

    .line 183
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v2, -0x2

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    const-string v0, "content"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 123
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 124
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 125
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/g/a/u;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/g/a/u$b;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parse configurations failed, response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->e:Z

    return-void
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/g/a/u$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/u$b;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/u$1;)V

    const-string v1, "pattern"

    .line 196
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->a:Ljava/util/regex/Pattern;

    const-string v1, "group"

    .line 197
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/a/w;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/w;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->b:Lcom/bytedance/sdk/openadsdk/g/a/w;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->c:Ljava/util/List;

    const-string v1, "included_methods"

    .line 200
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 202
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 203
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->d:Ljava/util/List;

    const-string v1, "excluded_methods"

    .line 208
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 210
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/a/u$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/g/a/u$a;
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->e:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 188
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/g/a/u$a;

    const-string v0, "Permission config is outdated!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/u$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 219
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.bytedance.ies.web.jsbridge2.PermissionConfig."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/g/a/u$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/g/a/u$c;"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 90
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/u$c;-><init>()V

    if-eqz v1, :cond_5

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_2
    sget-object p1, Lcom/bytedance/sdk/openadsdk/g/a/w;->c:Lcom/bytedance/sdk/openadsdk/g/a/w;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    return-object v0

    .line 106
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->b:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/g/a/u$c;

    if-eqz p2, :cond_4

    return-object p2

    .line 110
    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/u$c;

    move-result-object p1

    return-object p1

    .line 96
    :cond_5
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/g/a/w;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/g/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/u;->b(Lorg/json/JSONObject;)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->c:Lcom/bytedance/sdk/openadsdk/g/a/k$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/u;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/g/a/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
