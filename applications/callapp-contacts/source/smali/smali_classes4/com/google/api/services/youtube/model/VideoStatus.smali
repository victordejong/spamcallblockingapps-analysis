.class public final Lcom/google/api/services/youtube/model/VideoStatus;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private embeddable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private failureReason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private license:Ljava/lang/String;
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

.field private publicStatsViewable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private publishAt:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private rejectionReason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private selfDeclaredMadeForKids:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private uploadStatus:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoStatus;->clone()Lcom/google/api/services/youtube/model/VideoStatus;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoStatus;->clone()Lcom/google/api/services/youtube/model/VideoStatus;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoStatus;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoStatus;->clone()Lcom/google/api/services/youtube/model/VideoStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getEmbeddable()Ljava/lang/Boolean;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->embeddable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFailureReason()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicense()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->license:Ljava/lang/String;

    return-object v0
.end method

.method public final getMadeForKids()Ljava/lang/Boolean;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->madeForKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPrivacyStatus()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->privacyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicStatsViewable()Ljava/lang/Boolean;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->publicStatsViewable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPublishAt()Lcom/google/api/client/a/l;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->publishAt:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getRejectionReason()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->rejectionReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelfDeclaredMadeForKids()Ljava/lang/Boolean;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->selfDeclaredMadeForKids:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUploadStatus()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatus;->uploadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoStatus;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoStatus;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 287
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoStatus;

    return-object p1
.end method

.method public final setEmbeddable(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->embeddable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setFailureReason(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->failureReason:Ljava/lang/String;

    return-object p0
.end method

.method public final setLicense(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->license:Ljava/lang/String;

    return-object p0
.end method

.method public final setMadeForKids(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->madeForKids:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->privacyStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final setPublicStatsViewable(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->publicStatsViewable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPublishAt(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->publishAt:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setRejectionReason(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->rejectionReason:Ljava/lang/String;

    return-object p0
.end method

.method public final setSelfDeclaredMadeForKids(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->selfDeclaredMadeForKids:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setUploadStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatus;->uploadStatus:Ljava/lang/String;

    return-object p0
.end method
