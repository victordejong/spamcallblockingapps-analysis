.class public Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/Subscription;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "subscriptions"


# instance fields
.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Subscriptions;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Subscriptions;Ljava/lang/String;Lcom/google/api/services/youtube/model/Subscription;)V
    .locals 6

    .line 13244
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->this$1:Lcom/google/api/services/youtube/YouTube$Subscriptions;

    .line 13245
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Subscriptions;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/Subscription;

    const-string v2, "POST"

    const-string v3, "subscriptions"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 13246
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->part:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPart()Ljava/lang/String;
    .locals 1

    .line 13295
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13309
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13251
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13256
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13261
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13266
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13303
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13271
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13276
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;
    .locals 0

    .line 13281
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 13225
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Subscriptions$Insert;

    move-result-object p1

    return-object p1
.end method
