.class public final Lcom/facebook/ads/redexgen/X/KH;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/KH;

.field public static A01:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40952
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KH;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/KH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KH;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/KH;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00()Lcom/facebook/ads/redexgen/X/KH;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/KH;

    monitor-enter v1

    .line 40954
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/KH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Wm;Lorg/json/JSONObject;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/St;
    .locals 10
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40955
    const/16 v2, 0x6a

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40956
    .local p1, "placements":Lorg/json/JSONArray;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 40957
    .local p2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x46

    const/16 v1, 0xa

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40958
    .local p3, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v6

    .line 40959
    .local v4, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    const/16 v2, 0x55

    const/16 v1, 0xe

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40960
    .local p5, "featureConfig":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40961
    .local p2, "adReportingConfig":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {v4, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/8w;-><init>(Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;Ljava/lang/String;)V

    .line 40962
    .local v2, "adPlacement":Lcom/facebook/ads/redexgen/X/8w;
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40963
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 40964
    .local v1, "ads":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 40965
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 40966
    .local v0, "ad":Lorg/json/JSONObject;
    invoke-static {p1, v9, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/JM;->A07(Lcom/facebook/ads/redexgen/X/Wm;Lorg/json/JSONObject;JLjava/lang/String;)V

    .line 40967
    const/16 v2, 0x13

    const/4 v1, 0x7

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 40968
    .local v1, "adapter":Ljava/lang/String;
    .end local p1    # "placements":Lorg/json/JSONArray;
    .local v0, "placements":Lorg/json/JSONArray;
    const/16 v2, 0x37

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40969
    .local p1, "dataModelType":Ljava/lang/String;
    .end local p2    # "adReportingConfig":Ljava/lang/String;
    .local v0, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x33

    const/4 v1, 0x4

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 40970
    .local p2, "data":Lorg/json/JSONObject;
    .end local p3    # "definition":Lorg/json/JSONObject;
    .local v0, "definition":Lorg/json/JSONObject;
    const/16 v2, 0x74

    const/16 v1, 0x8

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40971
    .local p3, "trackers":Lorg/json/JSONArray;
    .end local v4    # "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    .local v6, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    new-instance v0, Lcom/facebook/ads/redexgen/X/8u;

    invoke-direct {v0, v6, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/8u;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 40972
    .local v4, "adCandidate":Lcom/facebook/ads/redexgen/X/8u;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0A(Lcom/facebook/ads/redexgen/X/8u;)V

    .line 40973
    .end local p1    # "dataModelType":Ljava/lang/String;
    .end local p2    # "data":Lorg/json/JSONObject;
    .end local p3    # "trackers":Lorg/json/JSONArray;
    .end local v4    # "adCandidate":Lcom/facebook/ads/redexgen/X/8u;
    .end local v0    # "definition":Lorg/json/JSONObject;
    .end local v1    # "adapter":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 40974
    .end local p1
    .end local p2
    .end local p3
    .end local v4
    .restart local v0    # "definition":Lorg/json/JSONObject;
    .restart local v0    # "definition":Lorg/json/JSONObject;
    .restart local v0    # "definition":Lorg/json/JSONObject;
    .restart local v6    # "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40975
    .local p1, "anValidationUuid":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/St;-><init>(Lcom/facebook/ads/redexgen/X/8w;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ss;
    .locals 4

    .line 40976
    const/16 v2, 0x63

    const/4 v1, 0x7

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ss;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8w;)V

    .line 40977
    return-object v0
.end method

.method private A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ss;
    .locals 8

    .line 40978
    :try_start_0
    const/16 v2, 0x6a

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 40979
    .local p0, "placements":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 40980
    .local v2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x46

    const/16 v1, 0xa

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40981
    .local v1, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v6

    .line 40982
    .local v0, "placementDefinition":Lcom/facebook/ads/redexgen/X/8x;
    const/16 v2, 0x55

    const/16 v1, 0xe

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40983
    .local v0, "featureConfig":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40984
    .local v0, "adReportingConfig":Ljava/lang/String;
    const/16 v2, 0x63

    const/4 v1, 0x7

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 40985
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 40986
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/8w;

    invoke-direct {v1, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/8w;-><init>(Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ss;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8w;)V

    .line 40987
    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40988
    .end local p0    # "placements":Lorg/json/JSONArray;
    .end local v2    # "placement":Lorg/json/JSONObject;
    .end local v1    # "definition":Lorg/json/JSONObject;
    .end local v0    # "adReportingConfig":Ljava/lang/String;
    .end local v0
    .end local v0
    .local p0, "e":Lorg/json/JSONException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KH;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ss;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KH;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KH;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x73t
        0x48t
        0x65t
        0x72t
        0x67t
        0x78t
        0x65t
        0x63t
        0x7et
        0x79t
        0x70t
        0x48t
        0x74t
        0x78t
        0x79t
        0x71t
        0x7et
        0x70t
        0x4dt
        0x48t
        0x4dt
        0x5ct
        0x58t
        0x49t
        0x5et
        0x18t
        0x1dt
        0xat
        0x64t
        0x6bt
        0x5at
        0x73t
        0x64t
        0x69t
        0x6ct
        0x61t
        0x64t
        0x71t
        0x6ct
        0x6at
        0x6bt
        0x5at
        0x70t
        0x70t
        0x6ct
        0x61t
        0x2ct
        0x20t
        0x2bt
        0x2at
        0x6et
        0x6bt
        0x7et
        0x6bt
        0x20t
        0x25t
        0x30t
        0x25t
        0x1bt
        0x29t
        0x2bt
        0x20t
        0x21t
        0x28t
        0x1bt
        0x30t
        0x3dt
        0x34t
        0x21t
        0x7at
        0x7bt
        0x78t
        0x77t
        0x70t
        0x77t
        0x6at
        0x77t
        0x71t
        0x70t
        0x11t
        0x6t
        0x6t
        0x1bt
        0x6t
        0x6et
        0x6dt
        0x69t
        0x7ct
        0x7dt
        0x7at
        0x6dt
        0x57t
        0x6bt
        0x67t
        0x66t
        0x6et
        0x61t
        0x6ft
        0x71t
        0x79t
        0x6ft
        0x6ft
        0x7dt
        0x7bt
        0x79t
        0xet
        0x12t
        0x1ft
        0x1dt
        0x1bt
        0x13t
        0x1bt
        0x10t
        0xat
        0xdt
        0x9t
        0xft
        0x1ct
        0x1et
        0x16t
        0x18t
        0xft
        0xet
        0x59t
        0x54t
        0x5dt
        0x48t
    .end array-data
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/KJ;
    .locals 13
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40989
    move-object v1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40990
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40991
    .local p0, "jsonResponse":Lorg/json/JSONObject;
    const/16 v2, 0x7c

    const/4 v1, 0x4

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40992
    .local v9, "type":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v5, 0x178b0

    const/16 v2, 0x50

    const/4 v1, 0x5

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    if-eq v7, v5, :cond_2

    const v0, 0x5c4d208

    if-eq v7, v0, :cond_1

    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_3

    .line 40993
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40994
    .local v8, "error":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    .line 40995
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KH;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ss;

    move-result-object v0

    return-object v0

    .line 40996
    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KH;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 40997
    .end local v8    # "error":Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/KH;->A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Ss;

    move-result-object v0

    return-object v0

    .line 40998
    :cond_4
    move-object v7, p0

    move-object/from16 v12, p5

    move-wide/from16 v10, p3

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/KH;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lorg/json/JSONObject;JLjava/lang/String;)Lcom/facebook/ads/redexgen/X/St;

    move-result-object v0

    return-object v0

    .line 40999
    .end local p0    # "jsonResponse":Lorg/json/JSONObject;
    .end local v9    # "type":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/KI;->A04:Lcom/facebook/ads/redexgen/X/KI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KJ;-><init>(Lcom/facebook/ads/redexgen/X/KI;)V

    return-object v0
.end method
