.class public final Lcom/google/api/services/youtube/model/SponsorSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private cumulativeDurationMonths:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sponsorDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sponsorSince:Lcom/google/api/client/a/l;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SponsorSnippet;->clone()Lcom/google/api/services/youtube/model/SponsorSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SponsorSnippet;->clone()Lcom/google/api/services/youtube/model/SponsorSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/SponsorSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SponsorSnippet;->clone()Lcom/google/api/services/youtube/model/SponsorSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCumulativeDurationMonths()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->cumulativeDurationMonths:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSponsorDetails()Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->sponsorDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object v0
.end method

.method public final getSponsorSince()Lcom/google/api/client/a/l;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->sponsorSince:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SponsorSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SponsorSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SponsorSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SponsorSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/SponsorSnippet;

    return-object p1
.end method

.method public final setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCumulativeDurationMonths(Ljava/lang/Integer;)Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->cumulativeDurationMonths:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setSponsorDetails(Lcom/google/api/services/youtube/model/ChannelProfileDetails;)Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->sponsorDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object p0
.end method

.method public final setSponsorSince(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/SponsorSnippet;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SponsorSnippet;->sponsorSince:Lcom/google/api/client/a/l;

    return-object p0
.end method
