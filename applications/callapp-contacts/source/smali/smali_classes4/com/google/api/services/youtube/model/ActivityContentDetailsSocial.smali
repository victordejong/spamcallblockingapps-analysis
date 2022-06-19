.class public final Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private author:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private referenceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resourceId:Lcom/google/api/services/youtube/model/ResourceId;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->clone()Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferenceUrl()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->referenceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceId()Lcom/google/api/services/youtube/model/ResourceId;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->resourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;

    return-object p1
.end method

.method public final setAuthor(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->author:Ljava/lang/String;

    return-object p0
.end method

.method public final setImageUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setReferenceUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->referenceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setResourceId(Lcom/google/api/services/youtube/model/ResourceId;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->resourceId:Lcom/google/api/services/youtube/model/ResourceId;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ActivityContentDetailsSocial;->type:Ljava/lang/String;

    return-object p0
.end method
