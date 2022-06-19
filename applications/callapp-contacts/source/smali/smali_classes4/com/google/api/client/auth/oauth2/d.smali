.class public Lcom/google/api/client/auth/oauth2/d;
.super Lcom/google/api/client/a/n;
.source "SourceFile"


# instance fields
.field a:Lcom/google/api/client/http/s;

.field b:Lcom/google/api/client/http/m;

.field protected c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/auth/oauth2/TokenResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/api/client/http/w;

.field private final e:Lcom/google/api/client/json/JsonFactory;

.field private f:Lcom/google/api/client/http/i;

.field private grantType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "grant_type"
    .end annotation
.end field

.field private scopes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "scope"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/i;Ljava/lang/String;)V
    .locals 6

    .line 96
    const-class v5, Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/auth/oauth2/d;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/i;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/i;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/w;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/http/i;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/auth/oauth2/TokenResponse;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/google/api/client/a/n;-><init>()V

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 116
    check-cast p1, Lcom/google/api/client/http/w;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->d:Lcom/google/api/client/http/w;

    .line 2125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 117
    check-cast p1, Lcom/google/api/client/json/JsonFactory;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->e:Lcom/google/api/client/json/JsonFactory;

    .line 118
    invoke-virtual {p0, p3}, Lcom/google/api/client/auth/oauth2/d;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/auth/oauth2/d;

    .line 119
    invoke-virtual {p0, p4}, Lcom/google/api/client/auth/oauth2/d;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/d;

    .line 120
    invoke-virtual {p0, p5}, Lcom/google/api/client/auth/oauth2/d;->a(Ljava/lang/Class;)Lcom/google/api/client/auth/oauth2/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/i;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->f:Lcom/google/api/client/http/i;

    .line 2357
    iget-object p1, p1, Lcom/google/api/client/http/i;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3035
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/m;->a(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/auth/oauth2/TokenResponse;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/d;"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 3125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 233
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->grantType:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 329
    invoke-super {p0, p1, p2}, Lcom/google/api/client/a/n;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/d;

    return-object p1
.end method

.method public final a()Lcom/google/api/client/http/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/d;->d:Lcom/google/api/client/http/w;

    new-instance v1, Lcom/google/api/client/auth/oauth2/d$1;

    invoke-direct {v1, p0}, Lcom/google/api/client/auth/oauth2/d$1;-><init>(Lcom/google/api/client/auth/oauth2/d;)V

    .line 278
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/w;->createRequestFactory(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/d;->f:Lcom/google/api/client/http/i;

    new-instance v2, Lcom/google/api/client/http/ae;

    invoke-direct {v2, p0}, Lcom/google/api/client/http/ae;-><init>(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/google/api/client/json/JsonObjectParser;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/d;->e:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v1, v2}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 3666
    iput-object v1, v0, Lcom/google/api/client/http/q;->n:Lcom/google/api/client/a/x;

    const/4 v1, 0x0

    .line 3734
    iput-boolean v1, v0, Lcom/google/api/client/http/q;->o:Z

    .line 304
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object v0

    .line 4283
    iget v1, v0, Lcom/google/api/client/http/t;->c:I

    invoke-static {v1}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/d;->e:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v1, v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->a(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/t;)Lcom/google/api/client/auth/oauth2/TokenResponseException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/d;->a()Lcom/google/api/client/http/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/d;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object v0
.end method

.method public b(Lcom/google/api/client/http/m;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->b:Lcom/google/api/client/http/m;

    return-object p0
.end method

.method public b(Lcom/google/api/client/http/s;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d;->a:Lcom/google/api/client/http/s;

    return-object p0
.end method

.method public synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    return-object p1
.end method
