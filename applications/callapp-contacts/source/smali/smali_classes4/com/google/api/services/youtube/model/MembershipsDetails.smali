.class public final Lcom/google/api/services/youtube/model/MembershipsDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private accessibleLevels:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private highestAccessibleLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private highestAccessibleLevelDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private membershipsDuration:Lcom/google/api/services/youtube/model/MembershipsDuration;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private membershipsDurationAtLevels:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/MembershipsDurationAtLevel;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsDetails;->clone()Lcom/google/api/services/youtube/model/MembershipsDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsDetails;->clone()Lcom/google/api/services/youtube/model/MembershipsDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/MembershipsDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsDetails;->clone()Lcom/google/api/services/youtube/model/MembershipsDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessibleLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->accessibleLevels:Ljava/util/List;

    return-object v0
.end method

.method public final getHighestAccessibleLevel()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->highestAccessibleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final getHighestAccessibleLevelDisplayName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->highestAccessibleLevelDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMembershipsDuration()Lcom/google/api/services/youtube/model/MembershipsDuration;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->membershipsDuration:Lcom/google/api/services/youtube/model/MembershipsDuration;

    return-object v0
.end method

.method public final getMembershipsDurationAtLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/MembershipsDurationAtLevel;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->membershipsDurationAtLevels:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MembershipsDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MembershipsDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/MembershipsDetails;

    return-object p1
.end method

.method public final setAccessibleLevels(Ljava/util/List;)Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/MembershipsDetails;"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->accessibleLevels:Ljava/util/List;

    return-object p0
.end method

.method public final setHighestAccessibleLevel(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->highestAccessibleLevel:Ljava/lang/String;

    return-object p0
.end method

.method public final setHighestAccessibleLevelDisplayName(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->highestAccessibleLevelDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public final setMembershipsDuration(Lcom/google/api/services/youtube/model/MembershipsDuration;)Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->membershipsDuration:Lcom/google/api/services/youtube/model/MembershipsDuration;

    return-object p0
.end method

.method public final setMembershipsDurationAtLevels(Ljava/util/List;)Lcom/google/api/services/youtube/model/MembershipsDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/MembershipsDurationAtLevel;",
            ">;)",
            "Lcom/google/api/services/youtube/model/MembershipsDetails;"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDetails;->membershipsDurationAtLevels:Ljava/util/List;

    return-object p0
.end method
