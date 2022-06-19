.class public final Lcom/google/api/services/youtube/model/VideoFileDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private audioStreams:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private bitrateBps:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private container:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private creationTime:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private durationMs:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private fileSize:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private fileType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private videoStreams:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoFileDetailsVideoStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoFileDetails;->clone()Lcom/google/api/services/youtube/model/VideoFileDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoFileDetails;->clone()Lcom/google/api/services/youtube/model/VideoFileDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoFileDetails;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoFileDetails;->clone()Lcom/google/api/services/youtube/model/VideoFileDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getAudioStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public final getBitrateBps()Ljava/math/BigInteger;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->bitrateBps:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->container:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreationTime()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->creationTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationMs()Ljava/math/BigInteger;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->durationMs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()Ljava/math/BigInteger;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->fileSize:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getFileType()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoFileDetailsVideoStream;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoFileDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoFileDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoFileDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoFileDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 280
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoFileDetails;

    return-object p1
.end method

.method public final setAudioStreams(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoFileDetails;"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->audioStreams:Ljava/util/List;

    return-object p0
.end method

.method public final setBitrateBps(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->bitrateBps:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setContainer(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->container:Ljava/lang/String;

    return-object p0
.end method

.method public final setCreationTime(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->creationTime:Ljava/lang/String;

    return-object p0
.end method

.method public final setDurationMs(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->durationMs:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setFileName(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final setFileSize(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->fileSize:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setFileType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->fileType:Ljava/lang/String;

    return-object p0
.end method

.method public final setVideoStreams(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoFileDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/VideoFileDetailsVideoStream;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoFileDetails;"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetails;->videoStreams:Ljava/util/List;

    return-object p0
.end method
