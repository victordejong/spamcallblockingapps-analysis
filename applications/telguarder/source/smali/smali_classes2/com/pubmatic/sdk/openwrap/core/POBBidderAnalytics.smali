.class public Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_CLIENT_BIDDER_AVAILABLE_MSG:Ljava/lang/String; = "No client-side bidder profile configured, skipping logger call"


# instance fields
.field private a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

.field b:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/openwrap/core/POBRequest;Lcom/pubmatic/sdk/common/network/POBTrackerHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    iput-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->b:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->c:J

    return-void
.end method

.method private static a(D)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "%.2f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getPubMaticPartnerId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pubmatic/sdk/common/base/POBBidderResult;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getAdResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;

    move-result-object v7

    if-nez v7, :cond_2

    :goto_1
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v7}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_a

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getCreativeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(D)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v13

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v19

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getRevShare()D

    move-result-wide v21

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    div-double v21, v21, v23

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    sub-double v23, v23, v21

    mul-double v19, v19, v23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    move-object/from16 v21, v2

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v4, v16

    const-string v2, "%.2f"

    invoke-static {v15, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v7

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v19, v4

    goto :goto_3

    :cond_4
    move-object/from16 v19, v4

    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getDealId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getStatus()I

    move-result v11

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-ne v11, v3, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v5}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getNetworkResult()Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/pubmatic/sdk/common/network/POBNetworkResult;->getNetworkTimeMs()J

    move-result-wide v22

    goto :goto_5

    :cond_6
    const-wide/16 v22, 0x0

    :goto_5
    move-object/from16 v17, v4

    move-wide/from16 v3, v22

    move-object/from16 v22, v5

    const-string v5, "l1"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "pn"

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "kgpv"

    move-object/from16 v4, v18

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "kgpsv"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "psz"

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v14}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "af"

    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v3, "eg"

    invoke-virtual {v0, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "en"

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "wb"

    invoke-virtual {v0, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "bidid"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ss"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v17, :cond_8

    const-string v2, "di"

    move-object/from16 v4, v17

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dc"

    const-string v4, "PMP"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string v2, "db"

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v19, v7

    const/4 v3, 0x0

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p2

    move-object/from16 v4, p4

    move-object/from16 v7, v19

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    move-object/from16 v5, v22

    goto/16 :goto_2

    :cond_a
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    if-nez v10, :cond_b

    :goto_7
    invoke-virtual/range {v22 .. v22}, Lcom/pubmatic/sdk/common/base/POBBidderResult;->getNetworkResult()Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    move-result-object v2

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    invoke-direct {v3, v4, v2, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Lcom/pubmatic/sdk/common/network/POBNetworkResult;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_b
    move-object/from16 v3, p0

    goto :goto_8

    :cond_c
    move-object/from16 v3, p0

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getPubId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pubid"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getNetworkTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual/range {p3 .. p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getPubId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getProfileId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getApplicationInfo()Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->getStoreURL()Ljava/net/URL;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getImpressions()[Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    array-length v9, v6

    if-lez v9, :cond_2

    aget-object v6, v6, v8

    iget-object v7, v6, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->adUnitId:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v15, p0

    iget-wide v10, v15, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->c:J

    const-string v12, "tst"

    invoke-virtual {v9, v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "to"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pubid"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pid"

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pdvid"

    invoke-virtual {v9, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "iid"

    invoke-virtual {v9, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "purl"

    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "orig"

    move-object/from16 v1, p5

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x5

    const-string v2, "plt"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dvc"

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    :cond_3
    move-object v11, v5

    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v10, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    move-object/from16 v14, p2

    move-object v15, v2

    invoke-direct/range {v10 .. v15}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v2, "ps"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sn"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getClientSidePartnerBids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getClientSidePartnerBids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getClientSidePartnerBids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v1, "sz"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    new-instance v1, Lorg/json/JSONArray;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    aput-object v0, v2, v8

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v0, "s"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v9
.end method

.method private a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Lcom/pubmatic/sdk/openwrap/core/POBRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "POBPartnerTrackerHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getLogger()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Updating logger details"

    invoke-static {v0, v3, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p4

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "json"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ps"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    move-object v11, v5

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-object v6, p0

    move-object/from16 v8, p5

    move-object v9, p3

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/json/JSONObject;

    aput-object v3, v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Generating default logger"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Lcom/pubmatic/sdk/common/network/POBNetworkResult;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pn"

    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "db"

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/network/POBNetworkResult;->getNetworkTimeMs()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const-string v0, "l1"

    invoke-virtual {p3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x0

    const-string p2, "ss"

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p3
.end method


# virtual methods
.method public executeLogger(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pubmatic/sdk/common/base/POBBidderResult<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "POBPartnerTrackerHelper"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getLogger()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-static {v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Ljava/lang/String;Lcom/pubmatic/sdk/openwrap/core/POBRequest;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/Map;Lcom/pubmatic/sdk/openwrap/core/POBRequest;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "Logger JSON - %s"

    :try_start_1
    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {v0, p2, p3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "json"

    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "%s%s"

    const/4 p3, 0x2

    :try_start_3
    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "https://t.pubmatic.com/wl"

    aput-object p4, p3, v1

    aput-object p1, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->b:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTracker(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Exception occurred while executing the logger - %s"

    invoke-static {v0, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "No client-side bidder profile configured, skipping logger call"

    invoke-static {v0, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public executeTracker(Lcom/pubmatic/sdk/common/models/POBAdResponse;Lcom/pubmatic/sdk/common/models/POBPartnerInfo;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            ">;",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    const-string v2, "POBPartnerTrackerHelper"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getBidderCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v6}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPrice()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->getRevShare()D

    move-result-wide v11

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v11

    mul-double v9, v9, v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v13, v3

    const-string v9, "%.2f"

    invoke-static {v11, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getImpressionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getTracker()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v2, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getVersionId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v10, 0xb

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v3

    aput-object v8, v10, v12

    const/4 v3, 0x2

    aput-object v9, v10, v3

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v10, v3

    const/4 v1, 0x4

    aput-object v7, v10, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v10, v2

    iget-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getProfileId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v10, v2

    const/4 v1, 0x7

    aput-object v4, v10, v1

    iget-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->a:Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->getPubId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v10, v2

    const/16 v1, 0x9

    aput-object v6, v10, v1

    iget-wide v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v10, v2

    const-string v1, "https://t.pubmatic.com/wt?bidid=%s&eg=%s&en=%s&iid=%s&kgpv=%s&pdvid=%s&pid=%s&pn=%s&pubid=%s&slot=%s&tst=%s"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const-string v4, "${BID_ID}"

    :try_start_0
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "${PARTNER_NAME}"

    :try_start_1
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getPartnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "${KGPV}"

    :try_start_2
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "${G_ECPM}"

    :try_start_3
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "${N_ECPM}"

    :try_start_4
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "${SLOT_ID}"

    :try_start_5
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Tracker macro replacement failed."

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sanitizeURLScheme(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/pubmatic/sdk/openwrap/core/POBBidderAnalytics;->b:Lcom/pubmatic/sdk/common/network/POBTrackerHandler;

    invoke-virtual {v2, v1}, Lcom/pubmatic/sdk/common/network/POBTrackerHandler;->sendTracker(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, " Unable to execute partner tracker as bid is not available."

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
