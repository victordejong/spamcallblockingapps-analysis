.class public final Lcom/google/api/services/youtube/model/MemberSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private creatorChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private memberDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private membershipsDetails:Lcom/google/api/services/youtube/model/MembershipsDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MemberSnippet;->clone()Lcom/google/api/services/youtube/model/MemberSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MemberSnippet;->clone()Lcom/google/api/services/youtube/model/MemberSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/MemberSnippet;
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/MemberSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MemberSnippet;->clone()Lcom/google/api/services/youtube/model/MemberSnippet;

    move-result-object v0

    return-object v0
.end method

.method public final getCreatorChannelId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MemberSnippet;->creatorChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemberDetails()Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MemberSnippet;->memberDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object v0
.end method

.method public final getMembershipsDetails()Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MemberSnippet;->membershipsDetails:Lcom/google/api/services/youtube/model/MembershipsDetails;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MemberSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MemberSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MemberSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MemberSnippet;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MemberSnippet;
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/MemberSnippet;

    return-object p1
.end method

.method public final setCreatorChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MemberSnippet;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MemberSnippet;->creatorChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setMemberDetails(Lcom/google/api/services/youtube/model/ChannelProfileDetails;)Lcom/google/api/services/youtube/model/MemberSnippet;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MemberSnippet;->memberDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object p0
.end method

.method public final setMembershipsDetails(Lcom/google/api/services/youtube/model/MembershipsDetails;)Lcom/google/api/services/youtube/model/MemberSnippet;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MemberSnippet;->membershipsDetails:Lcom/google/api/services/youtube/model/MembershipsDetails;

    return-object p0
.end method
