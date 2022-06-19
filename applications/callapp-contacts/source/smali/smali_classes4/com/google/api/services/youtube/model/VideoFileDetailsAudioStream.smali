.class public final Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private bitrateBps:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private channelCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private codec:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private vendor:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->clone()Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->clone()Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->clone()Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

    move-result-object v0

    return-object v0
.end method

.method public final getBitrateBps()Ljava/math/BigInteger;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->bitrateBps:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getChannelCount()Ljava/lang/Long;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->channelCount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCodec()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;

    return-object p1
.end method

.method public final setBitrateBps(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->bitrateBps:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setChannelCount(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->channelCount:Ljava/lang/Long;

    return-object p0
.end method

.method public final setCodec(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->codec:Ljava/lang/String;

    return-object p0
.end method

.method public final setVendor(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoFileDetailsAudioStream;->vendor:Ljava/lang/String;

    return-object p0
.end method
