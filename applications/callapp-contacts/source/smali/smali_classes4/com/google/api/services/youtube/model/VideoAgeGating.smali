.class public final Lcom/google/api/services/youtube/model/VideoAgeGating;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private alcoholContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private restricted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private videoGameRating:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAgeGating;->clone()Lcom/google/api/services/youtube/model/VideoAgeGating;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAgeGating;->clone()Lcom/google/api/services/youtube/model/VideoAgeGating;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAgeGating;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAgeGating;->clone()Lcom/google/api/services/youtube/model/VideoAgeGating;

    move-result-object v0

    return-object v0
.end method

.method public final getAlcoholContent()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAgeGating;->alcoholContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRestricted()Ljava/lang/Boolean;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAgeGating;->restricted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getVideoGameRating()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAgeGating;->videoGameRating:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAgeGating;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAgeGating;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAgeGating;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAgeGating;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoAgeGating;

    return-object p1
.end method

.method public final setAlcoholContent(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAgeGating;->alcoholContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setRestricted(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAgeGating;->restricted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setVideoGameRating(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAgeGating;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAgeGating;->videoGameRating:Ljava/lang/String;

    return-object p0
.end method
