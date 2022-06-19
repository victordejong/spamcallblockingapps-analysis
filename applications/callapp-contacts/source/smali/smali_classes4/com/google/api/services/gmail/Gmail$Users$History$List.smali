.class public Lcom/google/api/services/gmail/Gmail$Users$History$List;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest<",
        "Lcom/google/api/services/gmail/model/ListHistoryResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/history"


# instance fields
.field private historyTypes:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private labelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private startHistoryId:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$History;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$History;Ljava/lang/String;)V
    .locals 6

    .line 1530
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->this$2:Lcom/google/api/services/gmail/Gmail$Users$History;

    .line 1531
    iget-object p1, p1, Lcom/google/api/services/gmail/Gmail$Users$History;->a:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, p1, Lcom/google/api/services/gmail/Gmail$Users;->a:Lcom/google/api/services/gmail/Gmail;

    const-class v5, Lcom/google/api/services/gmail/model/ListHistoryResponse;

    const-string v2, "GET"

    const-string v3, "{userId}/history"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter userId must be specified."

    .line 1532
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->userId:Ljava/lang/String;

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

    .line 1542
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/q;

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

    .line 1537
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1610
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->historyTypes:Ljava/util/List;

    return-object v0
.end method

.method public getLabelId()Ljava/lang/String;
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->labelId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStartHistoryId()Ljava/math/BigInteger;
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->startHistoryId:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1712
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1547
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1552
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setHistoryTypes(Ljava/util/List;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/Gmail$Users$History$List;"
        }
    .end annotation

    .line 1615
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->historyTypes:Ljava/util/List;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1557
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setLabelId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1631
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->labelId:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1647
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1562
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1663
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1567
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1572
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method

.method public setStartHistoryId(Ljava/math/BigInteger;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1706
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->startHistoryId:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1599
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$History$List;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;
    .locals 0

    .line 1577
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$History$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$History$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$History$List;

    move-result-object p1

    return-object p1
.end method
