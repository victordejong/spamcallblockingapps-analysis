.class public final Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
.super Lcom/google/api/client/json/b;
.source "GoogleClientSecrets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Details"
.end annotation


# instance fields
.field private authUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "auth_uri"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "client_id"
    .end annotation
.end field

.field private clientSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "client_secret"
    .end annotation
.end field

.field private redirectUris:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "redirect_uris"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tokenUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "token_uri"
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
.method public clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    return-object v0
.end method

.method public getAuthUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->authUri:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->redirectUris:Ljava/util/List;

    return-object v0
.end method

.method public getTokenUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->tokenUri:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object p1

    return-object p1
.end method

.method public setAuthUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->authUri:Ljava/lang/String;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public setClientSecret(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setRedirectUris(Ljava/util/List;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->redirectUris:Ljava/util/List;

    return-object p0
.end method

.method public setTokenUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->tokenUri:Ljava/lang/String;

    return-object p0
.end method
