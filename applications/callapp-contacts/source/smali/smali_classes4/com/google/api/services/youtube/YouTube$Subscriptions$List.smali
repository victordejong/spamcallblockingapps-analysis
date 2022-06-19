.class public Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/SubscriptionListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "subscriptions"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private forChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private mine:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private myRecentSubscribers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private mySubscribers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private onBehalfOfContentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private onBehalfOfContentOwnerChannel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private order:Ljava/lang/String;
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

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Subscriptions;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Subscriptions;Ljava/lang/String;)V
    .locals 6

    .line 13358
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->this$1:Lcom/google/api/services/youtube/YouTube$Subscriptions;

    .line 13359
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Subscriptions;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/SubscriptionListResponse;

    const-string v2, "GET"

    const-string v3, "subscriptions"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 13360
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->part:Ljava/lang/String;

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

    .line 13370
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

    .line 13365
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 13457
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getForChannelId()Ljava/lang/String;
    .locals 1

    .line 13480
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->forChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 13505
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 13529
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getMine()Ljava/lang/Boolean;
    .locals 1

    .line 13551
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMyRecentSubscribers()Ljava/lang/Boolean;
    .locals 1

    .line 13574
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->myRecentSubscribers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMySubscribers()Ljava/lang/Boolean;
    .locals 1

    .line 13597
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mySubscribers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .line 13634
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getOnBehalfOfContentOwnerChannel()Ljava/lang/String;
    .locals 1

    .line 13690
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 13726
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 13751
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 13429
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13766
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13375
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13465
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13380
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setForChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13488
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->forChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13514
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13385
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13537
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setMine(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13559
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mine:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMyRecentSubscribers(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13582
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->myRecentSubscribers:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMySubscribers(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13605
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->mySubscribers:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13390
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13649
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object p0
.end method

.method public setOnBehalfOfContentOwnerChannel(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13711
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->onBehalfOfContentOwnerChannel:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13734
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->order:Ljava/lang/String;

    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13760
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13442
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13395
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13400
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;
    .locals 0

    .line 13405
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13335
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$List;

    move-result-object p1

    return-object p1
.end method
