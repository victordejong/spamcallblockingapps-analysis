.class public Lcom/pubmatic/sdk/openwrap/core/POBPriceBaseAuctioning;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBAuctioning;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBAuctioning<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic perform(Ljava/util/List;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/openwrap/core/POBPriceBaseAuctioning;->perform(Ljava/util/List;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p1

    return-object p1
.end method

.method public perform(Ljava/util/List;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;)",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method
