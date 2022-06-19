.class public Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$LiveChatMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "liveChat/messages"


# instance fields
.field private hl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private liveChatId:Ljava/lang/String;
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

.field private profileImageSize:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$LiveChatMessages;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$LiveChatMessages;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 8066
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->this$1:Lcom/google/api/services/youtube/YouTube$LiveChatMessages;

    .line 8067
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/LiveChatMessageListResponse;

    const-string v2, "GET"

    const-string v3, "liveChat/messages"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter liveChatId must be specified."

    .line 8068
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->liveChatId:Ljava/lang/String;

    const-string p1, "Required parameter part must be specified."

    .line 8069
    invoke-static {p3, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->part:Ljava/lang/String;

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

    .line 8079
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

    .line 8074
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .line 8178
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveChatId()Ljava/lang/String;
    .locals 1

    .line 8124
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->liveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 8207
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 8231
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 8144
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageSize()Ljava/lang/Long;
    .locals 1

    .line 8257
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->profileImageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8271
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8084
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8089
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setHl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8192
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->hl:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8094
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8129
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->liveChatId:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8215
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8099
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8240
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8152
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8104
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setProfileImageSize(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8265
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->profileImageSize:Ljava/lang/Long;

    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8109
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;
    .locals 0

    .line 8114
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatMessages$List;

    move-result-object p1

    return-object p1
.end method
