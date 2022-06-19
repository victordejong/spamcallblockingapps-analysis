.class public Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
.super Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/openidconnect/IdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field private accessTokenHash:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "at_hash"
    .end annotation
.end field

.field private authorizationTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "auth_time"
    .end annotation
.end field

.field private authorizedParty:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "azp"
    .end annotation
.end field

.field private classReference:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "acr"
    .end annotation
.end field

.field private methodsReferences:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "amr"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->clone()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 1

    .line 369
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->clone()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->clone()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

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

    .line 167
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->clone()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessTokenHash()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->accessTokenHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationTimeSeconds()Ljava/lang/Long;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->authorizationTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAuthorizedParty()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->authorizedParty:Ljava/lang/String;

    return-object v0
.end method

.method public final getClassReference()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->classReference:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethodsReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->methodsReferences:Ljava/util/List;

    return-object v0
.end method

.method public final getNonce()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 364
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setAccessTokenHash(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->accessTokenHash:Ljava/lang/String;

    return-object p0
.end method

.method public setAudience(Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 344
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setAudience(Ljava/lang/Object;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setAuthorizationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->authorizationTimeSeconds:Ljava/lang/Long;

    return-object p0
.end method

.method public setAuthorizedParty(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->authorizedParty:Ljava/lang/String;

    return-object p0
.end method

.method public setClassReference(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->classReference:Ljava/lang/String;

    return-object p0
.end method

.method public setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 324
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 334
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 339
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setJwtId(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 349
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setJwtId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setJwtId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setJwtId(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setMethodsReferences(Ljava/util/List;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/openidconnect/IdToken$Payload;"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->methodsReferences:Ljava/util/List;

    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public setNotBeforeTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 329
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setNotBeforeTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setNotBeforeTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setNotBeforeTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 359
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 0

    .line 354
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object p1
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->setType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object p1

    return-object p1
.end method
