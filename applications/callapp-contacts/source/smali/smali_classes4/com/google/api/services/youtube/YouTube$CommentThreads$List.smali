.class public Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$CommentThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/CommentThreadListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "commentThreads"


# instance fields
.field private allThreadsRelatedToChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
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

.field private moderationStatus:Ljava/lang/String;
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

.field private searchTerms:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private textFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$CommentThreads;

.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$CommentThreads;Ljava/lang/String;)V
    .locals 6

    .line 3702
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->this$1:Lcom/google/api/services/youtube/YouTube$CommentThreads;

    .line 3703
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$CommentThreads;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/CommentThreadListResponse;

    const-string v2, "GET"

    const-string v3, "commentThreads"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 3704
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->part:Ljava/lang/String;

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

    .line 3714
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

    .line 3709
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getAllThreadsRelatedToChannelId()Ljava/lang/String;
    .locals 1

    .line 3788
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->allThreadsRelatedToChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 3814
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 3838
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 3866
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getModerationStatus()Ljava/lang/String;
    .locals 1

    .line 3894
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->moderationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 3922
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 3953
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 3763
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerms()Ljava/lang/String;
    .locals 1

    .line 3983
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->searchTerms:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFormat()Ljava/lang/String;
    .locals 1

    .line 4008
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->textFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 4031
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 4045
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setAllThreadsRelatedToChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3797
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->allThreadsRelatedToChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3719
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3823
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3724
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3846
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3729
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3876
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setModerationStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3903
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->moderationStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3734
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setOrder(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3932
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->order:Ljava/lang/String;

    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3964
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3771
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3739
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3744
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setSearchTerms(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3993
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->searchTerms:Ljava/lang/String;

    return-object p0
.end method

.method public setTextFormat(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 4016
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->textFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 3749
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 3684
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object p1

    return-object p1
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .line 4039
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->videoId:Ljava/lang/String;

    return-object p0
.end method
