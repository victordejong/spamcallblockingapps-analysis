.class public Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;,
        Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Ljava/io/File;

.field private static volatile d:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

.field private static volatile e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-class v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b:Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->IDLE:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    sput-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->d:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Initializing VerizonSSPReporter"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$1;-><init>(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;)V

    const-string v1, "com.verizon.ads.click"

    invoke-static {v0, v1}, Lcom/verizon/ads/events/Events;->subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$2;-><init>(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;)V

    const-string v1, "com.verizon.ads.impression"

    invoke-static {v0, v1}, Lcom/verizon/ads/events/Events;->subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$3;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$3;-><init>(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;)V

    const-string v1, "com.verizon.ads.waterfall.result"

    invoke-static {v0, v1}, Lcom/verizon/ads/events/Events;->subscribe(Lcom/verizon/ads/events/EventReceiver;Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;)I
    .locals 1

    if-nez p0, :cond_0

    .line 329
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "WaterfallItemResult cannot be null"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getErrorInfo()Lcom/verizon/ads/ErrorInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/ErrorInfo;->getErrorCode()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;",
            ">;)J"
        }
    .end annotation

    .line 293
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 295
    invoke-virtual {v2}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getElapsedTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 55
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;
    .locals 0

    .line 55
    sput-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->d:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    return-object p0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 55
    sput-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->c:Ljava/io/File;

    return-object p0
.end method

