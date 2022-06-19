.class public final Lcom/google/api/services/youtube/model/ChannelSection;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private contentDetails:Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private localizations:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelSectionLocalization;",
            ">;"
        }
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/ChannelSectionSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private targeting:Lcom/google/api/services/youtube/model/ChannelSectionTargeting;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSection;->clone()Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSection;->clone()Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelSection;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSection;->clone()Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDetails()Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->contentDetails:Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalizations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelSectionLocalization;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->localizations:Ljava/util/Map;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/ChannelSectionSnippet;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->snippet:Lcom/google/api/services/youtube/model/ChannelSectionSnippet;

    return-object v0
.end method

.method public final getTargeting()Lcom/google/api/services/youtube/model/ChannelSectionTargeting;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->targeting:Lcom/google/api/services/youtube/model/ChannelSectionTargeting;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSection;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSection;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 212
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelSection;

    return-object p1
.end method

.method public final setContentDetails(Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->contentDetails:Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocalizations(Ljava/util/Map;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelSectionLocalization;",
            ">;)",
            "Lcom/google/api/services/youtube/model/ChannelSection;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->localizations:Ljava/util/Map;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/ChannelSectionSnippet;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->snippet:Lcom/google/api/services/youtube/model/ChannelSectionSnippet;

    return-object p0
.end method

.method public final setTargeting(Lcom/google/api/services/youtube/model/ChannelSectionTargeting;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->targeting:Lcom/google/api/services/youtube/model/ChannelSectionTargeting;

    return-object p0
.end method
