.class Lcom/telguarder/helpers/backend/JsonRequest;
.super Lcom/android/volley/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private classReflectType:Ljava/lang/reflect/Type;

.field private classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private gson:Lcom/google/gson/Gson;

.field private listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mBody:Ljava/lang/String;

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:Lcom/android/volley/Request$Priority;

.field public nakedUrl:Ljava/lang/String;

.field public requestStartTime:J

.field private siteId:Ljava/lang/String;

.field public xResponseTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p5, p1, p8}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 48
    invoke-super {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mPriority:Lcom/android/volley/Request$Priority;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->requestStartTime:J

    .line 55
    iput-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    .line 76
    iput-object p2, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mHeaders:Ljava/util/Map;

    .line 77
    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/JsonRequest;->getSiteId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->siteId:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    .line 79
    iput-object p4, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mBody:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/telguarder/helpers/backend/JsonRequest;->classType:Ljava/lang/Class;

    .line 81
    iput-object p7, p0, Lcom/telguarder/helpers/backend/JsonRequest;->listener:Lcom/android/volley/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/reflect/Type;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p5, p1, p8}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 48
    invoke-super {p0}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mPriority:Lcom/android/volley/Request$Priority;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->requestStartTime:J

    .line 55
    iput-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    .line 96
    iput-object p2, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mHeaders:Ljava/util/Map;

    .line 97
    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/JsonRequest;->getSiteId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->siteId:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    .line 99
    iput-object p4, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mBody:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/telguarder/helpers/backend/JsonRequest;->classReflectType:Ljava/lang/reflect/Type;

    .line 101
    iput-object p7, p0, Lcom/telguarder/helpers/backend/JsonRequest;->listener:Lcom/android/volley/Response$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/backend/JsonRequest;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->siteId:Ljava/lang/String;

    return-object p0
.end method

.method private buildBody()[B
    .locals 5

    .line 280
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 286
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 290
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 292
    new-instance v4, Lorg/json/JSONArray;

    check-cast v3, Ljava/util/List;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 295
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 304
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private getGson()Lcom/google/gson/Gson;
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 314
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    .line 316
    const-class v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    new-instance v2, Lcom/telguarder/helpers/backend/JsonRequest$2;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/backend/JsonRequest$2;-><init>(Lcom/telguarder/helpers/backend/JsonRequest;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 338
    const-class v1, Lcom/telguarder/features/numberLookup/ActorType;

    new-instance v2, Lcom/telguarder/helpers/backend/JsonRequest$3;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/backend/JsonRequest$3;-><init>(Lcom/telguarder/helpers/backend/JsonRequest;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 357
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->gson:Lcom/google/gson/Gson;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private getSiteId(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "X-SiteId"

    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseResponse(Lcom/android/volley/NetworkResponse;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response headers -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "telguarder.backend"

    invoke-static {v1, p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getMethod()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "DELETE "

    goto :goto_0

    :cond_1
    const-string p1, "PUT "

    goto :goto_0

    :cond_2
    const-string p1, "POST "

    goto :goto_0

    :cond_3
    const-string p1, "GET "

    .line 258
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->classType:Ljava/lang/Class;

    if-eqz p1, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->classType:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->classReflectType:Ljava/lang/reflect/Type;

    if-eqz p1, :cond_5

    .line 268
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->classReflectType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    .line 272
    :cond_5
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string v0, "Provide a valid Class actorType!"

    invoke-direct {p1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private trackDelayByRegionRedirections(ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/helpers/backend/JsonRequest$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/telguarder/helpers/backend/JsonRequest$1;-><init>(Lcom/telguarder/helpers/backend/JsonRequest;ZLjava/lang/String;Ljava/lang/Long;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/helpers/backend/JsonRequest;->requestStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 224
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/helpers/backend/JsonRequest;->nakedUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/telguarder/helpers/backend/JsonRequest;->siteId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendSlowResponseAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 227
    :cond_0
    iget-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 228
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->nakedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/helpers/backend/JsonRequest;->siteId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendXResponseAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->buildBody()[B

    move-result-object v0

    return-object v0

    .line 157
    :cond_1
    invoke-super {p0}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getMethod()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/helpers/backend/JsonRequest;->getMethod()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/json; charset=utf-8"

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "X-Response-Time"

    .line 176
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Region"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/telguarder/helpers/backend/JsonRequest;->requestStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v3}, Lcom/telguarder/helpers/backend/JsonRequest;->trackDelayByRegionRedirections(ZLjava/lang/String;Ljava/lang/Long;)V

    .line 181
    :try_start_0
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    const/4 v0, 0x1

    .line 183
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/telguarder/helpers/backend/JsonRequest;->trackDelayByRegionRedirections(ZLjava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    .line 186
    :try_start_1
    iput-wide v0, p0, Lcom/telguarder/helpers/backend/JsonRequest;->xResponseTime:J

    .line 189
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/backend/JsonRequest;->parseResponse(Lcom/android/volley/NetworkResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 195
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Lcom/android/volley/Request$Priority;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-void
.end method
