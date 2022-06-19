.class public final Lcom/google/api/services/youtube/model/Sponsor;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/SponsorSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Sponsor;->clone()Lcom/google/api/services/youtube/model/Sponsor;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Sponsor;->clone()Lcom/google/api/services/youtube/model/Sponsor;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/Sponsor;
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Sponsor;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Sponsor;->clone()Lcom/google/api/services/youtube/model/Sponsor;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Sponsor;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Sponsor;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Sponsor;->snippet:Lcom/google/api/services/youtube/model/SponsorSnippet;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Sponsor;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Sponsor;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Sponsor;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Sponsor;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Sponsor;
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/Sponsor;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Sponsor;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Sponsor;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Sponsor;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Sponsor;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/SponsorSnippet;)Lcom/google/api/services/youtube/model/Sponsor;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Sponsor;->snippet:Lcom/google/api/services/youtube/model/SponsorSnippet;

    return-object p0
.end method
