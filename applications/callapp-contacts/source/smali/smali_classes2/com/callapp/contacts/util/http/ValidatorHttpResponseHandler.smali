.class public Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;
.super Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->a(Ljava/lang/String;Lokhttp3/Response;)V

    .line 16
    invoke-static {p2, p1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->b:Z

    .line 18
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isValidCallAppResponse()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->b:Z

    return v0
.end method
