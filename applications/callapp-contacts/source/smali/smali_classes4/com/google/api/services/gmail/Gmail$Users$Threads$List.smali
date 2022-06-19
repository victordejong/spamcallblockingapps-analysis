.class public Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
.super Lcom/google/api/services/gmail/GmailRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Threads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/gmail/GmailRequest<",
        "Lcom/google/api/services/gmail/model/ListThreadsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "{userId}/threads"


# instance fields
.field private includeSpamTrash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private labelIds:Ljava/util/List;
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

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Threads;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Threads;Ljava/lang/String;)V
    .locals 6

    .line 9238
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Threads;

    .line 9239
    iget-object p1, p1, Lcom/google/api/services/gmail/Gmail$Users$Threads;->a:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, p1, Lcom/google/api/services/gmail/Gmail$Users;->a:Lcom/google/api/services/gmail/Gmail;

    const-class v5, Lcom/google/api/services/gmail/model/ListThreadsResponse;

    const-string v2, "GET"

    const-string v3, "{userId}/threads"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/gmail/GmailRequest;-><init>(Lcom/google/api/services/gmail/Gmail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter userId must be specified."

    .line 9240
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->userId:Ljava/lang/String;

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

    .line 9250
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

    .line 9245
    invoke-super {p0}, Lcom/google/api/services/gmail/GmailRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeSpamTrash()Ljava/lang/Boolean;
    .locals 1

    .line 9318
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLabelIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9361
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->labelIds:Ljava/util/List;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 9377
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 9393
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .line 9415
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 9299
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeSpamTrash()Z
    .locals 2

    .line 9348
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/api/client/a/j;->a:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 9351
    :cond_0
    iget-object v0, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9430
    invoke-super {p0, p1, p2}, Lcom/google/api/services/gmail/GmailRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9255
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9260
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setIncludeSpamTrash(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9323
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->includeSpamTrash:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9265
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setLabelIds(Ljava/util/List;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/gmail/Gmail$Users$Threads$List;"
        }
    .end annotation

    .line 9366
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->labelIds:Ljava/util/List;

    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9382
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9270
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9398
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9275
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setQ(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9424
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9280
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9307
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;
    .locals 0

    .line 9285
    invoke-super {p0, p1}, Lcom/google/api/services/gmail/GmailRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/GmailRequest;
    .locals 0

    .line 9220
    invoke-virtual {p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Threads$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Threads$List;

    move-result-object p1

    return-object p1
.end method
