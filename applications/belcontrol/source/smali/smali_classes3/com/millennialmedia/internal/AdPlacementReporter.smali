.class public Lcom/millennialmedia/internal/AdPlacementReporter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;,
        Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;,
        Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;,
        Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;,
        Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;,
        Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;,
        Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    }
.end annotation


# static fields
.field public static final BID_LOSS_DECISION_MAKER_FAILED:I = 0x6c

.field public static final BID_LOSS_DECISION_MAKER_SERVED:I = 0x6b

.field public static final BID_NOT_SUBMITTED:I = 0x0

.field public static final BID_PRICE_MISSING:I = 0x6e

.field public static final BID_SUBMITTED:I = 0x1

.field public static final BID_WIN_AD_FAILED:I = 0x6a

.field public static final BID_WIN_AD_SERVED:I = 0x67

.field public static final BID_WIN_MM_FAILED_AD_SERVED:I = 0x68

.field public static final DISPLAY_TYPE_AUTO:I = 0x0

.field public static final DISPLAY_TYPE_CLICK:I = 0x2

.field public static final DISPLAY_TYPE_UNKNOWN:I = -0x1

.field public static final DISPLAY_TYPE_VISIBILITY:I = 0x1

.field private static final EVENT_CLICK:Ljava/lang/String; = "click_"

.field private static final EVENT_DISPLAY:Ljava/lang/String; = "display_"

.field private static final EVENT_REQUEST:Ljava/lang/String; = "request_"

.field private static final EXTENSION_JSON:Ljava/lang/String; = ".json"

.field private static final EXTENSION_TEMP:Ljava/lang/String; = ".tmp"

.field public static final NO_BID_DECISION_MAKER_FAILED:I = 0x65

.field public static final NO_BID_DECISION_MAKER_SERVED:I = 0x66

.field public static final PLAYLIST_LOADED_FROM_CACHE_DEMAND_ITEM_FAILED:I = 0x70

.field public static final PLAYLIST_LOADED_FROM_CACHE_DEMAND_ITEM_SUCCEEDED:I = 0x6f

.field public static final PLAYLIST_REPLACED_IN_CACHE:I = 0x72

.field public static final PLAYLIST_TIMED_OUT_IN_CACHE:I = 0x71

.field public static final REPORTING_DIR:Ljava/lang/String; = "/.reporting/"

.field private static final REPORT_KEY_ADNET:Ljava/lang/String; = "adnet"

.field private static final REPORT_KEY_BUYER:Ljava/lang/String; = "buyer"

.field private static final REPORT_KEY_CLICK:Ljava/lang/String; = "click"

.field private static final REPORT_KEY_DISPLAY:Ljava/lang/String; = "display"

.field private static final REPORT_KEY_IMPRESSION_GROUP:Ljava/lang/String; = "grp"

.field private static final REPORT_KEY_ITEM_ID:Ljava/lang/String; = "tag"

.field private static final REPORT_KEY_PLACEMENT_NAME:Ljava/lang/String; = "zone"

.field private static final REPORT_KEY_PRICE:Ljava/lang/String; = "price"

.field private static final REPORT_KEY_PRU:Ljava/lang/String; = "pru"

.field private static final REPORT_KEY_REQUEST:Ljava/lang/String; = "req"

.field private static final REPORT_KEY_RESPONSE_ID:Ljava/lang/String; = "a"

.field private static final REPORT_KEY_RESPONSE_TIME:Ljava/lang/String; = "resp"

.field private static final REPORT_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final REPORT_KEY_SUPER_AUCTION:Ljava/lang/String; = "superAuction"

.field private static final REPORT_KEY_SUPER_AUCTION_BIDDERS:Ljava/lang/String; = "bidders"

.field private static final REPORT_KEY_SUPER_AUCTION_DEMAND_SOURCES:Ljava/lang/String; = "demandSources"

.field private static final REPORT_KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static final REPORT_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final SITEID_FILENAME:Ljava/lang/String; = "siteid"

.field public static final SSP_REPORTING_PATH:Ljava/lang/String; = "/admax/sdk/report/4"

.field public static final SSP_SITE_ID_PARAMETER:Ljava/lang/String; = "?dcn="

.field private static final STARTUP_DELAY_IN_SECONDS:I = 0x5

.field public static final STATUS_AD_SERVED:I = 0x1

.field public static final STATUS_NO_AD:I = -0x1

.field public static final STATUS_NO_AD_ERROR:I = -0x3

.field public static final STATUS_NO_AD_TIMEOUT:I = -0x2

.field private static final TAG:Ljava/lang/String; = "AdPlacementReporter"

.field private static volatile numQueuedEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile reportingDir:Ljava/io/File;

.field private static final stateLock:Ljava/lang/Object;

.field private static volatile uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;


# instance fields
.field private volatile activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

