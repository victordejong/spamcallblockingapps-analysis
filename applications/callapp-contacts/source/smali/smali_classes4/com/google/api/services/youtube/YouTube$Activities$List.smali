.class public Lcom/google/api/services/youtube/YouTube$Activities$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Activities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/ActivityListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "activities"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private home:Ljava/lang/Boolean;
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

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedAfter:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishedBefore:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private regionCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Activities;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Activities;Ljava/lang/String;)V
    .locals 6

    .line 319
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->this$1:Lcom/google/api/services/youtube/YouTube$Activities;

    .line 320
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Activities;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/ActivityListResponse;

    const-string v2, "GET"

    const-string v3, "activities"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 321
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->part:Ljava/lang/String;

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

    .line 331
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

    .line 326
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getHome()Ljava/lang/Boolean;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->home:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getMine()Ljava/lang/Boolean;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->mine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedAfter()Lcom/google/api/client/a/l;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->publishedAfter:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public getPublishedBefore()Lcom/google/api/client/a/l;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->publishedBefore:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Activities$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Activities$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Activities$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 619
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Activities$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 336
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 341
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setHome(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->home:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 346
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->maxResults:Ljava/lang/Long;

    return-object p0
.end method

.method public setMine(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->mine:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 351
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->pageToken:Ljava/lang/String;

    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 356
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setPublishedAfter(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->publishedAfter:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public setPublishedBefore(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->publishedBefore:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 361
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Activities$List;->regionCode:Ljava/lang/String;

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;
    .locals 0

    .line 366
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Activities$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Activities$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Activities$List;

    move-result-object p1

    return-object p1
.end method
