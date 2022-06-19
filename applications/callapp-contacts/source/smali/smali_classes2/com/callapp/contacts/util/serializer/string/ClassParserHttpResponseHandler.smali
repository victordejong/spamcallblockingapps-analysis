.class public Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;
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
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->a:Ljava/lang/Class;

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

    .line 21
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->a(Ljava/lang/String;Lokhttp3/Response;)V

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->a:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->b:Ljava/lang/Object;

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

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->b:Ljava/lang/Object;

    return-object v0
.end method
