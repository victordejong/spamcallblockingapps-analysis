.class public final Lcom/google/api/services/youtube/model/ChannelAuditDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private communityGuidelinesGoodStanding:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentIdClaimsGoodStanding:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private copyrightStrikesGoodStanding:Ljava/lang/Boolean;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->clone()Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->clone()Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->clone()Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getCommunityGuidelinesGoodStanding()Ljava/lang/Boolean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->communityGuidelinesGoodStanding:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getContentIdClaimsGoodStanding()Ljava/lang/Boolean;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->contentIdClaimsGoodStanding:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCopyrightStrikesGoodStanding()Ljava/lang/Boolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->copyrightStrikesGoodStanding:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelAuditDetails;

    return-object p1
.end method

.method public final setCommunityGuidelinesGoodStanding(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->communityGuidelinesGoodStanding:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setContentIdClaimsGoodStanding(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->contentIdClaimsGoodStanding:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCopyrightStrikesGoodStanding(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/ChannelAuditDetails;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelAuditDetails;->copyrightStrikesGoodStanding:Ljava/lang/Boolean;

    return-object p0
.end method
