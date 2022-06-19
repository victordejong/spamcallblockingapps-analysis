.class public final Lcom/google/api/services/youtube/model/MembershipsDuration;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private memberSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private memberTotalDurationMonths:Ljava/lang/Integer;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsDuration;->clone()Lcom/google/api/services/youtube/model/MembershipsDuration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsDuration;->clone()Lcom/google/api/services/youtube/model/MembershipsDuration;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/MembershipsDuration;
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/MembershipsDuration;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/MembershipsDuration;->clone()Lcom/google/api/services/youtube/model/MembershipsDuration;

    move-result-object v0

    return-object v0
.end method

.method public final getMemberSince()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDuration;->memberSince:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemberTotalDurationMonths()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/api/services/youtube/model/MembershipsDuration;->memberTotalDurationMonths:Ljava/lang/Integer;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MembershipsDuration;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsDuration;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/MembershipsDuration;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsDuration;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/MembershipsDuration;
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/MembershipsDuration;

    return-object p1
.end method

.method public final setMemberSince(Ljava/lang/String;)Lcom/google/api/services/youtube/model/MembershipsDuration;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDuration;->memberSince:Ljava/lang/String;

    return-object p0
.end method

.method public final setMemberTotalDurationMonths(Ljava/lang/Integer;)Lcom/google/api/services/youtube/model/MembershipsDuration;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/api/services/youtube/model/MembershipsDuration;->memberTotalDurationMonths:Ljava/lang/Integer;

    return-object p0
.end method
