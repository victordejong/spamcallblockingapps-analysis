.class public final Lcom/google/api/services/youtube/model/VideoProcessingDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private editorSuggestionsAvailability:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private fileDetailsAvailability:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private processingFailureReason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private processingIssuesAvailability:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private processingProgress:Lcom/google/api/services/youtube/model/VideoProcessingDetailsProcessingProgress;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private processingStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private tagSuggestionsAvailability:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private thumbnailsAvailability:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->clone()Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->clone()Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->clone()Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getEditorSuggestionsAvailability()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->editorSuggestionsAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileDetailsAvailability()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->fileDetailsAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessingFailureReason()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingFailureReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessingIssuesAvailability()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingIssuesAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessingProgress()Lcom/google/api/services/youtube/model/VideoProcessingDetailsProcessingProgress;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingProgress:Lcom/google/api/services/youtube/model/VideoProcessingDetailsProcessingProgress;

    return-object v0
.end method

.method public final getProcessingStatus()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getTagSuggestionsAvailability()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->tagSuggestionsAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailsAvailability()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->thumbnailsAvailability:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 269
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoProcessingDetails;

    return-object p1
.end method

.method public final setEditorSuggestionsAvailability(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->editorSuggestionsAvailability:Ljava/lang/String;

    return-object p0
.end method

.method public final setFileDetailsAvailability(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->fileDetailsAvailability:Ljava/lang/String;

    return-object p0
.end method

.method public final setProcessingFailureReason(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingFailureReason:Ljava/lang/String;

    return-object p0
.end method

.method public final setProcessingIssuesAvailability(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingIssuesAvailability:Ljava/lang/String;

    return-object p0
.end method

.method public final setProcessingProgress(Lcom/google/api/services/youtube/model/VideoProcessingDetailsProcessingProgress;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingProgress:Lcom/google/api/services/youtube/model/VideoProcessingDetailsProcessingProgress;

    return-object p0
.end method

.method public final setProcessingStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->processingStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final setTagSuggestionsAvailability(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->tagSuggestionsAvailability:Ljava/lang/String;

    return-object p0
.end method

.method public final setThumbnailsAvailability(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoProcessingDetails;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoProcessingDetails;->thumbnailsAvailability:Ljava/lang/String;

    return-object p0
.end method
