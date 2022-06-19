.class public abstract Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpResponseHandlerImpl"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->b:I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->a:Ljava/lang/String;

    .line 206
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->b:I

    :cond_0
    return-void
.end method

.method public getResponseCode()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;->b:I

    return v0
.end method
