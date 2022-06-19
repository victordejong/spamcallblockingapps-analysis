.class public Lcom/google/api/client/auth/oauth2/TokenResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "access_token"
    .end annotation
.end field

.field private expiresInSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "expires_in"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "refresh_token"
    .end annotation
.end field

.field private scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private tokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "token_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresInSeconds()Ljava/lang/Long;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->expiresInSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->expiresInSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 2125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 96
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenResponse;->tokenType:Ljava/lang/String;

    return-object p0
.end method
