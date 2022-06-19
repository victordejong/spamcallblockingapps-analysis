.class public abstract Lcom/google/api/services/drive/DriveRequest;
.super Lcom/google/api/client/googleapis/d/e/b;
.source "DriveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/d/e/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
        value = "oauth_token"
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/drive/Drive;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/googleapis/d/e/b;-><init>(Lcom/google/api/client/googleapis/d/e/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/DriveRequest;->getAbstractGoogleClient()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/e/a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/DriveRequest;->getAbstractGoogleClient()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    return-object v0
.end method

.method public final getAbstractGoogleClient()Lcom/google/api/services/drive/Drive;
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/google/api/client/googleapis/d/e/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/e/a;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive;

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->oauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyPrint()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->prettyPrint:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getQuotaUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->quotaUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/DriveRequest;->userIp:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/e/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/d/e/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/DriveRequest;

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->alt:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setDisableGZipContent(Z)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/e/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setDisableGZipContent(Z)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/b;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/DriveRequest;

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->fields:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->oauthToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->prettyPrint:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->quotaUser:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/e/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    return-object p1
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/n;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/b;->setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/DriveRequest;

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/drive/DriveRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/DriveRequest;->userIp:Ljava/lang/String;

    return-object p0
.end method
