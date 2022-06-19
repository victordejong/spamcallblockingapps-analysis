.class public final Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private boundStreamId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private boundStreamLastUpdateTimeMs:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private closedCaptionsType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private enableAutoStart:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private enableClosedCaptions:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private enableContentEncryption:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private enableDvr:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private enableEmbed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private enableLowLatency:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private latencyPreference:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private mesh:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private monitorStream:Lcom/google/api/services/youtube/model/MonitorStreamInfo;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private projection:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private recordFromStart:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private startWithSlate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private stereoLayout:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 1

    .line 530
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->clone()Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public final decodeMesh()[B
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->mesh:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodeMesh([B)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 416
    invoke-static {p1}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->mesh:Ljava/lang/String;

    return-object p0
.end method

.method public final getBoundStreamId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBoundStreamLastUpdateTimeMs()Lcom/google/api/client/a/l;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamLastUpdateTimeMs:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getClosedCaptionsType()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->closedCaptionsType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableAutoStart()Ljava/lang/Boolean;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableAutoStart:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableClosedCaptions()Ljava/lang/Boolean;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableClosedCaptions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableContentEncryption()Ljava/lang/Boolean;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableContentEncryption:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableDvr()Ljava/lang/Boolean;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableDvr:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableEmbed()Ljava/lang/Boolean;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableEmbed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableLowLatency()Ljava/lang/Boolean;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableLowLatency:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLatencyPreference()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->latencyPreference:Ljava/lang/String;

    return-object v0
.end method

.method public final getMesh()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->mesh:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonitorStream()Lcom/google/api/services/youtube/model/MonitorStreamInfo;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->monitorStream:Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    return-object v0
.end method

.method public final getProjection()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->projection:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordFromStart()Ljava/lang/Boolean;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->recordFromStart:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStartWithSlate()Ljava/lang/Boolean;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->startWithSlate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStereoLayout()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->stereoLayout:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 525
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;

    return-object p1
.end method

.method public final setBoundStreamId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamId:Ljava/lang/String;

    return-object p0
.end method

.method public final setBoundStreamLastUpdateTimeMs(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->boundStreamLastUpdateTimeMs:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setClosedCaptionsType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->closedCaptionsType:Ljava/lang/String;

    return-object p0
.end method

.method public final setEnableAutoStart(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableAutoStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setEnableClosedCaptions(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableClosedCaptions:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setEnableContentEncryption(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableContentEncryption:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setEnableDvr(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableDvr:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setEnableEmbed(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableEmbed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setEnableLowLatency(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->enableLowLatency:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setLatencyPreference(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->latencyPreference:Ljava/lang/String;

    return-object p0
.end method

.method public final setMesh(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->mesh:Ljava/lang/String;

    return-object p0
.end method

.method public final setMonitorStream(Lcom/google/api/services/youtube/model/MonitorStreamInfo;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->monitorStream:Lcom/google/api/services/youtube/model/MonitorStreamInfo;

    return-object p0
.end method

.method public final setProjection(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->projection:Ljava/lang/String;

    return-object p0
.end method

.method public final setRecordFromStart(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->recordFromStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setStartWithSlate(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->startWithSlate:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setStereoLayout(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveBroadcastContentDetails;->stereoLayout:Ljava/lang/String;

    return-object p0
.end method
