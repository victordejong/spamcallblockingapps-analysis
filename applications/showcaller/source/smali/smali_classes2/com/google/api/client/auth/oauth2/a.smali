.class public Lcom/google/api/client/auth/oauth2/a;
.super Lcom/google/api/client/util/GenericData;
.source "TokenRequest.java"


# instance fields
.field d:Lcom/google/api/client/http/s;

.field e:Lcom/google/api/client/http/m;

.field private final f:Lcom/google/api/client/http/w;

.field private final g:Lcom/google/api/client/json/c;

.field private grantType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "grant_type"
    .end annotation
.end field

.field private h:Lcom/google/api/client/http/i;

.field private scopes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "scope"
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/a;

    return-object p1
.end method

.method public final executeUnparsed()Lcom/google/api/client/http/t;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/a;->f:Lcom/google/api/client/http/w;

    new-instance v1, Lcom/google/api/client/auth/oauth2/a$a;

    invoke-direct {v1, p0}, Lcom/google/api/client/auth/oauth2/a$a;-><init>(Lcom/google/api/client/auth/oauth2/a;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/w;->d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/a;->h:Lcom/google/api/client/http/i;

    new-instance v2, Lcom/google/api/client/http/d0;

    invoke-direct {v2, p0}, Lcom/google/api/client/http/d0;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/r;->b(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/api/client/json/e;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/a;->g:Lcom/google/api/client/json/c;

    invoke-direct {v1, v2}, Lcom/google/api/client/json/e;-><init>(Lcom/google/api/client/json/c;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/q;->y(Lcom/google/api/client/util/u;)Lcom/google/api/client/http/q;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/q;->C(Z)Lcom/google/api/client/http/q;

    .line 7
    invoke-virtual {v0}, Lcom/google/api/client/http/q;->b()Lcom/google/api/client/http/t;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/a;->g:Lcom/google/api/client/json/c;

    invoke-static {v1, v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->from(Lcom/google/api/client/json/c;Lcom/google/api/client/http/t;)Lcom/google/api/client/auth/oauth2/TokenResponseException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/a;

    move-result-object p1

    return-object p1
.end method
