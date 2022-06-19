.class Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Waterfall$WaterfallItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SideloadingWaterfallItem"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;->a:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public fetch(Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
    .locals 3

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 110
    iget-object v0, p0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;->b:Ljava/util/Map;

    const-string v1, "adSizes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Ljava/util/Map;

    const-string v1, "w"

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    .line 118
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ad_size"

    .line 122
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance p1, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;

    new-instance v1, Lcom/verizon/ads/AdContent;

    iget-object v2, p0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/verizon/ads/AdContent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p1, v1}, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;-><init>(Lcom/verizon/ads/AdContent;)V

    return-object p1
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
