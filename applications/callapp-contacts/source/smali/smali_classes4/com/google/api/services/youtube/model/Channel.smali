.class public final Lcom/google/api/services/youtube/model/Channel;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private auditDetails:Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private brandingSettings:Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentDetails:Lcom/google/api/services/youtube/model/ChannelContentDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentOwnerDetails:Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private conversionPings:Lcom/google/api/services/youtube/model/ChannelConversionPings;
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

.field private invideoPromotion:Lcom/google/api/services/youtube/model/InvideoPromotion;
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
            "Lcom/google/api/services/youtube/model/ChannelLocalization;",
            ">;"
        }
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/ChannelSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private statistics:Lcom/google/api/services/youtube/model/ChannelStatistics;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private status:Lcom/google/api/services/youtube/model/ChannelStatus;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private topicDetails:Lcom/google/api/services/youtube/model/ChannelTopicDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Channel;->clone()Lcom/google/api/services/youtube/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Channel;->clone()Lcom/google/api/services/youtube/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/Channel;
    .locals 1

    .line 397
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Channel;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Channel;->clone()Lcom/google/api/services/youtube/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final getAuditDetails()Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->auditDetails:Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    return-object v0
.end method

.method public final getBrandingSettings()Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->brandingSettings:Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    return-object v0
.end method

.method public final getContentDetails()Lcom/google/api/services/youtube/model/ChannelContentDetails;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->contentDetails:Lcom/google/api/services/youtube/model/ChannelContentDetails;

    return-object v0
.end method

.method public final getContentOwnerDetails()Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->contentOwnerDetails:Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    return-object v0
.end method

.method public final getConversionPings()Lcom/google/api/services/youtube/model/ChannelConversionPings;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->conversionPings:Lcom/google/api/services/youtube/model/ChannelConversionPings;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInvideoPromotion()Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->invideoPromotion:Lcom/google/api/services/youtube/model/InvideoPromotion;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalizations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelLocalization;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->localizations:Ljava/util/Map;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/ChannelSnippet;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->snippet:Lcom/google/api/services/youtube/model/ChannelSnippet;

    return-object v0
.end method

.method public final getStatistics()Lcom/google/api/services/youtube/model/ChannelStatistics;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->statistics:Lcom/google/api/services/youtube/model/ChannelStatistics;

    return-object v0
.end method

.method public final getStatus()Lcom/google/api/services/youtube/model/ChannelStatus;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->status:Lcom/google/api/services/youtube/model/ChannelStatus;

    return-object v0
.end method

.method public final getTopicDetails()Lcom/google/api/services/youtube/model/ChannelTopicDetails;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Channel;->topicDetails:Lcom/google/api/services/youtube/model/ChannelTopicDetails;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Channel;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Channel;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Channel;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Channel;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 392
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/Channel;

    return-object p1
.end method

.method public final setAuditDetails(Lcom/google/api/services/youtube/model/ChannelAuditDetails;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->auditDetails:Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    return-object p0
.end method

.method public final setBrandingSettings(Lcom/google/api/services/youtube/model/ChannelBrandingSettings;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->brandingSettings:Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    return-object p0
.end method

.method public final setContentDetails(Lcom/google/api/services/youtube/model/ChannelContentDetails;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->contentDetails:Lcom/google/api/services/youtube/model/ChannelContentDetails;

    return-object p0
.end method

.method public final setContentOwnerDetails(Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->contentOwnerDetails:Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    return-object p0
.end method

.method public final setConversionPings(Lcom/google/api/services/youtube/model/ChannelConversionPings;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->conversionPings:Lcom/google/api/services/youtube/model/ChannelConversionPings;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setInvideoPromotion(Lcom/google/api/services/youtube/model/InvideoPromotion;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->invideoPromotion:Lcom/google/api/services/youtube/model/InvideoPromotion;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocalizations(Ljava/util/Map;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelLocalization;",
            ">;)",
            "Lcom/google/api/services/youtube/model/Channel;"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->localizations:Ljava/util/Map;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/ChannelSnippet;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->snippet:Lcom/google/api/services/youtube/model/ChannelSnippet;

    return-object p0
.end method

.method public final setStatistics(Lcom/google/api/services/youtube/model/ChannelStatistics;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->statistics:Lcom/google/api/services/youtube/model/ChannelStatistics;

    return-object p0
.end method

.method public final setStatus(Lcom/google/api/services/youtube/model/ChannelStatus;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->status:Lcom/google/api/services/youtube/model/ChannelStatus;

    return-object p0
.end method

.method public final setTopicDetails(Lcom/google/api/services/youtube/model/ChannelTopicDetails;)Lcom/google/api/services/youtube/model/Channel;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Channel;->topicDetails:Lcom/google/api/services/youtube/model/ChannelTopicDetails;

    return-object p0
.end method