.method private static a(Lcom/verizon/ads/WaterfallResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/verizon/ads/WaterfallResult;->getWaterfallItemResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 229
    invoke-virtual {v0}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getErrorInfo()Lcom/verizon/ads/ErrorInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/verizon/ads/WaterfallResult;)Lorg/json/JSONArray;
    .locals 8

    const/4 v0, 0x3

    .line 241
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "responseId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Reporting waterfall item results for responseId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 246
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 248
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getBid()Lcom/verizon/ads/Bid;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    instance-of v3, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;

    if-eqz v3, :cond_1

    .line 253
    move-object v2, v1

    check-cast v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 255
    sget-object v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to process unknown bid type"

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v1, "resp"

    const-string v3, "status"

    const-string v4, "tag"

    if-nez v2, :cond_3

    .line 262
    :try_start_0
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getWaterfallItemResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 264
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 265
    invoke-virtual {v2}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getMetadata()Ljava/util/Map;

    move-result-object v6

    const-string v7, "itemId"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-static {v2}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    invoke-virtual {v2}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 273
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 274
    iget-object v6, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getWaterfallItemResults()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b(Ljava/util/List;)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getWaterfallItemResults()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Ljava/util/List;)J

    move-result-wide v3

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "superAuction"

    .line 277
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getWaterfallItemResults()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 281
    :catch_0
    sget-object p1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error adding waterfall item"

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static a(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 349
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Bid object cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->bidderItem:Lorg/json/JSONObject;

    const-string v2, "status"

    if-eqz v1, :cond_1

    .line 358
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 359
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 360
    iget-object v4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->bidderItem:Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    iget-object p0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->bidderItem:Lorg/json/JSONObject;

    const-string v4, "bidPrice"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "price"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x1

    .line 362
    invoke-virtual {v3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "bidders"

    .line 364
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    :cond_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 371
    invoke-virtual {v1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getErrorInfo()Lcom/verizon/ads/ErrorInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 372
    invoke-virtual {v1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getErrorInfo()Lcom/verizon/ads/ErrorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/verizon/ads/ErrorInfo;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71

    if-ne v3, v4, :cond_2

    return-object v0

    .line 377
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 378
    invoke-static {v1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    invoke-virtual {v1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getStartTime()J

    move-result-wide v4

    const-string v6, "ts"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 380
    invoke-virtual {v1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getMetadata()Ljava/util/Map;

    move-result-object v4

    const-string v5, "itemId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "tag"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    invoke-virtual {v1}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getElapsedTime()J

    move-result-wide v4

    const-string v1, "resp"

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 382
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string p1, "demandSources"

    .line 384
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/support/ClickEvent;)V
    .locals 6

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/ClickEvent;->adSession:Lcom/verizon/ads/AdSession;

    const-string v1, "response.waterfall"

    const-class v2, Lcom/verizon/ads/Waterfall;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/verizon/ads/AdSession;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/Waterfall;

    .line 1438
    invoke-interface {v0}, Lcom/verizon/ads/Waterfall;->getMetadata()Ljava/util/Map;

    move-result-object v0

    .line 1439
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "reportingEnabled"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    const-string v4, "responseId"

    if-nez v1, :cond_1

    .line 1441
    :try_start_1
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1442
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reporting disabled. Ignoring click event for responseId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1443
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1449
    :cond_1
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1450
    sget-object v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Reporting click event for responseId: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1453
    :cond_2
    iget-object v1, p0, Lcom/verizon/ads/support/ClickEvent;->adSession:Lcom/verizon/ads/AdSession;

    const-string v2, "response.waterfallItem"

    const-class v5, Lcom/verizon/ads/Waterfall$WaterfallItem;

    invoke-virtual {v1, v2, v5, v3}, Lcom/verizon/ads/AdSession;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/Waterfall$WaterfallItem;

    .line 1454
    invoke-interface {v1}, Lcom/verizon/ads/Waterfall$WaterfallItem;->getMetadata()Ljava/util/Map;

    move-result-object v1

    .line 1456
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "a"

    .line 1457
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ts"

    .line 1458
    iget-wide v4, p0, Lcom/verizon/ads/support/ClickEvent;->clickTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo p0, "zone"

    const-string v3, "placementName"

    .line 1459
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tag"

    const-string v3, "itemId"

    .line 1460
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "grp"

    const-string v1, "impressionGroup"

    .line 1461
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "click_"

    .line 1463
    invoke-static {p0, v2}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1466
    :catch_0
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Error recording click event"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/ImpressionEvent;)V
    .locals 10

    const-string v0, "pru"

    const-string v1, "buyer"

    .line 2393
    :try_start_0
    iget-object v2, p0, Lcom/verizon/ads/support/ImpressionEvent;->adSession:Lcom/verizon/ads/AdSession;

    const-string v3, "response.waterfall"

    const-class v4, Lcom/verizon/ads/Waterfall;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/verizon/ads/AdSession;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/Waterfall;

    .line 2394
    invoke-interface {v2}, Lcom/verizon/ads/Waterfall;->getMetadata()Ljava/util/Map;

    move-result-object v2

    .line 2396
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "reportingEnabled"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    const-string v6, "responseId"

    if-nez v3, :cond_1

    .line 2398
    :try_start_1
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2399
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reporting disabled. Ignoring impression event for responseId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2400
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2399
    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2406
    :cond_1
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2407
    sget-object v3, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Reporting impression event for responseId: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 2408
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2407
    invoke-virtual {v3, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2411
    :cond_2
    iget-object v3, p0, Lcom/verizon/ads/support/ImpressionEvent;->adSession:Lcom/verizon/ads/AdSession;

    const-string v4, "response.waterfallItem"

    const-class v7, Lcom/verizon/ads/Waterfall$WaterfallItem;

    invoke-virtual {v3, v4, v7, v5}, Lcom/verizon/ads/AdSession;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/Waterfall$WaterfallItem;

    .line 2414
    invoke-interface {v3}, Lcom/verizon/ads/Waterfall$WaterfallItem;->getMetadata()Ljava/util/Map;

    move-result-object v3

    .line 2416
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "a"

    .line 2417
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ts"

    .line 2418
    iget-wide v6, p0, Lcom/verizon/ads/support/ImpressionEvent;->impressionTime:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo p0, "zone"

    const-string v5, "placementName"

    .line 2419
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tag"

    const-string v5, "itemId"

    .line 2420
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2421
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2422
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "grp"

    const-string v0, "impressionGroup"

    .line 2423
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "display_"

    .line 2425
    invoke-static {p0, v4}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 2428
    :catch_0
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Error recording impression event"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;Lcom/verizon/ads/WaterfallResult;)V
    .locals 7

    const-string v0, "pru"

    const-string v1, "buyer"

    .line 3186
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "reportingEnabled"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "responseId"

    if-nez v2, :cond_1

    .line 3188
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3189
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reporting disabled. Ignoring waterfall result event for responseId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3190
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3189
    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3196
    :cond_1
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3197
    sget-object v2, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Adding waterfall result event for responseId: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 3202
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ts"

    .line 3204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "a"

    .line 3205
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "zone"

    .line 3206
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object v4

    const-string v5, "placementName"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "grp"

    .line 3207
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getMetadata()Ljava/util/Map;

    move-result-object v4

    const-string v5, "impressionGroup"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "resp"

    .line 3208
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "adnet"

    .line 3209
    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/WaterfallResult;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3211
    invoke-virtual {p1}, Lcom/verizon/ads/WaterfallResult;->getBid()Lcom/verizon/ads/Bid;

    move-result-object p0

    if-nez p0, :cond_3

    .line 3213
    invoke-static {p1, v1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/WaterfallResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3214
    invoke-static {p1, v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/WaterfallResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p0, "request_"

    .line 3217
    invoke-static {p0, v2}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3220
    :catch_0
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to process waterfall result event"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;",
            ">;)I"
        }
    .end annotation

    .line 306
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 310
    invoke-virtual {v0}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getErrorInfo()Lcom/verizon/ads/ErrorInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v0}, Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;->getErrorInfo()Lcom/verizon/ads/ErrorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verizon/ads/ErrorInfo;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_1

    return v2

    .line 317
    :cond_1
    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 p0, 0x6f

    return p0

    :cond_2
    const/16 p0, 0x70

    return p0
.end method

.method static synthetic b()Ljava/io/File;
    .locals 1

    .line 55
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->c:Ljava/io/File;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 55
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static clear()V
    .locals 2

    .line 178
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->d:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    sget-object v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->UPLOADING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    if-eq v0, v1, :cond_0

    .line 179
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->CLEARING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 55
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;
    .locals 1

    .line 55
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->d:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    return-object v0
.end method
