.class public Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$LiveChatBans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Delete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "liveChat/bans"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$LiveChatBans;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$LiveChatBans;Ljava/lang/String;)V
    .locals 6

    .line 7614
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->this$1:Lcom/google/api/services/youtube/YouTube$LiveChatBans;

    .line 7615
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Ljava/lang/Void;

    const-string v2, "DELETE"

    const-string v3, "liveChat/bans"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter id must be specified."

    .line 7616
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 7665
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7679
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7621
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7626
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7673
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7631
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7636
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7641
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7646
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 0

    .line 7651
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 7596
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    move-result-object p1

    return-object p1
.end method
