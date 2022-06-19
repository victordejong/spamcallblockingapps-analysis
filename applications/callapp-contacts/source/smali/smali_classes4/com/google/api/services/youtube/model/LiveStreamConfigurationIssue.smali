.class public final Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private severity:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->clone()Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->clone()Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->clone()Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeverity()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->severity:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    return-object p1
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setReason(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final setSeverity(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->severity:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;->type:Ljava/lang/String;

    return-object p0
.end method