.field private volatile buyer:Ljava/lang/String;

.field private clickReported:Z

.field private displayReported:Z

.field private volatile eventId:Ljava/lang/String;

.field private volatile impressionGroup:Ljava/lang/String;

.field private volatile itemId:Ljava/lang/String;

.field private volatile placementName:Ljava/lang/String;

.field private volatile playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

.field private volatile playlistReportJson:Lorg/json/JSONObject;

.field private volatile pru:Ljava/lang/String;

.field private volatile responseId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->stateLock:Ljava/lang/Object;

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->numQueuedEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->clickReported:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->displayReported:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new reporting instance for responseId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$600(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    :cond_1
    iget-object v1, p1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    iget-object p1, p1, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->impressionGroup:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ts"

    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "adnet"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    const-string v2, "a"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    const-string v2, "zone"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "grp"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    iget-object p2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "request_"

    invoke-static {v1, p1, p2, v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$700(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    new-instance p1, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-direct {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->start()V

    return-void
.end method

.method public static synthetic access$000()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->reportingDir:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic access$002(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->reportingDir:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->numQueuedEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object v0
.end method

.method public static synthetic access$402(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object p0
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->CLEARING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    :cond_0
    return-void
.end method

.method public static getDisplayTypeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "visibility"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "click"

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "auto"

    goto :goto_0

    :cond_2
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method public static getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter()Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    return-object p0
.end method

.method public static getPlayListReporter(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter;
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/PlayList;->reportingEnabled:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;-><init>(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string p1, "Error starting ad placement reporting"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUploadState()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object v0
.end method

.method public static init()V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v1, "Initializing"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$500()V

    return-void
.end method

.method public static reportBidItem(Lorg/json/JSONObject;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;-><init>()V

    const-string v1, "bidPrice"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;->price:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;->type:Ljava/lang/String;

    iput p2, v0, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;->status:I

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->bidders:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static reportDemandSource(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapper;)Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;-><init>()V

    iget-object p2, p2, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    iput-object p2, v0, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->tag:Ljava/lang/String;

    iput-object p1, v0, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->demandSources:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v1, -0x2

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList()V

    return-void
.end method

.method public static reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    if-eq v0, p1, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string p1, "reportPlayListItem called but item is not the active item"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    return-void
.end method

.method public static reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p2, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    invoke-static {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    return-void
.end method

.method private reportSuperAuction(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Lorg/json/JSONObject;)V
    .locals 8

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v0

    iget v0, v0, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->status:I

    const-string v1, "status"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v2

    iget-object v2, v2, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->bidders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v3

    iget-object v3, v3, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->bidders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, v4, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;->type:Ljava/lang/String;

    const-string v7, "type"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, v4, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;->price:Ljava/lang/String;

    const-string v7, "price"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v4, v4, Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;->status:I

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v3, "bidders"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v2

    iget-object v2, v2, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->demandSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->demandSources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget v5, v3, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->status:I

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "ts"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->tag:Ljava/lang/String;

    const-string v6, "tag"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->access$1100(Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;)Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->getElapsedTime()J

    move-result-wide v5

    const-string v3, "resp"

    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string p1, "demandSources"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "superAuction"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method public static setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked()V

    return-void
.end method

.method public static setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    return-void
.end method

.method public static setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(I)V

    return-void
.end method

.method public static uploadNow()V
    .locals 0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->uploadNow()V

    return-void
.end method


# virtual methods
.method public getPlayListItemReporter()Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting playlist item start for responseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;-><init>(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    return-object v0
.end method

.method public reportPlayList()V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting playlist stop for responseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "resp"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "request_"

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$700(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$800(Ljava/io/File;Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v1, "Error stopping playlist reporting"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting playlist item stop for responseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tag"

    iget-object v2, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "resp"

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$900(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportSuperAuction(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Lorg/json/JSONObject;)V

    iget v1, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->buyer:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->buyer:Ljava/lang/String;

    iget-object v1, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->pru:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->pru:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->itemId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;->itemId:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->itemId:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "buyer"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->buyer:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "pru"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->pru:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "adnet"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "request_"

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$700(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v0, "Error adding playlist item"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setClicked()V
    .locals 5

    iget-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->clickReported:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting ad clicked for responseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "a"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "zone"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tag"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "grp"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->impressionGroup:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "click_"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$700(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v2, "Error recording click"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->clickReported:Z

    :cond_1
    return-void
.end method

.method public setDisplayed(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->displayReported:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getDisplayTypeName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Reporting ad displayed for responseId: %s, %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "a"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "zone"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tag"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "buyer"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->buyer:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pru"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->pru:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "grp"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->impressionGroup:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "display_"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    invoke-static {v0, v2, p1, v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$700(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v0, "Error recording display"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->displayReported:Z

    :cond_1
    return-void
.end method
