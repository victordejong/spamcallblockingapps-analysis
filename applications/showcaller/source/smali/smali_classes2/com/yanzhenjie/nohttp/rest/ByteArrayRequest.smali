.class public Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;
.super Lcom/yanzhenjie/nohttp/rest/Request;
.source "ByteArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/RequestMethod;->GET:Lcom/yanzhenjie/nohttp/RequestMethod;

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/Request;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/ByteArrayRequest;->parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public parseResponse(Lcom/yanzhenjie/nohttp/Headers;[B)[B
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    new-array p2, p1, [B

    :cond_0
    return-object p2
.end method
