.class public final Lcom/google/api/services/youtube/model/InvideoPromotion;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private defaultTiming:Lcom/google/api/services/youtube/model/InvideoTiming;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/PromotedItem;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/google/api/services/youtube/model/InvideoPosition;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private useSmartTiming:Ljava/lang/Boolean;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoPromotion;->clone()Lcom/google/api/services/youtube/model/InvideoPromotion;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoPromotion;->clone()Lcom/google/api/services/youtube/model/InvideoPromotion;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/InvideoPromotion;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoPromotion;->clone()Lcom/google/api/services/youtube/model/InvideoPromotion;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultTiming()Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->defaultTiming:Lcom/google/api/services/youtube/model/InvideoTiming;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/PromotedItem;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPosition()Lcom/google/api/services/youtube/model/InvideoPosition;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->position:Lcom/google/api/services/youtube/model/InvideoPosition;

    return-object v0
.end method

.method public final getUseSmartTiming()Ljava/lang/Boolean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->useSmartTiming:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/InvideoPromotion;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoPromotion;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/InvideoPromotion;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoPromotion;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/InvideoPromotion;

    return-object p1
.end method

.method public final setDefaultTiming(Lcom/google/api/services/youtube/model/InvideoTiming;)Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->defaultTiming:Lcom/google/api/services/youtube/model/InvideoTiming;

    return-object p0
.end method

.method public final setItems(Ljava/util/List;)Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/PromotedItem;",
            ">;)",
            "Lcom/google/api/services/youtube/model/InvideoPromotion;"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->items:Ljava/util/List;

    return-object p0
.end method

.method public final setPosition(Lcom/google/api/services/youtube/model/InvideoPosition;)Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->position:Lcom/google/api/services/youtube/model/InvideoPosition;

    return-object p0
.end method

.method public final setUseSmartTiming(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/InvideoPromotion;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoPromotion;->useSmartTiming:Ljava/lang/Boolean;

    return-object p0
.end method
