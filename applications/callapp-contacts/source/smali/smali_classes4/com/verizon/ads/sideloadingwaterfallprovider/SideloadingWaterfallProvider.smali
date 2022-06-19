.class public Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;
.super Lcom/verizon/ads/WaterfallProvider;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;,
        Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;,
        Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$Factory;
    }
.end annotation


# static fields
.field private static final b:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/verizon/ads/WaterfallProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isSuperAuctionSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/verizon/ads/Bid;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V
    .locals 0

    .line 213
    sget-object p1, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string p2, "Super Auction not supported."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public load(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V
    .locals 4

    .line 145
    const-class p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;

    const-string v0, "com.verizon.ads.core"

    const-string v1, "sdkEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 147
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Verizon Ads SDK is disabled."

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 152
    invoke-interface {p3, v2, p1}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v0

    const-string v3, "adContent"

    .line 169
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 173
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No content present in the RequestMetadata."

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 179
    invoke-interface {p3, v2, p1}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 184
    :cond_2
    sget-object p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SideloadingWaterfallProvider adContent: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 186
    new-instance p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;

    invoke-direct {p2}, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;-><init>()V

    .line 187
    new-instance v1, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfallItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1069
    iget-object v0, p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider$SideloadingWaterfall;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/verizon/ads/AdSession;

    invoke-direct {v0}, Lcom/verizon/ads/AdSession;-><init>()V

    const-string v1, "request.requestMetadata"

    .line 190
    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "response.waterfall"

    .line 191
    invoke-virtual {v0, p1, p2}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1, v2}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 158
    :cond_3
    :goto_0
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No RequestMetadata present."

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object p2, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 163
    invoke-interface {p3, v2, p1}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requestBid(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V
    .locals 0

    .line 206
    sget-object p1, Lcom/verizon/ads/sideloadingwaterfallprovider/SideloadingWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string p2, "Super Auction not supported."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
