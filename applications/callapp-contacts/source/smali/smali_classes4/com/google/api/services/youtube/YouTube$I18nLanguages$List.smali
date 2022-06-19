.class public Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$I18nLanguages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest<",
        "Lcom/google/api/services/youtube/model/I18nLanguageListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "i18nLanguages"


# instance fields
.field private hl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$I18nLanguages;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$I18nLanguages;Ljava/lang/String;)V
    .locals 6

    .line 5313
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->this$1:Lcom/google/api/services/youtube/YouTube$I18nLanguages;

    .line 5314
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages;->a:Lcom/google/api/services/youtube/YouTube;

    const-class v5, Lcom/google/api/services/youtube/model/I18nLanguageListResponse;

    const-string v2, "GET"

    const-string v3, "i18nLanguages"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter part must be specified."

    .line 5315
    invoke-static {p2, p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->part:Ljava/lang/String;

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

    .line 5325
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

    .line 5320
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .line 5397
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .line 5374
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/b;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5411
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5330
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5335
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setHl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5405
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->hl:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5340
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5345
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5382
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->part:Ljava/lang/String;

    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5350
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5355
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 0

    .line 5360
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    return-object p1
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 0

    .line 5295
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    move-result-object p1

    return-object p1
.end method
