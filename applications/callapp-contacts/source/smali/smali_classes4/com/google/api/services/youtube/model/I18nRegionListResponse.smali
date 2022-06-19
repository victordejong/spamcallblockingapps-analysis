.class public final Lcom/google/api/services/youtube/model/I18nRegionListResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private eventId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/I18nRegion;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private visitorId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/google/api/services/youtube/model/I18nRegion;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->clone()Lcom/google/api/services/youtube/model/I18nRegionListResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->clone()Lcom/google/api/services/youtube/model/I18nRegionListResponse;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->clone()Lcom/google/api/services/youtube/model/I18nRegionListResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/I18nRegion;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getVisitorId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->visitorId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 0

    .line 170
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/I18nRegionListResponse;

    return-object p1
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final setEventId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public final setItems(Ljava/util/List;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/I18nRegion;",
            ">;)",
            "Lcom/google/api/services/youtube/model/I18nRegionListResponse;"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->items:Ljava/util/List;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setVisitorId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/I18nRegionListResponse;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/api/services/youtube/model/I18nRegionListResponse;->visitorId:Ljava/lang/String;

    return-object p0
.end method
