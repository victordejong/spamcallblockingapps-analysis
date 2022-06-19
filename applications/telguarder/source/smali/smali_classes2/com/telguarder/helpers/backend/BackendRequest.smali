.class public Lcom/telguarder/helpers/backend/BackendRequest;
.super Ljava/lang/Object;
.source "BackendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/backend/BackendRequest$Method;
    }
.end annotation


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
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

.field private mRequestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mRequestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendRequest;->getSiteId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/backend/BackendRequest;Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->getVolleyErrorTypeText(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/telguarder/helpers/backend/BackendRequest;)Lcom/telguarder/helpers/backend/BackendRequest$Method;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mRequestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    return-object p0
.end method

.method private buildUrlWithParamsIfMethodTypeIsGet()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mRequestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    sget-object v1, Lcom/telguarder/helpers/backend/BackendRequest$Method;->GET:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

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

    .line 216
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private executeRequest(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "TT;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "telguarder.backend"

    const-string v3, " "

    .line 105
    iget-object v4, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    const-string v5, "https://api.advista.no/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://tgedgeapi.telguarder.com/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/telguarder/helpers/backend/BackendRequest;->buildUrlWithParamsIfMethodTypeIsGet()V

    .line 107
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MCC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/telguarder/helpers/backend/BackendRequest;->getMCC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " CountryCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/telguarder/helpers/backend/BackendRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendApiReqMccAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v14, Lcom/telguarder/helpers/backend/BackendRequest$1;

    invoke-direct {v14, v0, v1}, Lcom/telguarder/helpers/backend/BackendRequest$1;-><init>(Lcom/telguarder/helpers/backend/BackendRequest;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    .line 116
    new-instance v5, Lcom/telguarder/helpers/backend/BackendRequest$2;

    invoke-direct {v5, v0, v4, v1}, Lcom/telguarder/helpers/backend/BackendRequest$2;-><init>(Lcom/telguarder/helpers/backend/BackendRequest;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    if-eqz p1, :cond_0

    .line 140
    new-instance v6, Lcom/telguarder/helpers/backend/JsonRequest;

    iget-object v8, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    iget-object v9, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    iget-object v10, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    iget-object v11, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mBody:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/telguarder/helpers/backend/BackendRequest;->getActualMethodType()I

    move-result v12

    move-object v7, v6

    move-object/from16 v13, p1

    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Lcom/telguarder/helpers/backend/JsonRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0

    .line 142
    :cond_0
    new-instance v6, Lcom/telguarder/helpers/backend/JsonRequest;

    iget-object v8, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mUrl:Ljava/lang/String;

    iget-object v9, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    iget-object v10, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    iget-object v11, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mBody:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/telguarder/helpers/backend/BackendRequest;->getActualMethodType()I

    move-result v12

    move-object v7, v6

    move-object/from16 v13, p2

    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Lcom/telguarder/helpers/backend/JsonRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ILjava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 145
    :goto_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mRequestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/telguarder/helpers/backend/JsonRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/telguarder/helpers/backend/JsonRequest;->getParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/telguarder/helpers/backend/JsonRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " body: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/telguarder/helpers/backend/BackendRequest;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read params for URL: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/telguarder/helpers/backend/JsonRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x3a98

    if-eqz p4, :cond_1

    .line 151
    sget-object v3, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    :goto_2
    invoke-virtual {v6, v3}, Lcom/telguarder/helpers/backend/JsonRequest;->setPriority(Lcom/android/volley/Request$Priority;)V

    const/4 v3, 0x1

    xor-int/lit8 v7, p4, 0x1

    .line 152
    invoke-virtual {v6, v7}, Lcom/telguarder/helpers/backend/JsonRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 153
    new-instance v7, Lcom/android/volley/DefaultRetryPolicy;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v3, v8}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v6, v7}, Lcom/telguarder/helpers/backend/JsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/telguarder/helpers/backend/JsonRequest;->requestStartTime:J

    .line 155
    iput-object v4, v6, Lcom/telguarder/helpers/backend/JsonRequest;->nakedUrl:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/telguarder/helpers/backend/VolleyHelper;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {v2, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual/range {p3 .. p3}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->triggerStart()V

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 163
    invoke-interface {v5, v1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private getActualMethodType()I
    .locals 2

    .line 225
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$3;->$SwitchMap$com$telguarder$helpers$backend$BackendRequest$Method:[I

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mRequestMethod:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    invoke-virtual {v1}, Lcom/telguarder/helpers/backend/BackendRequest$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "X-Country-Code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "null"

    return-object v0
.end method

.method private getMCC()Ljava/lang/String;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "X-MCC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "null"

    return-object v0
.end method

.method private getSiteId()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "X-SiteId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVolleyErrorTypeText(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown_error"

    if-nez p1, :cond_0

    return-object v0

    .line 193
    :cond_0
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_1

    const-string p1, "timeout_error"

    return-object p1

    .line 195
    :cond_1
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_2

    const-string p1, "no_connection_error"

    return-object p1

    .line 197
    :cond_2
    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_3

    const-string p1, "auth_failure_error"

    return-object p1

    .line 199
    :cond_3
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_4

    const-string p1, "server_error"

    return-object p1

    .line 201
    :cond_4
    instance-of v1, p1, Lcom/telguarder/helpers/errorhandling/NetworkError;

    if-eqz v1, :cond_5

    const-string p1, "network_error"

    return-object p1

    .line 203
    :cond_5
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_6

    const-string p1, "parse_error"

    return-object p1

    .line 206
    :cond_6
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private putObjectParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->executeRequest(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;Z)V

    return-void
.end method

.method public execute(Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->executeRequest(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;Z)V

    return-void
.end method

.method public executeImmediate(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->executeRequest(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;Z)V

    return-void
.end method

.method public putAuthorizationToken(Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putObjectParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putObjectParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putParam(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putObjectParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putParam(Ljava/lang/String;Z)V
    .locals 0

    .line 64
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putObjectParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendRequest;->mBody:Ljava/lang/String;

    return-void
.end method
