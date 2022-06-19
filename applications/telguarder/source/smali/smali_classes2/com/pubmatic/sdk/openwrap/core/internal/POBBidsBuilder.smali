.class public Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBAdBuilding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBAdBuilding<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->f:Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;

    const-string v1, "POBBidsBuilder"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Listener is null, execution of Wrapper ad builder gets break."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_a

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;-><init>(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getCustomData()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a

    :try_start_0
    const-string v4, "ext"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sendallbids"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setSendAllBidsState(Z)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    const-string v5, "loginfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "logger"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setLogger(Ljava/lang/String;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    const-string v5, "tracker"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setTracker(Ljava/lang/String;)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Unable to fetch logger and tracker details"

    invoke-static {v1, v5, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object p1

    const-string v1, "seatbid"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "bid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "seat"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->a:Ljava/lang/String;

    :cond_2
    if-eqz v5, :cond_7

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->build(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v7

    new-instance v8, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;

    invoke-direct {v8, v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;-><init>(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    invoke-virtual {v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getCreativeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;->setCreativeType(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;

    :cond_3
    invoke-virtual {v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;->setPartnerId(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;

    :cond_4
    invoke-virtual {v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v9

    if-nez v9, :cond_5

    iget v9, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->c:I

    invoke-virtual {v8, v9}, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;->setWidth(I)Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;

    :cond_5
    invoke-virtual {v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->d:I

    invoke-virtual {v8, v7}, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;->setHeight(I)Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;

    :cond_6
    invoke-virtual {v8}, Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;->build()Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getRefreshInterval()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->setRefreshInterval(I)Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;

    :cond_9
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->f:Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;->build()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;->adBuilderOnSuccess(Lcom/pubmatic/sdk/common/models/POBAdResponse;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->f:Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    const/16 v1, 0x3ef

    const-string v2, "Null response received in POBBidsBuilder"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;->adBuilderOnError(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setCreativeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->e:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->d:I

    return-void
.end method

.method public setListener(Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->f:Lcom/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener;

    return-void
.end method

.method public setPartnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->b:Ljava/lang/String;

    return-void
.end method

.method public setPartnerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->a:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder;->c:I

    return-void
.end method
