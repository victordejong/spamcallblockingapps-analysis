.class public final Lcom/google/api/services/youtube/model/Video;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private ageGating:Lcom/google/api/services/youtube/model/VideoAgeGating;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentDetails:Lcom/google/api/services/youtube/model/VideoContentDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private fileDetails:Lcom/google/api/services/youtube/model/VideoFileDetails;
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

.field private liveStreamingDetails:Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
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
            "Lcom/google/api/services/youtube/model/VideoLocalization;",
            ">;"
        }
    .end annotation
.end field

.field private monetizationDetails:Lcom/google/api/services/youtube/model/VideoMonetizationDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private player:Lcom/google/api/services/youtube/model/VideoPlayer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private processingDetails:Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private projectDetails:Lcom/google/api/services/youtube/model/VideoProjectDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private recordingDetails:Lcom/google/api/services/youtube/model/VideoRecordingDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/VideoSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private statistics:Lcom/google/api/services/youtube/model/VideoStatistics;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private status:Lcom/google/api/services/youtube/model/VideoStatus;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private suggestions:Lcom/google/api/services/youtube/model/VideoSuggestions;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private topicDetails:Lcom/google/api/services/youtube/model/VideoTopicDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Video;->clone()Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Video;->clone()Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/Video;
    .locals 1

    .line 538
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/Video;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/Video;->clone()Lcom/google/api/services/youtube/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final getAgeGating()Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->ageGating:Lcom/google/api/services/youtube/model/VideoAgeGating;

    return-object v0
.end method

.method public final getContentDetails()Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->contentDetails:Lcom/google/api/services/youtube/model/VideoContentDetails;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileDetails()Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->fileDetails:Lcom/google/api/services/youtube/model/VideoFileDetails;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveStreamingDetails()Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->liveStreamingDetails:Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    return-object v0
.end method

.method public final getLocalizations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/VideoLocalization;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->localizations:Ljava/util/Map;

    return-object v0
.end method

.method public final getMonetizationDetails()Lcom/google/api/services/youtube/model/VideoMonetizationDetails;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->monetizationDetails:Lcom/google/api/services/youtube/model/VideoMonetizationDetails;

    return-object v0
.end method

.method public final getPlayer()Lcom/google/api/services/youtube/model/VideoPlayer;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->player:Lcom/google/api/services/youtube/model/VideoPlayer;

    return-object v0
.end method

.method public final getProcessingDetails()Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->processingDetails:Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    return-object v0
.end method

.method public final getProjectDetails()Lcom/google/api/services/youtube/model/VideoProjectDetails;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->projectDetails:Lcom/google/api/services/youtube/model/VideoProjectDetails;

    return-object v0
.end method

.method public final getRecordingDetails()Lcom/google/api/services/youtube/model/VideoRecordingDetails;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->recordingDetails:Lcom/google/api/services/youtube/model/VideoRecordingDetails;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/VideoSnippet;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->snippet:Lcom/google/api/services/youtube/model/VideoSnippet;

    return-object v0
.end method

.method public final getStatistics()Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->statistics:Lcom/google/api/services/youtube/model/VideoStatistics;

    return-object v0
.end method

.method public final getStatus()Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->status:Lcom/google/api/services/youtube/model/VideoStatus;

    return-object v0
.end method

.method public final getSuggestions()Lcom/google/api/services/youtube/model/VideoSuggestions;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->suggestions:Lcom/google/api/services/youtube/model/VideoSuggestions;

    return-object v0
.end method

.method public final getTopicDetails()Lcom/google/api/services/youtube/model/VideoTopicDetails;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/api/services/youtube/model/Video;->topicDetails:Lcom/google/api/services/youtube/model/VideoTopicDetails;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Video;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Video;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/Video;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Video;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 533
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/Video;

    return-object p1
.end method

.method public final setAgeGating(Lcom/google/api/services/youtube/model/VideoAgeGating;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->ageGating:Lcom/google/api/services/youtube/model/VideoAgeGating;

    return-object p0
.end method

.method public final setContentDetails(Lcom/google/api/services/youtube/model/VideoContentDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->contentDetails:Lcom/google/api/services/youtube/model/VideoContentDetails;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setFileDetails(Lcom/google/api/services/youtube/model/VideoFileDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->fileDetails:Lcom/google/api/services/youtube/model/VideoFileDetails;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setLiveStreamingDetails(Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->liveStreamingDetails:Lcom/google/api/services/youtube/model/VideoLiveStreamingDetails;

    return-object p0
.end method

.method public final setLocalizations(Ljava/util/Map;)Lcom/google/api/services/youtube/model/Video;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/VideoLocalization;",
            ">;)",
            "Lcom/google/api/services/youtube/model/Video;"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->localizations:Ljava/util/Map;

    return-object p0
.end method

.method public final setMonetizationDetails(Lcom/google/api/services/youtube/model/VideoMonetizationDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->monetizationDetails:Lcom/google/api/services/youtube/model/VideoMonetizationDetails;

    return-object p0
.end method

.method public final setPlayer(Lcom/google/api/services/youtube/model/VideoPlayer;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->player:Lcom/google/api/services/youtube/model/VideoPlayer;

    return-object p0
.end method

.method public final setProcessingDetails(Lcom/google/api/services/youtube/model/VideoProcessingDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->processingDetails:Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    return-object p0
.end method

.method public final setProjectDetails(Lcom/google/api/services/youtube/model/VideoProjectDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->projectDetails:Lcom/google/api/services/youtube/model/VideoProjectDetails;

    return-object p0
.end method

.method public final setRecordingDetails(Lcom/google/api/services/youtube/model/VideoRecordingDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->recordingDetails:Lcom/google/api/services/youtube/model/VideoRecordingDetails;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/VideoSnippet;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->snippet:Lcom/google/api/services/youtube/model/VideoSnippet;

    return-object p0
.end method

.method public final setStatistics(Lcom/google/api/services/youtube/model/VideoStatistics;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->statistics:Lcom/google/api/services/youtube/model/VideoStatistics;

    return-object p0
.end method

.method public final setStatus(Lcom/google/api/services/youtube/model/VideoStatus;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->status:Lcom/google/api/services/youtube/model/VideoStatus;

    return-object p0
.end method

.method public final setSuggestions(Lcom/google/api/services/youtube/model/VideoSuggestions;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->suggestions:Lcom/google/api/services/youtube/model/VideoSuggestions;

    return-object p0
.end method

.method public final setTopicDetails(Lcom/google/api/services/youtube/model/VideoTopicDetails;)Lcom/google/api/services/youtube/model/Video;
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/google/api/services/youtube/model/Video;->topicDetails:Lcom/google/api/services/youtube/model/VideoTopicDetails;

    return-object p0
.end method
