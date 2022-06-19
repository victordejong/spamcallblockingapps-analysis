.class public final Lio/bidmachine/PriceFloorParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/IPriceFloorParams;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams;",
        "Lio/bidmachine/models/IPriceFloorParams<",
        "Lio/bidmachine/PriceFloorParams;",
        ">;"
    }
.end annotation


# instance fields
.field private priceFloorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPriceFloor(D)Lio/bidmachine/PriceFloorParams;
    .locals 1

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    return-object p0
.end method

.method public final addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    .line 33
    :cond_0
    iget-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic addPriceFloor(D)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(D)Lio/bidmachine/PriceFloorParams;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addPriceFloor(Ljava/lang/String;D)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    move-result-object p1

    return-object p1
.end method

.method final getPriceFloors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/bidmachine/PriceFloorParams;->priceFloorsMap:Ljava/util/Map;

    return-object v0
.end method

.method public final merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    return-void
.end method
