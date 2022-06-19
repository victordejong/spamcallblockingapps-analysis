.class public Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$SuperChatEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/SuperChatEventListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "superChatEvents"


# instance fields
.field private hl:Ljava/lang/String;
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

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$SuperChatEvents;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$SuperChatEvents;Ljava/lang/String;)V
    .locals 6

    .line 13828
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->this$1:Lcom/google/api/services/youtube/YouTube$SuperChatEvents;

    .line 13829
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/SuperChatEventListResponse;

    const-string v2, "GET"

    const-string v3, "superChatEvents"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 13830
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->part:Ljava/lang/String;

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

    .line 13840
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/q;

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

    .line 13835
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .line 13923
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 13952
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 13977
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 13889
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13992
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13845
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13850
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setHl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13937
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->hl:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13855
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13960
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13860
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13986
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13897
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13865
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13870
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;
    .locals 0

    .line 13875
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13810
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$SuperChatEvents$List;

    move-result-object p1

    return-object p1
.end method
