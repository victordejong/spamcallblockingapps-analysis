.class Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->c(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

.field final synthetic b:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)V
    .locals 6

    iput-object p7, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    iput-object p8, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;->b:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;->a:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/POBHttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$g;->b:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iget-wide v4, p1, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    invoke-direct {v2, v3, v4, v5}, Lcom/pubmatic/sdk/common/network/POBNetworkResult;-><init>(Ljava/util/Map;J)V

    invoke-interface {v0, v2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;->onResult(Lcom/pubmatic/sdk/common/network/POBNetworkResult;)V

    :cond_0
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
