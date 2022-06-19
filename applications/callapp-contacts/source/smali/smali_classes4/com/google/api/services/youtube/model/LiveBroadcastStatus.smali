.class public final Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private lifeCycleStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private liveBroadcastPriority:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private madeForKids:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private privacyStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private recordingStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private selfDeclaredMadeForKids:Ljava/lang/Boolean;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getLifeCycleStatus()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->lifeCycleStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveBroadcastPriority()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->liveBroadcastPriority:Ljava/lang/String;

    return-object v0
.end method

.method public final getMadeForKids()Ljava/lang/Boolean;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->madeForKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPrivacyStatus()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->privacyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordingStatus()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->recordingStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelfDeclaredMadeForKids()Ljava/lang/Boolean;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->selfDeclaredMadeForKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;

    return-object p1
.end method

.method public final setLifeCycleStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->lifeCycleStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final setLiveBroadcastPriority(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->liveBroadcastPriority:Ljava/lang/String;

    return-object p0
.end method

.method public final setMadeForKids(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->madeForKids:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->privacyStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final setRecordingStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->recordingStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final setSelfDeclaredMadeForKids(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastStatus;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastStatus;->selfDeclaredMadeForKids:Ljava/lang/Boolean;

    return-object p0
.end method
