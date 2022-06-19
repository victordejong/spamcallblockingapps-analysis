.class public Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.super Lcom/verizon/ads/WaterfallProvider;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;,
        Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$Factory;
    }
.end annotation


# static fields
.field public static final APP_DATA_COPPA_KEY:Ljava/lang/String; = "coppa"

.field public static final APP_DATA_MEDIATOR_KEY:Ljava/lang/String; = "mediator"

.field public static final ERROR_WATERFALL_ITEM_ERROR:I = -0x3

.field public static final ERROR_WATERFALL_ITEM_NO_AD_CONTENT:I = -0x1

.field public static final ERROR_WATERFALL_ITEM_SUPER_AUCTION_BID_EXPIRED:I = 0x71

.field public static final ERROR_WATERFALL_ITEM_SUPER_AUCTION_INVALID_BID:I = 0x6e

.field public static final ERROR_WATERFALL_ITEM_TIMEOUT:I = -0x2

.field public static final EXTRAS_TEST_BIDDER_ID_KEY:Ljava/lang/String; = "testBidderID"

.field public static final EXTRAS_TEST_CREATIVE_ID_KEY:Ljava/lang/String; = "testCreativeID"

.field public static final METADATA_KEY_BUYER:Ljava/lang/String; = "buyer"

.field public static final METADATA_KEY_IMPRESSION_GROUP:Ljava/lang/String; = "impressionGroup"

.field public static final METADATA_KEY_ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final METADATA_KEY_PLACEMENT_NAME:Ljava/lang/String; = "placementName"

.field public static final METADATA_KEY_PRU:Ljava/lang/String; = "pru"

.field public static final METADATA_KEY_REPORTING_ENABLED:Ljava/lang/String; = "reportingEnabled"

.field public static final METADATA_KEY_RESPONSE_ID:Ljava/lang/String; = "responseId"

.field public static final PLACEMENT_DATA_AD_SIZES_KEY:Ljava/lang/String; = "adSizes"

.field public static final PLACEMENT_DATA_HEIGHT_KEY:Ljava/lang/String; = "height"

.field public static final PLACEMENT_DATA_ID_KEY:Ljava/lang/String; = "id"

.field public static final PLACEMENT_DATA_IMP_GROUP_KEY:Ljava/lang/String; = "impressionGroup"

.field public static final PLACEMENT_DATA_NATIVE_TYPES_KEY:Ljava/lang/String; = "nativeTypes"

.field public static final PLACEMENT_DATA_REFRESH_RATE_KEY:Ljava/lang/String; = "refreshRate"

.field public static final PLACEMENT_DATA_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final PLACEMENT_DATA_WIDTH_KEY:Ljava/lang/String; = "width"

.field public static final USER_DATA_AGE_KEY:Ljava/lang/String; = "age"

.field public static final USER_DATA_CHILDREN_KEY:Ljava/lang/String; = "children"

.field public static final USER_DATA_COUNTRY_KEY:Ljava/lang/String; = "country"

.field public static final USER_DATA_DMA_KEY:Ljava/lang/String; = "dma"

.field public static final USER_DATA_DOB_KEY:Ljava/lang/String; = "dob"

.field public static final USER_DATA_EDUCATION_KEY:Ljava/lang/String; = "education"

.field public static final USER_DATA_ETHNICITY_KEY:Ljava/lang/String; = "ethnicity"

.field public static final USER_DATA_GENDER_KEY:Ljava/lang/String; = "gender"

.field public static final USER_DATA_INCOME_KEY:Ljava/lang/String; = "income"

.field public static final USER_DATA_KEYWORDS_KEY:Ljava/lang/String; = "keywords"

.field public static final USER_DATA_MARITAL_STATUS_KEY:Ljava/lang/String; = "marital"

.field public static final USER_DATA_POLITICS_KEY:Ljava/lang/String; = "politics"

.field public static final USER_DATA_POSTAL_CODE_KEY:Ljava/lang/String; = "postalCode"

.field public static final USER_DATA_STATE_KEY:Ljava/lang/String; = "state"

