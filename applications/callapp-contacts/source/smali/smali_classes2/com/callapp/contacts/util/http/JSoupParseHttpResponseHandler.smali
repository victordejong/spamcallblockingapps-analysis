.class public Lcom/callapp/contacts/util/http/JSoupParseHttpResponseHandler;
.super Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;
.source "SourceFile"


# instance fields
.field public a:Lorg/jsoup/nodes/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->a(Ljava/lang/String;Lokhttp3/Response;)V

    .line 18
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x0

    .line 1118
    invoke-static {p2, v0, p1}, Lorg/jsoup/a/b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/util/http/JSoupParseHttpResponseHandler;->a:Lorg/jsoup/nodes/f;

    return-void
.end method
