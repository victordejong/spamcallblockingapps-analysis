.class public Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
.super Lcom/google/api/client/json/b;
.source "TokenErrorResponse.java"


# instance fields
.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "error_description"
    .end annotation
.end field

.field private errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "error_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorUri:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object p1

    return-object p1
.end method

.method public setError(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->error:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorDescription(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorUri:Ljava/lang/String;

    return-object p0
.end method
