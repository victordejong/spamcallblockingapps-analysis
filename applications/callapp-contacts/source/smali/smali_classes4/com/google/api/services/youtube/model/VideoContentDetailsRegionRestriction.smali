.class public final Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private allowed:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blocked:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->clone()Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->clone()Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->clone()Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    move-result-object v0

    return-object v0
.end method

.method public final getAllowed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->allowed:Ljava/util/List;

    return-object v0
.end method

.method public final getBlocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->blocked:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    return-object p1
.end method

.method public final setAllowed(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->allowed:Ljava/util/List;

    return-object p0
.end method

.method public final setBlocked(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;->blocked:Ljava/util/List;

    return-object p0
.end method
