.class public final Lcom/google/api/services/youtube/model/ThumbnailDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private default__:Lcom/google/api/services/youtube/model/Thumbnail;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "default"
    .end annotation
.end field

.field private high:Lcom/google/api/services/youtube/model/Thumbnail;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxres:Lcom/google/api/services/youtube/model/Thumbnail;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private medium:Lcom/google/api/services/youtube/model/Thumbnail;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private standard:Lcom/google/api/services/youtube/model/Thumbnail;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ThumbnailDetails;->clone()Lcom/google/api/services/youtube/model/ThumbnailDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ThumbnailDetails;->clone()Lcom/google/api/services/youtube/model/ThumbnailDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ThumbnailDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ThumbnailDetails;->clone()Lcom/google/api/services/youtube/model/ThumbnailDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getDefault()Lcom/google/api/services/youtube/model/Thumbnail;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->default__:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object v0
.end method

.method public final getHigh()Lcom/google/api/services/youtube/model/Thumbnail;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->high:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object v0
.end method

.method public final getMaxres()Lcom/google/api/services/youtube/model/Thumbnail;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->maxres:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object v0
.end method

.method public final getMedium()Lcom/google/api/services/youtube/model/Thumbnail;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->medium:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object v0
.end method

.method public final getStandard()Lcom/google/api/services/youtube/model/Thumbnail;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->standard:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ThumbnailDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ThumbnailDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ThumbnailDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ThumbnailDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ThumbnailDetails;

    return-object p1
.end method

.method public final setDefault(Lcom/google/api/services/youtube/model/Thumbnail;)Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->default__:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object p0
.end method

.method public final setHigh(Lcom/google/api/services/youtube/model/Thumbnail;)Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->high:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object p0
.end method

.method public final setMaxres(Lcom/google/api/services/youtube/model/Thumbnail;)Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->maxres:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object p0
.end method

.method public final setMedium(Lcom/google/api/services/youtube/model/Thumbnail;)Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->medium:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object p0
.end method

.method public final setStandard(Lcom/google/api/services/youtube/model/Thumbnail;)Lcom/google/api/services/youtube/model/ThumbnailDetails;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ThumbnailDetails;->standard:Lcom/google/api/services/youtube/model/Thumbnail;

    return-object p0
.end method
