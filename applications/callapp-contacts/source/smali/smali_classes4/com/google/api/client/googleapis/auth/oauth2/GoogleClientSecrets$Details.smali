.class public final Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


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
    .annotation runtime Lcom/google/api/client/a/q;
        a = "auth_uri"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "client_id"
    .end annotation
.end field

.field private clientSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "client_secret"
    .end annotation
.end field

.field private redirectUris:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "redirect_uris"
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
    .annotation runtime Lcom/google/api/client/a/q;
        a = "token_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clone()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthUri()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->authUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirectUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->redirectUris:Ljava/util/List;

    return-object v0
.end method

.method public final getTokenUri()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->tokenUri:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 166
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object p1

    return-object p1
.end method

.method public final setAuthUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->authUri:Ljava/lang/String;

    return-object p0
.end method

.method public final setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public final setClientSecret(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->clientSecret:Ljava/lang/String;

    return-object p0
.end method

.method public final setRedirectUris(Ljava/util/List;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
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

    .line 138
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->redirectUris:Ljava/util/List;

    return-object p0
.end method

.method public final setTokenUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->tokenUri:Ljava/lang/String;

    return-object p0
.end method
