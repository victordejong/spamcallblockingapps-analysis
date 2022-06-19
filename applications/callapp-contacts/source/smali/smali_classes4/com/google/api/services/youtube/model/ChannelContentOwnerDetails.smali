.class public final Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private contentOwner:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private timeLinked:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->clone()Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->clone()Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->clone()Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getContentOwner()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->contentOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeLinked()Lcom/google/api/client/a/l;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->timeLinked:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;

    return-object p1
.end method

.method public final setContentOwner(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->contentOwner:Ljava/lang/String;

    return-object p0
.end method

.method public final setTimeLinked(Lcom/google/api/client/a/l;)Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelContentOwnerDetails;->timeLinked:Lcom/google/api/client/a/l;

    return-object p0
.end method
