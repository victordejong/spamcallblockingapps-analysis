.class public Lcom/callapp/contacts/util/JSoupUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1023
    new-instance p1, Lcom/callapp/contacts/util/http/JSoupParseHttpResponseHandler;

    invoke-direct {p1}, Lcom/callapp/contacts/util/http/JSoupParseHttpResponseHandler;-><init>()V

    .line 1024
    new-instance v0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2710

    .line 1105
    iput p0, v0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->f:I

    .line 2090
    iput-object p1, v0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    const/4 p0, 0x0

    .line 1025
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2095
    iput-object p0, v0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->d:Ljava/lang/String;

    .line 1028
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 1029
    iget-object p0, p1, Lcom/callapp/contacts/util/http/JSoupParseHttpResponseHandler;->a:Lorg/jsoup/nodes/f;

    return-object p0
.end method
