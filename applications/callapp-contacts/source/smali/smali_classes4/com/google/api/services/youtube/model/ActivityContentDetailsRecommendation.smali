.class public final Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resourceId:Lcom/google/api/services/youtube/model/ResourceId;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private seedResourceId:Lcom/google/api/services/youtube/model/ResourceId;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    move-result-object v0

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceId()Lcom/google/api/services/youtube/model/ResourceId;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->resourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object v0
.end method

.method public final getSeedResourceId()Lcom/google/api/services/youtube/model/ResourceId;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->seedResourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;

    return-object p1
.end method

.method public final setReason(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final setResourceId(Lcom/google/api/services/youtube/model/ResourceId;)Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->resourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object p0
.end method

.method public final setSeedResourceId(Lcom/google/api/services/youtube/model/ResourceId;)Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsRecommendation;->seedResourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object p0
.end method