.field private static final b:Lcom/verizon/ads/Logger;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/verizon/ads/EnvironmentInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-class v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 963
    invoke-direct {p0, p1}, Lcom/verizon/ads/WaterfallProvider;-><init>(Landroid/content/Context;)V

    .line 965
    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d:Landroid/content/Context;

    .line 966
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {v0, p1}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/utils/HttpUtils$Response;)Lcom/verizon/ads/ErrorInfo;
    .locals 5

    .line 5087
    iget v0, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v1, 0xc8

    const/4 v2, -0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_0

    .line 5096
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget p0, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "HTTP error code %d retrieving ad content"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 5090
    :cond_0
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const/4 v1, -0x2

    const-string v2, "Timeout occurred retrieving ad content"

    invoke-direct {p0, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 5093
    :cond_1
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const-string v1, "Empty content returned when retrieving ad content"

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/verizon/ads/Waterfall;
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1740
    :try_start_0
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    sget-object v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playlist = \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1744
    :cond_0
    new-instance v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    invoke-direct {v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;-><init>()V

    const-string v3, "ver"

    .line 1745
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->a:Ljava/lang/String;

    const-string v3, "3"

    .line 1746
    iget-object v4, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1747
    sget-object p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string p1, "Playlist response does not match requested version"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v3, "config"

    .line 1752
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->b:Ljava/lang/String;

    const-string v3, "id"

    .line 1754
    invoke-static {p0, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->getRequiredPropertyAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->c:Ljava/lang/String;

    const-string v3, "posId"

    .line 1755
    invoke-static {p0, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->getRequiredPropertyAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    const-string v3, "pos"

    .line 1756
    invoke-static {p0, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->getRequiredPropertyAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->e:Ljava/lang/String;

    const-string v3, "dcn"

    .line 1757
    invoke-static {p0, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->getRequiredPropertyAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->g:Ljava/lang/String;

    .line 1758
    iput-object p1, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->f:Ljava/lang/String;

    const-string p1, "DoNotReport"

    .line 1760
    iget-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->g:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1761
    invoke-virtual {v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->enableReporting()V

    goto :goto_0

    .line 1762
    :cond_2
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1763
    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Playlist dcn is <DoNotReport> -- reporting disabled"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string p1, "playlist"

    .line 1766
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 1767
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge p1, v0, :cond_b

    .line 1769
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "type"

    .line 1770
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, "server_mediation"

    .line 4805
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4806
    new-instance v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;

    iget-object v4, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_5
    const-string v4, "ad_content"

    .line 4807
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4808
    new-instance v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;

    iget-object v4, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_6
    const-string v4, "exchange"

    .line 4809
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4810
    new-instance v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;

    iget-object v4, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ExchangeWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_7
    const-string v4, "super_auction"

    .line 4811
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4812
    new-instance v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;

    invoke-direct {v3, v2, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;-><init>(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 4798
    :cond_8
    :goto_2
    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v3, "playlist item type or json was null."

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_9
    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_a

    .line 1775
    invoke-virtual {v2, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->a(Lcom/verizon/ads/Waterfall$WaterfallItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1779
    :try_start_2
    sget-object v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse play list item<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
    return-object v2

    :catch_1
    move-exception p0

    .line 1786
    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to parse play list"

    invoke-virtual {p1, v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 1

    .line 5280
    invoke-static {p0, p1, p2, p3, p4}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    .line 5282
    iget p1, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/4 p2, 0x0

    const/16 p3, 0xc8

    if-eq p1, p3, :cond_0

    .line 5283
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget p0, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v0

    const-string p0, "PlayList request failed with HTTP Status: %d"

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x2

    invoke-direct {p1, p3, p0, p4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5286
    invoke-virtual {p5, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-object p2

    .line 5292
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5293
    new-instance p0, Lcom/verizon/ads/ErrorInfo;

    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const/4 p3, 0x4

    const-string p4, "PlayList request returned no content"

    invoke-direct {p0, p1, p4, p3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5296
    invoke-virtual {p5, p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-object p2

    :cond_1
    const/4 p1, 0x3

    .line 5301
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5302
    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Response content:\n"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method static a()Ljava/lang/String;
    .locals 3

    const-string v0, "com.verizon.ads"

    const-string v1, "waterfallProviderBaseUrl"

    const-string v2, "https://ads.nexage.com"

    .line 1311
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b(Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/verizon/ads/RequestMetadata;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1514
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "gdpr"

    invoke-static {v0, v2, v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-object v0

    .line 1520
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->getCoppa()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "coppa"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1521
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSiteId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1523
    const-class v1, Ljava/util/Map;

    const/4 v2, 0x0

    const-string v3, "com.verizon.ads.core"

    const-string v4, "userPrivacyData"

    .line 1524
    invoke-static {v3, v4, v1, v2}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1526
    new-instance v2, Lcom/verizon/ads/PrivacyDataHelper;

    invoke-direct {v2, v1}, Lcom/verizon/ads/PrivacyDataHelper;-><init>(Ljava/util/Map;)V

    .line 1528
    invoke-virtual {v2}, Lcom/verizon/ads/PrivacyDataHelper;->getConsentStringsMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1529
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "consentstrings"

    .line 1530
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1533
    :cond_1
    invoke-static {v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1534
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "privacymap"

    .line 1535
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1538
    :cond_2
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getSupportedOrientations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "orients"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1540
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getAppData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "mediator"

    .line 1542
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    :cond_3
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "impressionGroup"

    .line 1549
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1550
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "grp"

    .line 1551
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "refreshRate"

    .line 1554
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1557
    :cond_5
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getExtras()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v1, "customTargeting"

    .line 1559
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1560
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1561
    invoke-static {v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1563
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "targeting"

    .line 1564
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v1, "keywords"

    .line 1568
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1569
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_7

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1570
    invoke-static {p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1574
    :cond_7
    iget-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getConfigurationOrientation()Ljava/lang/String;

    move-result-object p1

    const-string v1, "curOrient"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 1318
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "playlist"

    .line 1320
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 1321
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    .line 1323
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adnet"

    .line 1324
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "redirect"

    .line 1325
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    .line 1330
    :try_start_2
    sget-object v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse play list item<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1335
    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to parse redirect play list"

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Z)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1369
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "os"

    const-string v2, "android"

    .line 1371
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1372
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "osv"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1374
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object v1

    .line 1375
    iget-object v2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo;->getNetworkOperatorInfo()Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

    move-result-object v2

    .line 1377
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "model"

    invoke-static {v0, v4, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1378
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    const-string v4, "manufacturer"

    invoke-static {v0, v4, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1379
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v0, v4, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1380
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getOSBuildNumber()Ljava/lang/String;

    move-result-object v3

    const-string v5, "build"

    invoke-static {v0, v5, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1382
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1383
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSDKInfo()Lcom/verizon/ads/SDKInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/verizon/ads/SDKInfo;->version:Ljava/lang/String;

    const-string v6, "coreVer"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "com.verizon.ads"

    const-string v6, "editionName"

    const/4 v7, 0x0

    .line 1385
    invoke-static {v5, v6, v7}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "editionVersion"

    .line 1386
    invoke-static {v5, v8, v7}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v8

    aput-object v5, v10, v9

    const-string v5, "%s-%s"

    .line 1388
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "editionId"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1391
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->getRegisteredPlugins()Ljava/util/Set;

    move-result-object v5

    .line 1392
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1393
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1395
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/verizon/ads/Plugin;

    .line 1396
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1397
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1398
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v12

    const-string v13, "version"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1399
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getAuthor()Ljava/lang/String;

    move-result-object v12

    const-string v13, "author"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getEmail()Ljava/net/URI;

    move-result-object v12

    const-string v13, "email"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1401
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getWebsite()Ljava/net/URL;

    move-result-object v12

    const-string v13, "website"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1402
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getMinApiLevel()I

    move-result v12

    const-string v13, "minApiLevel"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1403
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/verizon/ads/VASAds;->isPluginEnabled(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "enabled"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1405
    invoke-virtual {v10}, Lcom/verizon/ads/Plugin;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v4, "sdkPlugins"

    .line 1408
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v4, "sdkInfo"

    .line 1410
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 1414
    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->getMCC()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mcc"

    invoke-static {v0, v4, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1415
    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->getMNC()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mnc"

    invoke-static {v0, v4, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1416
    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->getCellSignalDbm()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cellSignalDbm"

    invoke-static {v0, v4, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1417
    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "carrier"

    invoke-static {v0, v3, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1419
    :cond_3
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lang"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1420
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1421
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ua"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    const-string p1, "secureContent"

    .line 1424
    invoke-virtual {v0, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1428
    :cond_4
    iget-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo;->getAdvertisingIdInfo()Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1430
    invoke-interface {p1}, Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "ifa"

    .line 1432
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1433
    invoke-interface {p1}, Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    move-result p1

    const-string v2, "lmt"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1438
    :cond_5
    iget-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getScreenInfo()Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    move-result-object p1

    .line 1439
    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->getWidth()I

    move-result v2

    const-string v3, "w"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1440
    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->getHeight()I

    move-result v2

    const-string v3, "h"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1441
    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->getDensity()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "screenScale"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1442
    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->getDensityDpi()I

    move-result p1

    const-string v2, "ppi"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1443
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getNaturalOrientation()Ljava/lang/String;

    move-result-object p1

    const-string v2, "natOrient"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1444
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getAvailableStorage()Ljava/lang/Long;

    move-result-object p1

    const-string v2, "storage"

    invoke-static {v0, v2, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 1445
    invoke-virtual {v1, p1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getVolume(I)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "vol"

    invoke-static {v0, v2, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1446
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->hasHeadphonesPluggedIn()Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "headphones"

    invoke-static {v0, v2, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1449
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->isCharging()Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "charging"

    invoke-static {v0, v2, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1450
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object p1

    const-string v2, "charge"

    invoke-static {v0, v2, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1453
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const-string v2, "unknown"

    if-nez p1, :cond_6

    goto :goto_2

    .line 2985
    :cond_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2986
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v9, :cond_7

    const-string v7, "wifi"

    goto :goto_2

    :cond_7
    if-nez v3, :cond_8

    .line 2991
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "hspap"

    goto :goto_2

    :pswitch_1
    const-string v7, "ehrpd"

    goto :goto_2

    :pswitch_2
    const-string v7, "lte"

    goto :goto_2

    :pswitch_3
    const-string v7, "evdo_b"

    goto :goto_2

    :pswitch_4
    const-string v7, "iden"

    goto :goto_2

    :pswitch_5
    const-string v7, "hspa"

    goto :goto_2

    :pswitch_6
    const-string v7, "hsupa"

    goto :goto_2

    :pswitch_7
    const-string v7, "hsdpa"

    goto :goto_2

    :pswitch_8
    const-string v7, "1xrtt"

    goto :goto_2

    :pswitch_9
    const-string v7, "evdo_a"

    goto :goto_2

    :pswitch_a
    const-string v7, "evdo_0"

    goto :goto_2

    :pswitch_b
    const-string v7, "cdma"

    goto :goto_2

    :pswitch_c
    const-string v7, "umts"

    goto :goto_2

    :pswitch_d
    const-string v7, "edge"

    goto :goto_2

    :pswitch_e
    const-string v7, "gprs"

    goto :goto_2

    :cond_8
    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_9
    const-string v7, "offline"

    :goto_2
    const-string p1, "connectionType"

    .line 1453
    invoke-static {v0, p1, v7}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1454
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getIP()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ip"

    invoke-static {v0, v2, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1457
    iget-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e:Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p1}, Lcom/verizon/ads/EnvironmentInfo;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1458
    invoke-static {}, Lcom/verizon/ads/VASAds;->isLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1459
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1461
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-string v5, "lat"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1462
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-string v5, "lon"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1463
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string v4, "src"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1466
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-string v5, "ts"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1468
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1469
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    const-string v5, "horizAcc"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1472
    :cond_a
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1473
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    const-string v5, "speed"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1476
    :cond_b
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1477
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    float-to-double v3, v3

    const-string v5, "bearing"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1480
    :cond_c
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1481
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    const-string p1, "alt"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_d
    const-string p1, "loc"

    .line 1484
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1487
    :cond_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1489
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getCameras()[Lcom/verizon/ads/EnvironmentInfo$CameraType;

    move-result-object v2

    .line 1491
    array-length v3, v2

    :goto_3
    if-ge v8, v3, :cond_11

    aget-object v4, v2, v8

    .line 1492
    sget-object v5, Lcom/verizon/ads/EnvironmentInfo$CameraType;->FRONT:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    const-string v6, "true"

    if-ne v4, v5, :cond_f

    const-string v4, "cameraFront"

    .line 1493
    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 1494
    :cond_f
    sget-object v5, Lcom/verizon/ads/EnvironmentInfo$CameraType;->BACK:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    if-ne v4, v5, :cond_10

    const-string v4, "cameraRear"

    .line 1495
    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1499
    :cond_11
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->hasNFC()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "nfc"

    invoke-static {p1, v3, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->putAsStringIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1500
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->hasBluetooth()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "bt"

    invoke-static {p1, v3, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->putAsStringIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1501
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->hasMicrophone()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mic"

    invoke-static {p1, v3, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->putAsStringIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1502
    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->hasGPS()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {p1, v2, v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->putAsStringIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1504
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v1

    xor-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "deviceFeatures"

    invoke-static {v0, v2, p1, v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->putIfTrue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;I)V
    .locals 4

    .line 1115
    const-class v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;

    const-string v1, "com.verizon.ads.core"

    const-string v2, "sdkEnabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x3

    if-nez v1, :cond_0

    .line 1118
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Verizon Ads SDK is disabled."

    invoke-direct {v1, v0, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1121
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No request metadata provided for request"

    invoke-direct {v1, v0, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1126
    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {v1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p2, v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1133
    :cond_2
    new-instance v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;-><init>(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;I)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1883
    sget-object p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to put value, specified key is null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 1894
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1896
    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error adding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to JSON"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/RequestMetadata;",
            ")",
            "Ljava/util/List<",
            "Lcom/verizon/ads/Waterfall;",
            ">;"
        }
    .end annotation

    .line 1235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1238
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "impressionGroup"

    if-eqz v2, :cond_1

    .line 1241
    :try_start_0
    sget-object v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v4, "Parsing playlist array resopnse"

    invoke-virtual {v2, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1242
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1244
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v1, p0, :cond_2

    .line 1246
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 1247
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1246
    invoke-static {p0, v4}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/verizon/ads/Waterfall;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1250
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1255
    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to parse playlist array response"

    invoke-virtual {p1, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1258
    :cond_1
    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v2, "Parsing single playlist resopnse"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1261
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1261
    invoke-static {v1, p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/verizon/ads/Waterfall;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1265
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1268
    sget-object p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to parse single playlist response"

    invoke-virtual {p1, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static b(Lcom/verizon/ads/RequestMetadata;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1630
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/RequestMetadata;->getExtras()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "testBidderID"

    .line 1633
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "testCreativeID"

    .line 1634
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    .line 1637
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "bidder"

    .line 1638
    invoke-static {v0, v2, v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "creativeId"

    .line 1639
    invoke-static {v0, v1, p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private b(Lcom/verizon/ads/RequestMetadata;Z)Lorg/json/JSONObject;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "dma"

    const-string v2, "country"

    const-string v3, "state"

    const-string v4, "dob"

    const-string v5, "politics"

    const-string v6, "marital"

    const-string v7, "keywords"

    const-string v8, "gender"

    const-string v9, "age"

    const-string v10, "ver"

    .line 1702
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "3"

    .line 1704
    invoke-virtual {v12, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "app"

    .line 3358
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "appId"

    .line 3876
    iget-object v11, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 3359
    invoke-virtual {v14, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "name"

    .line 3360
    invoke-direct/range {p0 .. p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3361
    invoke-direct/range {p0 .. p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1705
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "env"

    move/from16 v11, p2

    .line 1706
    invoke-direct {v1, v11}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Z)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "req"

    .line 1707
    invoke-direct/range {p0 .. p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/RequestMetadata;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "user"

    .line 4583
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v11

    if-nez v11, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 4587
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/verizon/ads/RequestMetadata;->getUserData()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 4590
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 4591
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "kids"

    const-string v14, "children"

    .line 4592
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "hhi"

    const-string v14, "income"

    .line 4593
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "edu"

    const-string v14, "education"

    .line 4594
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "eth"

    const-string v14, "ethnicity"

    .line 4595
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4596
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v13, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4598
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4600
    instance-of v9, v8, Ljava/util/List;

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 4601
    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v13, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4604
    :cond_1
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v13, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4605
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "zip"

    const-string v6, "postalCode"

    .line 4606
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4608
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4609
    instance-of v6, v5, Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 4610
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4613
    :cond_2
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4614
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4615
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v13, 0x0

    .line 1708
    :goto_1
    invoke-virtual {v12, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "testing"

    .line 1709
    invoke-static/range {p1 .. p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b(Lcom/verizon/ads/RequestMetadata;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v12, v0, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v0

    .line 1714
    sget-object v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v3, "Error creating JSON request"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method static b(Ljava/lang/String;)Z
    .locals 2

    .line 1344
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "\\s+"

    const-string v1, ""

    .line 1350
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\"adnet\":\"redirect\""

    .line 1352
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static buildFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1937
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1938
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 1939
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1940
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic c()Lcom/verizon/ads/Logger;
    .locals 1

    .line 68
    sget-object v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1844
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1846
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1849
    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v2, "Unable to determine package name"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1860
    iget-object v1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1864
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1867
    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v2, "Unable to determine application version"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getRequiredPropertyAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1953
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1954
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1955
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The value for key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is null or empty."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1950
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "The passed jsonObject is null."

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putAsStringIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1975
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static putIfTrue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1

    .line 1964
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1965
    invoke-static {p0, p1, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1907
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1908
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1909
    invoke-static {v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->buildFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1922
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1924
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1925
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->buildFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1928
    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v2, "Error building JSON from Map"

    invoke-virtual {v1, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method final a(Lcom/verizon/ads/RequestMetadata;Z)Ljava/lang/String;
    .locals 7

    const-string v0, "nativeTypes"

    const-string v1, "adSizes"

    .line 1651
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b(Lcom/verizon/ads/RequestMetadata;Z)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    .line 1658
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    const-string v3, "req"

    .line 1663
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1664
    invoke-virtual {p1}, Lcom/verizon/ads/RequestMetadata;->getPlacementData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v4, "posType"

    const-string v5, "type"

    .line 1667
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "posId"

    const-string v5, "id"

    .line 1668
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1670
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1671
    instance-of v5, v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "posTypeAttrs"

    if-eqz v5, :cond_2

    :try_start_1
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1673
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1674
    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1675
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1678
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1679
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "nativeType"

    .line 1681
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->toJSONArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1680
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1683
    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1688
    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1691
    sget-object p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v0, "Error building JSON request"

    invoke-virtual {p2, v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public getBiddingToken(Lcom/verizon/ads/RequestMetadata;)Ljava/lang/String;
    .locals 4

    .line 1088
    const-class v0, Ljava/lang/String;

    const-string v1, "com.verizon.ads"

    const-string v2, "waterfallProviderBaseUrl"

    const-string v3, "https://ads.nexage.com"

    invoke-static {v1, v2, v0, v3}, Lcom/verizon/ads/Configuration;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/admax/sdk/playlist/3"

    .line 1089
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    .line 1092
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b(Lcom/verizon/ads/RequestMetadata;Z)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1099
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "waterfallRequest"

    .line 1100
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1102
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1105
    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v2, "Error creating JSON bidding token"

    invoke-virtual {v1, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public isSuperAuctionSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load(Lcom/verizon/ads/Bid;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V
    .locals 8

    .line 994
    instance-of p2, p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 995
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const-string v1, "Bid is not valid"

    const/4 v2, 0x1

    invoke-direct {p1, p2, v1, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 996
    sget-object p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 998
    invoke-interface {p3, v0, p1}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1003
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;

    const v1, 0x927c0

    const-string v2, "com.verizon.ads.verizonssp"

    const-string v3, "bidExpirationTimeout"

    .line 1006
    invoke-static {v2, v3, v1}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 1010
    iget-wide v4, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->bidCreationTime:J

    const/4 v1, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 1011
    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    sget-object v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "Bid has expired"

    invoke-direct {v2, v3, v5, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    sget-object v4, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    invoke-virtual {v2}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1014
    invoke-interface {p3, v0, v2}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    .line 1016
    new-instance p3, Lcom/verizon/ads/WaterfallResult;

    iget-object v0, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    invoke-direct {p3, v0, p1}, Lcom/verizon/ads/WaterfallResult;-><init>(Lcom/verizon/ads/Waterfall;Lcom/verizon/ads/Bid;)V

    .line 1019
    iget-object p1, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object p1, p1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->i:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/Waterfall$WaterfallItem;

    invoke-virtual {p3, p1}, Lcom/verizon/ads/WaterfallResult;->startWaterfallItem(Lcom/verizon/ads/Waterfall$WaterfallItem;)Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 1020
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    const/16 p2, 0x71

    const-string v0, "Provided bid has expired."

    invoke-direct {p1, v3, v0, p2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3, p1}, Lcom/verizon/ads/WaterfallResult;->setResult(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1025
    :cond_1
    iget-object v2, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->winUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1026
    iget-object v2, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->winUrl:Ljava/lang/String;

    .line 2723
    new-instance v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;

    invoke-direct {v3, p0, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$2;-><init>(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1031
    :cond_2
    new-instance v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    invoke-direct {v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;-><init>()V

    .line 1033
    iget-object v3, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object v3, v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->b:Ljava/lang/String;

    .line 1034
    iget-object v3, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object v3, v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->c:Ljava/lang/String;

    .line 1035
    iget-object v3, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object v3, v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    .line 1036
    iget-object v3, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object v3, v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->e:Ljava/lang/String;

    .line 1037
    iget-object v3, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->waterfall:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object v3, v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->g:Ljava/lang/String;

    iput-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->g:Ljava/lang/String;

    .line 1039
    iget-object v3, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->g:Ljava/lang/String;

    const-string v4, "DoNotReport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1040
    invoke-virtual {v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->enableReporting()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    .line 1041
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1042
    sget-object v3, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v4, "Playlist dcn is <DoNotReport> -- reporting disabled"

    invoke-virtual {v3, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1045
    :cond_4
    :goto_0
    iget-object v3, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->demandSources:Lorg/json/JSONArray;

    if-eqz v3, :cond_b

    .line 1047
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 1050
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    .line 1051
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ad_bidder_id"

    const-string v7, "buyer"

    .line 1054
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1056
    iget-object v6, v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->d:Ljava/lang/String;

    if-eqz v5, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v7, "server_demand"

    .line 2830
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2831
    new-instance v5, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;

    invoke-direct {v5, v6, v4}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$ServerMediationWaterfallItem;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_6
    const-string v7, "ad_content"

    .line 2832
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2833
    new-instance v5, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;

    const-string v7, "adContent"

    invoke-direct {v5, v6, v7, v4}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$AdContentWaterfallItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 2823
    :cond_7
    :goto_2
    sget-object v4, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v5, "demand source type or json was null."

    invoke-virtual {v4, v5}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_8
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_a

    .line 1060
    instance-of v4, v5, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;

    if-eqz v4, :cond_9

    .line 1062
    move-object v4, v5

    check-cast v4, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;

    iget-object v6, p2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;->adSize:Ljava/util/Map;

    iput-object v6, v4, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfallItem;->l:Ljava/util/Map;

    .line 1065
    :cond_9
    invoke-virtual {v2, v5}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;->a(Lcom/verizon/ads/Waterfall$WaterfallItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 1069
    sget-object v5, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b:Lcom/verizon/ads/Logger;

    const-string v6, "Error processing super auction demand source."

    invoke-virtual {v5, v6, v4}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_c

    .line 1074
    new-instance p2, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c:Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "No Demand Sources in Super Auction item."

    invoke-direct {p2, v1, v4, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v0, p2}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    .line 1078
    :cond_c
    iget-object p2, p1, Lcom/verizon/ads/Bid;->adSession:Lcom/verizon/ads/AdSession;

    const-string v1, "response.waterfall"

    invoke-virtual {p2, v1, v2}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_d

    .line 1080
    iget-object p1, p1, Lcom/verizon/ads/Bid;->adSession:Lcom/verizon/ads/AdSession;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    :cond_d
    return-void
.end method

.method public load(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/WaterfallProvider$WaterfallListener;)V
    .locals 1

    .line 973
    new-instance v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-direct {v0, p3, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;-><init>(Lcom/verizon/ads/WaterfallProvider$WaterfallListener;Lcom/verizon/ads/RequestMetadata;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;I)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requestBid(Lcom/verizon/ads/RequestMetadata;ILcom/verizon/ads/BidRequestListener;)V
    .locals 1

    .line 987
    new-instance v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-direct {v0, p3, p1}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/RequestMetadata;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;I)V

    return-void
.end method
