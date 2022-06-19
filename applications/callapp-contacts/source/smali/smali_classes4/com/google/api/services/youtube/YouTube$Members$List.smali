.class public Lcom/google/api/services/youtube/YouTube$Members$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Members;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/MemberListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "members"


# instance fields
.field private filterByMemberChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private hasAccessToLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private mode:Ljava/lang/String;
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

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Members;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Members;Ljava/lang/String;)V
    .locals 6

    .line 9792
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->this$1:Lcom/google/api/services/youtube/YouTube$Members;

    .line 9793
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Members;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/MemberListResponse;

    const-string v2, "GET"

    const-string v3, "members"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 9794
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->part:Ljava/lang/String;

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

    .line 9804
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

    .line 9799
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getFilterByMemberChannelId()Ljava/lang/String;
    .locals 1

    .line 9879
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->filterByMemberChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getHasAccessToLevel()Ljava/lang/String;
    .locals 1

    .line 9906
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->hasAccessToLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 9930
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 9950
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 9972
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 9853
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Members$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Members$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Members$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9987
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Members$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9809
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9814
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setFilterByMemberChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9889
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->filterByMemberChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setHasAccessToLevel(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9915
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->hasAccessToLevel:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9819
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9938
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setMode(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9955
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->mode:Ljava/lang/String;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9824
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9981
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9861
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Members$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9829
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9834
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;
    .locals 0

    .line 9839
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Members$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 9774
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Members$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Members$List;

    move-result-object p1

    return-object p1
.end method
