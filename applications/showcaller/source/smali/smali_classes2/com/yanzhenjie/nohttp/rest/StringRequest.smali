.class public Lcom/yanzhenjie/nohttp/rest/StringRequest;
.super Lcom/yanzhenjie/nohttp/rest/Request;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/Request;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method

.method public static parseResponseString(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/Headers;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "charset"

    invoke-static {p0, v1, v0}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->parseHeadValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p1, p0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/StringRequest;->parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/yanzhenjie/nohttp/rest/StringRequest;->parseResponseString(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
