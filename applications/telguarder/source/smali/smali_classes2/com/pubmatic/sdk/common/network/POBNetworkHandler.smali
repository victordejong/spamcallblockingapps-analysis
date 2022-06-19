.class public Lcom/pubmatic/sdk/common/network/POBNetworkHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;,
        Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;,
        Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;,
        Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/pubmatic/sdk/common/network/POBRequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;)V

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/common/network/POBVolley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/Network;)Lcom/pubmatic/sdk/common/network/POBRequestQueue;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;-><init>(Lcom/pubmatic/sdk/common/network/POBRequestQueue;)V

    return-void
.end method

.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBRequestQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a:Lcom/pubmatic/sdk/common/network/POBRequestQueue;

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;)I
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private a(Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;)Lcom/android/volley/NetworkResponse;
    .locals 8

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/volley/NetworkResponse;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getNetworkTimeMs()J

    move-result-wide v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    :cond_0
    iget-wide v1, v0, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getTimeout()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    new-instance p1, Lcom/android/volley/NetworkResponse;

    iget v2, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->data:[B

    iget-boolean v4, v0, Lcom/android/volley/NetworkResponse;->notModified:Z

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getTimeout()I

    move-result p2

    int-to-long v5, p2

    iget-object v7, v0, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;)Lcom/android/volley/NetworkResponse;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;)Lcom/android/volley/NetworkResponse;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)Lcom/android/volley/Response$ErrorListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;",
            ")",
            "Lcom/android/volley/Response$ErrorListener;"
        }
    .end annotation

    new-instance v6, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$i;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    return-object v6
.end method

.method private a(Lcom/android/volley/VolleyError;)Lcom/pubmatic/sdk/common/POBError;
    .locals 3

    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3ed

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/16 v1, 0x3ef

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing error with HTTP status code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v2, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_1

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3ea

    invoke-direct {p1, v1, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    invoke-direct {p1, v1, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4

    const/16 v1, 0x258

    if-ge v0, v1, :cond_4

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3ec

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3eb

    invoke-direct {v0, v1, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;)Lcom/pubmatic/sdk/common/POBError;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/android/volley/VolleyError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;
    .locals 1

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->b(Lcom/android/volley/VolleyError;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v0, "Location"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->clone()Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lcom/android/volley/VolleyError;

    invoke-direct {p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/android/volley/VolleyError;

    const-string p2, "Location header does not exists for Redirection"

    invoke-direct {p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/android/volley/Request;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object p2, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a:Lcom/pubmatic/sdk/common/network/POBRequestQueue;

    invoke-virtual {p2, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/android/volley/Request;)V
    .locals 3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getTimeout()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRetryCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getTimeout()I

    move-result v1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRetryCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRetryBackoffMultiplier()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    :cond_1
    return-void
.end method

.method private b(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)Lcom/android/volley/Response$ErrorListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;",
            ")",
            "Lcom/android/volley/Response$ErrorListener;"
        }
    .end annotation

    new-instance v6, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    return-object v6
.end method

.method private b(Lcom/android/volley/VolleyError;)Z
    .locals 2

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x12d

    if-eq v1, p1, :cond_0

    const/16 v1, 0x12e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12f

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;",
            ")V"
        }
    .end annotation

    new-instance v9, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestMethod()Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;)I

    move-result v2

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestMethod()Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;->GET:Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    new-instance v5, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$f;

    invoke-direct {v5, p0, p2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$f;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->b(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V

    invoke-direct {p0, p1, v9}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/android/volley/Request;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v9, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/android/volley/Request;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelRequest(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a:Lcom/pubmatic/sdk/common/network/POBRequestQueue;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$h;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$h;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    :cond_0
    return-void
.end method

.method public sendImageRequest(Lcom/pubmatic/sdk/common/network/POBImageRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBImageRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/toolbox/ImageRequest;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$d;

    invoke-direct {v3, p0, p2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$d;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->getMaxWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->getMaxHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBImageRequest;->getDecodeConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    new-instance v8, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$e;

    invoke-direct {v8, p0, p2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$e;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/android/volley/Request;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/android/volley/Request;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v0, 0x3e9

    const-string v1, "Request parameter or URL is null."

    invoke-direct {p1, v0, v1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener;->onFailure(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendJSONRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->c(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V

    return-void
.end method

.method public sendJSONRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->c(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V

    return-void
.end method

.method public sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)V

    return-void
.end method

.method public sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/POBHttpRequest;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestMethod()Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestMethod()Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest$HTTP_METHOD;)I

    move-result v3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$b;

    invoke-direct {v5, p0, p2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$b;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$c;-><init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;)V

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/android/volley/Request;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getRequestTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/android/volley/Request;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p3, 0x3e9

    const-string v0, "Request parameter or URL is null."

    invoke-direct {p1, p3, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;->onFailure(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)V

    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->setRequestTag(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)V

    return-void
.end method
