.class public final Lcom/google/api/client/googleapis/testing/json/GoogleJsonResponseExceptionFactoryTesting;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newMock(Lcom/google/api/client/json/JsonFactory;ILjava/lang/String;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/api/client/testing/a/d;

    invoke-direct {v0}, Lcom/google/api/client/testing/a/d;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/api/client/testing/a/d;->a(I)Lcom/google/api/client/testing/a/d;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/api/client/testing/a/d;->a(Ljava/lang/String;)Lcom/google/api/client/testing/a/d;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/google/api/client/testing/a/b$a;

    invoke-direct {p2}, Lcom/google/api/client/testing/a/b$a;-><init>()V

    .line 64
    invoke-virtual {p2, p1}, Lcom/google/api/client/testing/a/b$a;->a(Lcom/google/api/client/testing/a/d;)Lcom/google/api/client/testing/a/b$a;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/google/api/client/testing/a/b$a;->a()Lcom/google/api/client/testing/a/b;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/google/api/client/testing/a/b;->createRequestFactory()Lcom/google/api/client/http/r;

    move-result-object p1

    sget-object p2, Lcom/google/api/client/testing/a/a;->a:Lcom/google/api/client/http/i;

    invoke-virtual {p1, p2}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    move-result-object p1

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/q;->a(Z)Lcom/google/api/client/http/q;

    .line 69
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/t;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object p0

    return-object p0
.end method
