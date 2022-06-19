.class public Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
.super Lcom/google/api/client/auth/oauth2/TokenResponse;
.source "SourceFile"


# instance fields
.field private idToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "id_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;-><init>()V

    return-void
.end method

.method public static execute(Lcom/google/api/client/auth/oauth2/d;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/d;->a()Lcom/google/api/client/http/t;

    move-result-object p0

    const-class v0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->clone()Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->clone()Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;->clone()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->clone()Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

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

    .line 45
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->clone()Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public parseIdToken()Lcom/google/api/client/auth/openidconnect/IdToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->idToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/api/client/auth/openidconnect/IdToken;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object p0
.end method

.method public bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->idToken:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object p0
.end method

.method public bridge synthetic setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object p0
.end method

.method public bridge synthetic setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object p0
.end method
