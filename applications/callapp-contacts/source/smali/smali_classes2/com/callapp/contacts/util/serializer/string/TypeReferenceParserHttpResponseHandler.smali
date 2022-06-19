.class public Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;
.super Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;"
    }
.end annotation


# instance fields
.field final a:Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/core/type/TypeReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/type/TypeReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;->a:Lcom/fasterxml/jackson/core/type/TypeReference;

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

    .line 22
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->a(Ljava/lang/String;Lokhttp3/Response;)V

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;->a:Lcom/fasterxml/jackson/core/type/TypeReference;

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler;->b:Ljava/lang/Object;

    return-object v0
.end method
