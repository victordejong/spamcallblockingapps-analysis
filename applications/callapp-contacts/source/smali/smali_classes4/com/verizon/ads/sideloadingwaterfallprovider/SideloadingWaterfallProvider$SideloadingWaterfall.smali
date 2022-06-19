.class Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Waterfall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SideloadingWaterfall"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/Waterfall$WaterfallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "reportingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getWaterfallItems()[Lcom/verizon/ads/Waterfall$WaterfallItem;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/verizon/ads/Waterfall$WaterfallItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/Waterfall$WaterfallItem;

    return-object v0
.end method
