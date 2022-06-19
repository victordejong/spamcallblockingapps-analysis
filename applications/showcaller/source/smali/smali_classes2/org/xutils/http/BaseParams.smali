.class public abstract Lorg/xutils/http/BaseParams;
.super Ljava/lang/Object;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/BaseParams$BodyItemWrapper;,
        Lorg/xutils/http/BaseParams$Header;,
        Lorg/xutils/http/BaseParams$ArrayItem;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/xutils/http/HttpMethod;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Lorg/xutils/http/body/RequestBody;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 2
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/xutils/http/BaseParams;->e:Z

    .line 4
    iput-boolean v0, p0, Lorg/xutils/http/BaseParams;->f:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->h:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->g:Lorg/xutils/http/body/RequestBody;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/xutils/http/BaseParams;->b:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    :try_start_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :goto_0
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lorg/xutils/http/BaseParams;->b(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 15
    :cond_5
    :goto_2
    :try_start_4
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/common/util/KeyValue;

    .line 5
    iget-object v5, v4, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 10
    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_1
    iget-object v7, v4, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v7}, Lorg/xutils/http/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 12
    instance-of v4, v4, Lorg/xutils/http/BaseParams$ArrayItem;

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 19
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 20
    :cond_5
    :goto_4
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    instance-of p3, p2, Ljava/lang/Iterable;

    if-eqz p3, :cond_1

    .line 6
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 7
    iget-object p4, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    new-instance v0, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v0, p1, p3}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    instance-of p3, p2, Lorg/json/JSONArray;

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 9
    check-cast p2, Lorg/json/JSONArray;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    :goto_1
    if-ge p4, p3, :cond_6

    .line 11
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, p4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 12
    :cond_2
    instance-of p3, p2, [B

    if-eqz p3, :cond_3

    .line 13
    iget-object p3, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    new-instance p4, Lorg/xutils/common/util/KeyValue;

    invoke-direct {p4, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 15
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    :goto_2
    if-ge p4, p3, :cond_6

    .line 16
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, p4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 17
    :cond_4
    iget-object p3, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    new-instance p4, Lorg/xutils/common/util/KeyValue;

    invoke-direct {p4, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_5
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    new-instance v7, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/xutils/http/BaseParams$BodyItemWrapper;-><init>(Lorg/xutils/http/BaseParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->h:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->b:Lorg/xutils/http/HttpMethod;

    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    new-instance v2, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v2, p1, v0}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    check-cast p2, Lorg/json/JSONArray;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 8
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 11
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    new-instance v3, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public clearParams()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->g:Lorg/xutils/http/body/RequestBody;

    return-void
.end method

.method public getBodyContent()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->a()V

    .line 2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->a()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethod()Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->b:Lorg/xutils/http/HttpMethod;

    return-object v0
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    if-eqz p1, :cond_0

    .line 3
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    if-nez p1, :cond_3

    .line 6
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_2

    .line 8
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getQueryStringParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->a()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRequestBody()Lorg/xutils/http/body/RequestBody;
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->a()V

    .line 2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->g:Lorg/xutils/http/body/RequestBody;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lorg/xutils/http/body/StringBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->e:Z

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lorg/xutils/http/body/MultipartBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/MultipartBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 10
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 11
    iget-object v1, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 12
    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 13
    instance-of v4, v0, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    if-eqz v4, :cond_3

    .line 14
    move-object v3, v0

    check-cast v3, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    .line 15
    iget-object v3, v3, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 16
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    .line 18
    :cond_4
    instance-of v4, v2, Ljava/io/File;

    if-eqz v4, :cond_5

    .line 19
    new-instance v0, Lorg/xutils/http/body/FileBody;

    check-cast v2, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    instance-of v4, v2, Ljava/io/InputStream;

    if-eqz v4, :cond_6

    .line 21
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v0, v2, v3}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_6
    instance-of v4, v2, [B

    if-eqz v4, :cond_7

    .line 23
    new-instance v0, Lorg/xutils/http/body/InputStreamBody;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v3}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    new-instance v1, Lorg/xutils/http/body/StringBody;

    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStrOrEmpty()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v1, v3}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 27
    :cond_8
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v3}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_9
    new-instance v0, Lorg/xutils/http/body/UrlEncodedBody;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/body/UrlEncodedBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public isAsJsonContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->f:Z

    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->e:Z

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 7
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    if-nez p1, :cond_4

    .line 12
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_3

    .line 14
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public setAsJsonContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->f:Z

    return-void
.end method

.method public setBodyContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    return-void
.end method

.method public setBodyContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->d:Ljava/lang/String;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/xutils/http/BaseParams$Header;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iget-object p2, p0, Lorg/xutils/http/BaseParams;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 6
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lorg/xutils/http/BaseParams;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMethod(Lorg/xutils/http/HttpMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->b:Lorg/xutils/http/HttpMethod;

    return-void
.end method

.method public setMultipart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->e:Z

    return-void
.end method

.method public setRequestBody(Lorg/xutils/http/body/RequestBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->g:Lorg/xutils/http/body/RequestBody;

    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-direct {p0, v0, v1}, Lorg/xutils/http/BaseParams;->b(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "&"

    const-string v3, "="

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/common/util/KeyValue;

    .line 4
    iget-object v5, v4, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, ">"

    const-string v5, "<"

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_2
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/common/util/KeyValue;

    .line 11
    iget-object v6, v5, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
