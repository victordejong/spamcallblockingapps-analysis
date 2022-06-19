.class public Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$CommentThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/CommentThread;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "commentThreads"


# instance fields
.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$CommentThreads;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$CommentThreads;Ljava/lang/String;Lcom/google/api/services/youtube/model/CommentThread;)V
    .locals 6

    .line 4088
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->this$1:Lcom/google/api/services/youtube/YouTube$CommentThreads;

    .line 4089
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$CommentThreads;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/CommentThread;

    const-string v2, "PUT"

    const-string v3, "commentThreads"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 4090
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->part:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPart()Ljava/lang/String;
    .locals 1

    .line 4142
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4158
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4095
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4100
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4105
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4110
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4152
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4115
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4120
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;
    .locals 0

    .line 4125
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4068
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$Update;

    move-result-object p1

    return-object p1
.end method
