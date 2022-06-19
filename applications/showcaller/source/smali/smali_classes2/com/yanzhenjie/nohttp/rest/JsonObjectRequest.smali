.class public Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;
.super Lcom/yanzhenjie/nohttp/rest/Request;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/Request;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    const-string p1, "application/json"

    .line 3
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicRequest;->setAccept(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/BasicRequest;

    return-void
.end method


# virtual methods
.method public bridge synthetic parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/JsonObjectRequest;->parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Lorg/json/JSONObject;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/StringRequest;->parseResponseString(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
