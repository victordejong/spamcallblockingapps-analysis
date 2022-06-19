.class public Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adwrapper/AdWrapperType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SuperAuctionAdWrapperType"

.field private static final registeredDemandSourceTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/adwrapper/AdWrapperType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registeredDemandSourceTypes:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registerPackagedDemandSourceTypes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    const-string v2, "Unable to register packaged demand source types"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->getWinningBidderObject(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->getDemandSourceType(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;

    move-result-object p0

    return-object p0
.end method

.method private static getBiddersArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2

    :try_start_0
    const-string v0, "bidders"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    const-string v1, "Super auction playlist item does not contain a bidders array"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDemandSourceType(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registeredDemandSourceTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adwrapper/AdWrapperType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find specified DemandSourceType for type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDemandSources(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2

    :try_start_0
    const-string v0, "demandSources"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    const-string v1, "Super auction playlist item does not contain a demand_sources array"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getWinningBidderObject(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/JSONUtils;->isEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "server_bid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    const-string v3, "Error processing bidder item."

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    const-string p1, "Super auction bidders array missing."

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registeredDemandSourceTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandSourceTypeId <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> already registered"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering DemandSourceTypeId <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DemandSourceTypeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AdWrapperType cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static registerPackagedDemandSourceTypes()V
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ContentDemandSourceAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ContentDemandSourceAdWrapperType;-><init>()V

    const-string v1, "ad_content"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;-><init>()V

    const-string v1, "server_demand"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;-><init>()V

    const-string v1, "client_demand"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    return-void
.end method

.method public static reportBidFailed(Lcom/millennialmedia/internal/PlayList;Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p2}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListReporter(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object p0

    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v0

    iput p3, v0, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    if-eqz p1, :cond_0

    iget-object p3, p1, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    iput-object p3, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->itemId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->access$300(Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    :cond_0
    invoke-static {p0, p2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    return-void
.end method

.method public static reportBidFailed(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/PlayList;->getItem(I)Lcom/millennialmedia/internal/adwrapper/AdWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;

    invoke-static {p0, v0, p1, p2}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->reportBidFailed(Lcom/millennialmedia/internal/PlayList;Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;
    .locals 3

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->getBiddersArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p1}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->getDemandSources(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v2, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-object v2
.end method
