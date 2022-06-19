.class public Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$PlaylistItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/PlaylistItemListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "playlistItems"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private onBehalfOfContentOwner:Ljava/lang/String;
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

.field private playlistId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$PlaylistItems;

.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$PlaylistItems;Ljava/lang/String;)V
    .locals 6

    .line 10498
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->this$1:Lcom/google/api/services/youtube/YouTube$PlaylistItems;

    .line 10499
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/PlaylistItemListResponse;

    const-string v2, "GET"

    const-string v3, "playlistItems"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 10500
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->part:Ljava/lang/String;

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

    .line 10510
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

    .line 10505
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 10597
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 10619
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getOnBehalfOfContentOwner()Ljava/lang/String;
    .locals 1

    .line 10656
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 10688
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 10570
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 10715
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 10740
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10754
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10515
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10520
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10604
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10525
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10627
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10530
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setOnBehalfOfContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10671
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->onBehalfOfContentOwner:Ljava/lang/String;

    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10697
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10584
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10725
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->playlistId:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10535
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10540
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10545
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 10473
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;

    move-result-object p1

    return-object p1
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;
    .locals 0

    .line 10748
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;->videoId:Ljava/lang/String;

    return-object p0
.end method
