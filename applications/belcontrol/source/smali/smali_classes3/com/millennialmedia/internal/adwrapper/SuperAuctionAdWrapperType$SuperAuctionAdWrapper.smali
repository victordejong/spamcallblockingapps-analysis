.class public Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;
.super Lcom/millennialmedia/internal/adwrapper/AdWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperAuctionAdWrapper"
.end annotation


# instance fields
.field private bidPrice:Ljava/lang/String;

.field private bidderItem:Lorg/json/JSONObject;

.field private bidderItems:Lorg/json/JSONArray;

.field private demandSources:Lorg/json/JSONArray;

.field private final playlistResponseId:Ljava/lang/String;

.field private winUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->playlistResponseId:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->demandSources:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItems:Lorg/json/JSONArray;

    invoke-static {p4, p3}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$000(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItem:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p2, "bidPrice"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidPrice:Ljava/lang/String;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItem:Lorg/json/JSONObject;

    const-string p2, "winUrl"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->winUrl:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "playlistResponseId is required"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->reportBidderItems(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    return-void
.end method

.method private fireWinUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper$1;-><init>(Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private getAdAdapterForSuperAuctionRequest(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->processDemandSources(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p2

    if-nez p1, :cond_0

    const/16 p3, 0x70

    goto :goto_0

    :cond_0
    const/16 p3, 0x6f

    :goto_0
    iput p3, p2, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    return-object p1
.end method

.method private processDemandSources(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 9

    const-string v0, "price"

    const-string v1, "buyer"

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->demandSources:Lorg/json/JSONArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->demandSources:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    const/4 v4, -0x3

    invoke-virtual {p3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->demandSources:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$200(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ">"

    if-nez v6, :cond_0

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to process demand source type <"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->playlistResponseId:Ljava/lang/String;

    invoke-interface {v6, v4, v8}, Lcom/millennialmedia/internal/adwrapper/AdWrapperType;->createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportDemandSource(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapper;)Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;

    move-result-object v5

    invoke-virtual {v6, p1, p2, p3}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iput v6, v5, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->status:I

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No adapter found for demand source <"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    iput v7, v5, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->status:I

    invoke-virtual {p2}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v5

    iget-object v6, v6, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    iput-object v6, v5, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->buyer:Ljava/lang/String;

    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->pru:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error processing super auction demand source"

    invoke-static {v5, v6, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-object v3
.end method

.method private reportBidderItems(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItems:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->demandSources:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItems:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItems:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "server_bid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bidPrice"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p1, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportBidItem(Lorg/json/JSONObject;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error reporting bidder item."

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing item with ID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->winUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->fireWinUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidderItem:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportBidItem(Lorg/json/JSONObject;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->getAdAdapterForSuperAuctionRequest(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getBidPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/SuperAuctionAdWrapperType$SuperAuctionAdWrapper;->bidPrice:Ljava/lang/String;

    return-object v0
.end method
