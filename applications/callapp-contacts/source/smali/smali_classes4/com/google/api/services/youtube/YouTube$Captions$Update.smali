.class public Lcom/google/api/services/youtube/YouTube$Captions$Update;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Captions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/Caption;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "captions"


# instance fields
.field private onBehalfOf:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private onBehalfOfContentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sync:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Captions;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Captions;Ljava/lang/String;Lcom/google/api/services/youtube/model/Caption;)V
    .locals 6

    .line 1623
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->this$1:Lcom/google/api/services/youtube/YouTube$Captions;

    .line 1624
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Captions;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/Caption;

    const-string v2, "PUT"

    const-string v3, "captions"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 1625
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->part:Ljava/lang/String;

    const-string p1, "content"

    .line 1626
    invoke-virtual {p0, p3, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p3}, Lcom/google/api/services/youtube/model/Caption;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Caption.getId()"

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Captions;Ljava/lang/String;Lcom/google/api/services/youtube/model/Caption;Lcom/google/api/client/http/b;)V
    .locals 6

    .line 1653
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->this$1:Lcom/google/api/services/youtube/YouTube$Captions;

    .line 1654
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Captions;->a:Lcom/google/api/services/youtube/YouTube;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/upload/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/api/services/youtube/YouTube$Captions;->a:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {p1}, Lcom/google/api/services/youtube/YouTube;->getServicePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "captions"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/api/services/youtube/model/Caption;

    const-string v2, "PUT"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 1655
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->part:Ljava/lang/String;

    .line 1656
    invoke-virtual {p0, p4}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->initializeMediaUpload(Lcom/google/api/client/http/b;)V

    return-void
.end method


# virtual methods
.method public getOnBehalfOf()Ljava/lang/String;
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .line 1764
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getSync()Ljava/lang/Boolean;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->sync:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1820
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1661
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1666
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1671
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1676
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setOnBehalfOf(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1735
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->onBehalfOf:Ljava/lang/String;

    return-object p0
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1779
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1719
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1681
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1686
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method

.method public setSync(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1814
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Captions$Update;->sync:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;
    .locals 0

    .line 1691
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Captions$Update;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 1601
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Captions$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Captions$Update;

    move-result-object p1

    return-object p1
.end method
