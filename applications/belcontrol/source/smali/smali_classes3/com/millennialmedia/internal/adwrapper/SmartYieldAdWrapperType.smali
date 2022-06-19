.class public Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adwrapper/AdWrapperType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;,
        Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartYieldAdWrapperType"

.field private static final activeSmartYieldAdWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->activeSmartYieldAdWrappers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registeredDemandSourceTypes:Ljava/util/Map;

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registerPackagedDemandSourceTypes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->activeSmartYieldAdWrappers:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$400(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getWinningBidderObject(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getDemandSourceType(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->activeSmartYieldAdWrappers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

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

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

    const-string v1, "smart_yield playlist item does not contain a bidders array"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDemandSourceType(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapperType;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registeredDemandSourceTypes:Ljava/util/Map;

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

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

    const-string v1, "smart_yield playlist item does not contain a demand_sources array"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getWinningBidderObject(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "server_bid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "bidPrice"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    :try_start_1
    invoke-static {v4, p2, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportBidItem(Lorg/json/JSONObject;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {v4, p2, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportBidItem(Lorg/json/JSONObject;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)Lcom/millennialmedia/internal/AdPlacementReporter$Bidder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    :goto_1
    sget-object v5, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

    const-string v6, "Error processing bidder item."

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

    const-string p1, "Smart yield bidders array missing."

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registeredDemandSourceTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

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

    sget-object v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;-><init>()V

    const-string v1, "server_demand"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;-><init>()V

    const-string v1, "client_demand"

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->registerDemandSourceType(Ljava/lang/String;Lcom/millennialmedia/internal/adwrapper/AdWrapperType;)V

    return-void
.end method


# virtual methods
.method public createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;
    .locals 8

    const-string v0, "adnet"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "req"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "site"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "posId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getBiddersArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getDemandSources(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v7, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;

    move-object v1, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, p1}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->access$002(Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    invoke-static {v7, v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;->access$102(Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldAdWrapper;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    return-object v7
.end method
