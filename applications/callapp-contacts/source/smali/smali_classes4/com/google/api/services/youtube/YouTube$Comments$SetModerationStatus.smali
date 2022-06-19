.class public Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Comments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetModerationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "comments/setModerationStatus"


# instance fields
.field private banAuthor:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private moderationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Comments;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 4786
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->this$1:Lcom/google/api/services/youtube/YouTube$Comments;

    .line 4787
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Comments;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Ljava/lang/Void;

    const-string v2, "POST"

    const-string v3, "comments/setModerationStatus"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter id must be specified."

    .line 4788
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->id:Ljava/lang/String;

    const-string p1, "Required parameter moderationStatus must be specified."

    .line 4789
    invoke-static {p3, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->moderationStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBanAuthor()Ljava/lang/Boolean;
    .locals 1

    .line 4884
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 4838
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModerationStatus()Ljava/lang/String;
    .locals 1

    .line 4857
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->moderationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isBanAuthor()Z
    .locals 2

    .line 4923
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/api/client/a/j;->a:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4926
    :cond_0
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

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

    .line 4765
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4931
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4794
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setBanAuthor(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4896
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4799
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4846
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4804
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setModerationStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4862
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->moderationStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4809
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4814
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4819
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .line 4824
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 4765
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object p1

    return-object p1
.end method
