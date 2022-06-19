.class public Lcom/google/api/client/auth/oauth2/TokenResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# instance fields
.field final transient a:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpResponseException$a;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$a;)V

    .line 51
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->a:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    return-void
.end method

.method public static a(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/t;)Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .locals 6

    .line 71
    new-instance v0, Lcom/google/api/client/http/HttpResponseException$a;

    .line 1292
    iget v1, p1, Lcom/google/api/client/http/t;->c:I

    .line 1301
    iget-object v2, p1, Lcom/google/api/client/http/t;->d:Ljava/lang/String;

    .line 2273
    iget-object v3, p1, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 2519
    iget-object v3, v3, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    .line 73
    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpResponseException$a;-><init>(ILjava/lang/String;Lcom/google/api/client/http/n;)V

    .line 3125
    invoke-static {p0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3254
    iget-object v1, p1, Lcom/google/api/client/http/t;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3283
    :try_start_0
    iget v3, p1, Lcom/google/api/client/http/t;->c:I

    invoke-static {v3}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "application/json; charset=UTF-8"

    .line 83
    invoke-static {v3, v1}, Lcom/google/api/client/http/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lcom/google/api/client/json/JsonObjectParser;

    invoke-direct {v1, p0}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 87
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->l()Ljava/nio/charset/Charset;

    move-result-object v3

    const-class v4, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 86
    invoke-virtual {v1, p0, v3, v4}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->toPrettyString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 90
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->k()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p0, v2

    .line 94
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_1
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/t;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4069
    invoke-static {v2}, Lcom/google/common/base/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    sget-object v1, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    iput-object v2, v0, Lcom/google/api/client/http/HttpResponseException$a;->d:Ljava/lang/String;

    .line 102
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5194
    iput-object p1, v0, Lcom/google/api/client/http/HttpResponseException$a;->e:Ljava/lang/String;

    .line 103
    new-instance p1, Lcom/google/api/client/auth/oauth2/TokenResponseException;

    invoke-direct {p1, v0, p0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$a;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V

    return-object p1
.end method
