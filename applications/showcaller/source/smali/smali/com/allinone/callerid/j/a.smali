.class public Lcom/allinone/callerid/j/a;
.super Ljava/lang/Object;
.source "NetRequest.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    .line 3
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/RequestCall;->execute()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->post()Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    .line 3
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/RequestCall;->execute()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object p1
.end method
