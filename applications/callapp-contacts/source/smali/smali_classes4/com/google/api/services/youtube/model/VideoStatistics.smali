.class public final Lcom/google/api/services/youtube/model/VideoStatistics;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private commentCount:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private dislikeCount:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private favoriteCount:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private likeCount:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private viewCount:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoStatistics;->clone()Lcom/google/api/services/youtube/model/VideoStatistics;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoStatistics;->clone()Lcom/google/api/services/youtube/model/VideoStatistics;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoStatistics;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoStatistics;->clone()Lcom/google/api/services/youtube/model/VideoStatistics;

    move-result-object v0

    return-object v0
.end method

.method public final getCommentCount()Ljava/math/BigInteger;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->commentCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getDislikeCount()Ljava/math/BigInteger;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->dislikeCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getFavoriteCount()Ljava/math/BigInteger;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->favoriteCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getLikeCount()Ljava/math/BigInteger;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->likeCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getViewCount()Ljava/math/BigInteger;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->viewCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoStatistics;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoStatistics;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoStatistics;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoStatistics;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoStatistics;

    return-object p1
.end method

.method public final setCommentCount(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->commentCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setDislikeCount(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->dislikeCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setFavoriteCount(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->favoriteCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setLikeCount(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->likeCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setViewCount(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/VideoStatistics;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoStatistics;->viewCount:Ljava/math/BigInteger;

    return-object p0
.end method
