.class public final Lcom/google/api/services/youtube/model/LiveStream;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private cdn:Lcom/google/api/services/youtube/model/CdnSettings;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentDetails:Lcom/google/api/services/youtube/model/LiveStreamContentDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
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

.field private snippet:Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private status:Lcom/google/api/services/youtube/model/LiveStreamStatus;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStream;->clone()Lcom/google/api/services/youtube/model/LiveStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStream;->clone()Lcom/google/api/services/youtube/model/LiveStream;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveStream;
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStream;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStream;->clone()Lcom/google/api/services/youtube/model/LiveStream;

    move-result-object v0

    return-object v0
.end method

.method public final getCdn()Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->cdn:Lcom/google/api/services/youtube/model/CdnSettings;

    return-object v0
.end method

.method public final getContentDetails()Lcom/google/api/services/youtube/model/LiveStreamContentDetails;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->contentDetails:Lcom/google/api/services/youtube/model/LiveStreamContentDetails;

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Lcom/google/api/services/youtube/model/LiveStreamSnippet;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->snippet:Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    return-object v0
.end method

.method public final getStatus()Lcom/google/api/services/youtube/model/LiveStreamStatus;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStream;->status:Lcom/google/api/services/youtube/model/LiveStreamStatus;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStream;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStream;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStream;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStream;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveStream;

    return-object p1
.end method

.method public final setCdn(Lcom/google/api/services/youtube/model/CdnSettings;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->cdn:Lcom/google/api/services/youtube/model/CdnSettings;

    return-object p0
.end method

.method public final setContentDetails(Lcom/google/api/services/youtube/model/LiveStreamContentDetails;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->contentDetails:Lcom/google/api/services/youtube/model/LiveStreamContentDetails;

    return-object p0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setSnippet(Lcom/google/api/services/youtube/model/LiveStreamSnippet;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->snippet:Lcom/google/api/services/youtube/model/LiveStreamSnippet;

    return-object p0
.end method

.method public final setStatus(Lcom/google/api/services/youtube/model/LiveStreamStatus;)Lcom/google/api/services/youtube/model/LiveStream;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStream;->status:Lcom/google/api/services/youtube/model/LiveStreamStatus;

    return-object p0
.end method
