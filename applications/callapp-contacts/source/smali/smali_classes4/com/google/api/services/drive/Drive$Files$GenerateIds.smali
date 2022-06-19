.class public Lcom/google/api/services/drive/Drive$Files$GenerateIds;
.super Lcom/google/api/services/drive/DriveRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenerateIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest<",
        "Lcom/google/api/services/drive/model/GeneratedIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/generateIds"


# instance fields
.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private space:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Files;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Files;)V
    .locals 6

    .line 4644
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->this$1:Lcom/google/api/services/drive/Drive$Files;

    .line 4645
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Files;->a:Lcom/google/api/services/drive/Drive;

    const-class v5, Lcom/google/api/services/drive/model/GeneratedIds;

    const-string v2, "GET"

    const-string v3, "files/generateIds"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4655
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/q;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4650
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .line 4700
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .locals 1

    .line 4720
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->space:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4734
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4660
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setCount(Ljava/lang/Integer;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4705
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4665
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4670
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4675
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4680
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4685
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method

.method public setSpace(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4728
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->space:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 0

    .line 4690
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 0

    .line 4627
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    move-result-object p1

    return-object p1
.end method
