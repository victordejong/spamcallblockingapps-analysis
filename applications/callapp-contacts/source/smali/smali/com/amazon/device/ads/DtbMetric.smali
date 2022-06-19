.class final enum Lcom/amazon/device/ads/DtbMetric;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DtbMetric$DtbMetricType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/DtbMetric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/DtbMetric;

.field public static final enum AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum AAX_NETWORK_FAILURE:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum ADSERVER_ADLOAD_FAILURE:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum BANNER_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum BANNER_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum INTERSTITIAL_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum INTERSTITIAL_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/DtbMetric;


# instance fields
.field private final aaxName3g:Ljava/lang/String;

.field private final aaxNameWifi:Ljava/lang/String;

.field private final metricType:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 5
    new-instance v6, Lcom/amazon/device/ads/DtbMetric;

    sget-object v5, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v1, "AAX_BID_TIME"

    const/4 v2, 0x0

    const-string v3, "dabtw"

    const-string v4, "dabt3"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v6, Lcom/amazon/device/ads/DtbMetric;->AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 8
    new-instance v0, Lcom/amazon/device/ads/DtbMetric;

    sget-object v12, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->COUNTER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v8, "AAX_PUNTED"

    const/4 v9, 0x1

    const-string v10, "dapw"

    const-string v11, "dap3"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

    .line 11
    new-instance v1, Lcom/amazon/device/ads/DtbMetric;

    sget-object v18, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->COUNTER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v14, "AAX_NETWORK_FAILURE"

    const/4 v15, 0x2

    const-string v16, "danfw"

    const-string v17, "danf3"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v1, Lcom/amazon/device/ads/DtbMetric;->AAX_NETWORK_FAILURE:Lcom/amazon/device/ads/DtbMetric;

    .line 14
    new-instance v2, Lcom/amazon/device/ads/DtbMetric;

    sget-object v12, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v8, "BANNER_ADSERVER_TIME"

    const/4 v9, 0x3

    const-string v10, "dbastw"

    const-string v11, "dbast3"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v2, Lcom/amazon/device/ads/DtbMetric;->BANNER_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 17
    new-instance v3, Lcom/amazon/device/ads/DtbMetric;

    sget-object v18, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v14, "INTERSTITIAL_ADSERVER_TIME"

    const/4 v15, 0x4

    const-string v16, "diastw"

    const-string v17, "diast3"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v3, Lcom/amazon/device/ads/DtbMetric;->INTERSTITIAL_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 21
    new-instance v4, Lcom/amazon/device/ads/DtbMetric;

    sget-object v12, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->COUNTER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v8, "ADSERVER_ADLOAD_FAILURE"

    const/4 v9, 0x5

    const-string v10, "dasfw"

    const-string v11, "dasf3"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v4, Lcom/amazon/device/ads/DtbMetric;->ADSERVER_ADLOAD_FAILURE:Lcom/amazon/device/ads/DtbMetric;

    .line 24
    new-instance v5, Lcom/amazon/device/ads/DtbMetric;

    sget-object v18, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v14, "BANNER_TOTAL_LOAD_TIME"

    const/4 v15, 0x6

    const-string v16, "dbtltw"

    const-string v17, "dbtlt3"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v5, Lcom/amazon/device/ads/DtbMetric;->BANNER_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 27
    new-instance v13, Lcom/amazon/device/ads/DtbMetric;

    sget-object v12, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v8, "INTERSTITIAL_TOTAL_LOAD_TIME"

    const/4 v9, 0x7

    const-string v10, "ditltw"

    const-string v11, "ditlt3"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v13, Lcom/amazon/device/ads/DtbMetric;->INTERSTITIAL_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 29
    new-instance v7, Lcom/amazon/device/ads/DtbMetric;

    sget-object v19, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v15, "CONFIG_DOWNLOAD_LATENCY"

    const/16 v16, 0x8

    const-string v17, "acl"

    const-string v18, "acl"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v7, Lcom/amazon/device/ads/DtbMetric;->CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/DtbMetric;

    .line 31
    new-instance v8, Lcom/amazon/device/ads/DtbMetric;

    sget-object v25, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v21, "SIS_LATENCY_UPDATE_DEVICE_INFO"

    const/16 v22, 0x9

    const-string v23, "sul"

    const-string v24, "sul"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v8, Lcom/amazon/device/ads/DtbMetric;->SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/DtbMetric;

    .line 33
    new-instance v9, Lcom/amazon/device/ads/DtbMetric;

    sget-object v19, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->COUNTER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v15, "SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED"

    const/16 v16, 0xa

    const-string v17, "sid"

    const-string v18, "sid"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v9, Lcom/amazon/device/ads/DtbMetric;->SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/DtbMetric;

    .line 35
    new-instance v10, Lcom/amazon/device/ads/DtbMetric;

    sget-object v25, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v21, "SIS_LATENCY_REGISTER_EVENT"

    const/16 v22, 0xb

    const-string v23, "srel"

    const-string v24, "srel"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v10, Lcom/amazon/device/ads/DtbMetric;->SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/DtbMetric;

    const/16 v11, 0xc

    new-array v11, v11, [Lcom/amazon/device/ads/DtbMetric;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v0, v11, v6

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v13, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v8, v11, v0

    const/16 v0, 0xa

    aput-object v9, v11, v0

    const/16 v0, 0xb

    aput-object v10, v11, v0

    .line 3
    sput-object v11, Lcom/amazon/device/ads/DtbMetric;->$VALUES:[Lcom/amazon/device/ads/DtbMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/DtbMetric$DtbMetricType;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/amazon/device/ads/DtbMetric;->aaxNameWifi:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/amazon/device/ads/DtbMetric;->aaxName3g:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/amazon/device/ads/DtbMetric;->metricType:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/DtbMetric;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/device/ads/DtbMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/DtbMetric;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/DtbMetric;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->$VALUES:[Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/DtbMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/DtbMetric;

    return-object v0
.end method


# virtual methods
.method public final getAAXName()Ljava/lang/String;
    .locals 2

    .line 48
    sget-object v0, Lcom/amazon/device/ads/DtbNetworkState;->a:Lcom/amazon/device/ads/DtbNetworkState;

    .line 1019
    iget-object v0, v0, Lcom/amazon/device/ads/DtbNetworkState;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetric;->aaxNameWifi:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetric;->aaxName3g:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetricType()Lcom/amazon/device/ads/DtbMetric$DtbMetricType;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetric;->metricType:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbMetric;->getAAXName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbMetric;->getMetricType()Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
