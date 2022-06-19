.class public Lcom/bytedance/sdk/openadsdk/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/e/a;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 35
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/e/a;-><init>()V

    const-string v2, "request_id"

    .line 36
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Ljava/lang/String;)V

    const-string v2, "ret"

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(I)V

    const-string v2, "message"

    .line 38
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b(Ljava/lang/String;)V

    const-string v2, "auction_price"

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a()I

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    const-string v3, "creatives"

    .line 43
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 46
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 47
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->c(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 65
    :cond_0
    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/e/b;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/e/e;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->c()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->c()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz p0, :cond_b

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_1

    goto/16 :goto_3

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/e;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 415
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 410
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/b;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    const/4 v2, 0x0

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    return v2

    .line 427
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    const/16 v3, 0xf

    if-eq v0, v3, :cond_8

    const/16 v3, 0x10

    if-eq v0, v3, :cond_9

    goto :goto_4

    .line 438
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/o;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_5

    .line 432
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_5

    :cond_a
    :goto_3
    return v1

    :cond_b
    :goto_4
    move v1, v2

    :goto_5
    return v1
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/e/o;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/h;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 492
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    return v0

    .line 495
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/e/h;

    if-nez v1, :cond_3

    return v0

    .line 499
    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "mCodeId"

    const-string v2, ""

    .line 248
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mImgAcceptedWidth"

    const/4 v4, 0x0

    .line 249
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "mImgAcceptedHeight"

    .line 250
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "mExpressViewAcceptedWidth"

    const-wide/16 v7, 0x0

    .line 251
    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    const-string v9, "mExpressViewAcceptedHeight"

    .line 252
    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x6

    const-string v9, "mAdCount"

    .line 253
    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    const-string v10, "mSupportDeepLink"

    .line 254
    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "mRewardName"

    .line 255
    invoke-virtual {v0, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mRewardAmount"

    .line 256
    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "mMediaExtra"

    .line 257
    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mUserID"

    .line 258
    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "mOrientation"

    .line 259
    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "mNativeAdType"

    .line 260
    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "mIsAutoPlay"

    .line 261
    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v17, v15

    const-string v15, "mIsExpressAd"

    .line 262
    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v15, "mBidAdm"

    .line 263
    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 265
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v16

    .line 275
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v17

    .line 276
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;-><init>()V

    const-string v1, "interaction_type"

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->o(I)V

    const-string v1, "target_url"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->e(Ljava/lang/String;)V

    const-string v1, "ad_id"

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->j(Ljava/lang/String;)V

    const-string v1, "source"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Ljava/lang/String;)V

    const-string v1, "dislike_control"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->r(I)V

    const/16 v1, -0xc8

    const-string v3, "play_bar_show_time"

    .line 79
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->j(I)V

    const-string v1, "is_playable"

    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Z)V

    const-string v1, "playable_type"

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(I)V

    const-string v1, "playable_style"

    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Ljava/lang/String;)V

    const-string v1, "gecko_id"

    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->l(Ljava/lang/String;)V

    const-string v1, "icon"

    .line 86
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "screenshot"

    .line 87
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Z)V

    const-string v3, "play_bar_style"

    .line 88
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->h(I)V

    const-string v3, "market_url"

    const-string v4, ""

    .line 89
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->m(Ljava/lang/String;)V

    const-string v3, "video_adaptation"

    .line 90
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f(I)V

    const-string v3, "feed_video_opentype"

    .line 91
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->e(I)V

    const-string v3, "session_params"

    .line 92
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lorg/json/JSONObject;)V

    const-string v3, "auction_price"

    .line 93
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->c(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 99
    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->e:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    const-string v5, "render_control"

    .line 101
    invoke-virtual {p0, v5, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(I)V

    const-string p2, "width"

    const-string v5, "height"

    const-string v6, "url"

    if-eqz v1, :cond_2

    .line 103
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/e/h;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;-><init>()V

    .line 104
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b(I)V

    .line 106
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(I)V

    .line 107
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/h;)V

    :cond_2
    const-string v1, "reward_data"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v7, "reward_amount"

    .line 113
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(I)V

    const-string v7, "reward_name"

    .line 114
    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Ljava/lang/String;)V

    :cond_3
    const-string v1, "cover_image"

    .line 118
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 120
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/e/h;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/e/h;-><init>()V

    .line 121
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b(I)V

    .line 123
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(I)V

    .line 124
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Lcom/bytedance/sdk/openadsdk/core/e/h;)V

    :cond_4
    const-string v1, "image"

    .line 127
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v4, 0x0

    .line 129
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 130
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/e/h;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;-><init>()V

    .line 131
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 132
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b(I)V

    .line 134
    invoke-virtual {v8, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a(I)V

    .line 135
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/e/i;->c(Lcom/bytedance/sdk/openadsdk/core/e/h;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string p2, "show_url"

    .line 138
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    .line 140
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 141
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->J()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const-string p2, "click_url"

    .line 144
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 v1, 0x0

    .line 146
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 147
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->K()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const-string p2, "play_start"

    .line 151
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 v1, 0x0

    .line 153
    :goto_4
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 154
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->L()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const-string p2, "click_area"

    .line 158
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 160
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/e/c;-><init>()V

    const-string v4, "click_upper_content_area"

    .line 161
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/e/c;->a:Z

    const-string v4, "click_upper_non_content_area"

    .line 162
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:Z

    const-string v4, "click_lower_content_area"

    .line 163
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:Z

    const-string v4, "click_lower_non_content_area"

    .line 164
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/e/c;->d:Z

    const-string v4, "click_button_area"

    .line 165
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/e/c;->e:Z

    const-string v4, "click_video_area"

    .line 166
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, v1, Lcom/bytedance/sdk/openadsdk/core/e/c;->f:Z

    .line 167
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/c;)V

    :cond_9
    const-string p2, "adslot"

    .line 171
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 173
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/b;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 176
    :cond_a
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const-string p1, "intercept_flag"

    .line 180
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->i(I)V

    const-string p1, "phone_num"

    .line 182
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f(Ljava/lang/String;)V

    const-string p1, "title"

    .line 183
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->g(Ljava/lang/String;)V

    const-string p1, "description"

    .line 184
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->h(Ljava/lang/String;)V

    const-string p1, "button_text"

    .line 185
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->i(Ljava/lang/String;)V

    const-string p1, "ad_logo"

    .line 186
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->g(I)V

    const-string p1, "ext"

    .line 187
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->k(Ljava/lang/String;)V

    const-string p1, "cover_click_area"

    .line 189
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->m(I)V

    const-string p2, "image_mode"

    .line 192
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->p(I)V

    .line 193
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->m(I)V

    const-string p1, "app"

    .line 194
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "deep_link"

    .line 195
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 196
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/b;)V

    .line 197
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/b;->f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/e;)V

    const-string p1, "filter_words"

    .line 198
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p2, 0x0

    .line 200
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_c

    .line 201
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 202
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/b;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 203
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 204
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_c
    const-string p1, "count_down"

    .line 208
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->q(I)V

    const-string p1, "expiration_time"

    .line 209
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(J)V

    const-string p1, "video"

    .line 210
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 212
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/o;)V

    :cond_d
    const-string p1, "download_conf"

    .line 215
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 217
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/f;)V

    :cond_e
    const-string p1, "media_ext"

    .line 220
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 221
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b;->h(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Ljava/util/Map;)V

    const-string p1, "tpl_info"

    .line 223
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 225
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;-><init>()V

    const-string v1, "id"

    .line 226
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->b(Ljava/lang/String;)V

    const-string v1, "md5"

    .line 227
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->c(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->d(Ljava/lang/String;)V

    const-string v1, "data"

    .line 229
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->e(Ljava/lang/String;)V

    const-string v1, "diff_data"

    .line 230
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->f(Ljava/lang/String;)V

    const-string v1, "dynamic_creative"

    .line 231
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->g(Ljava/lang/String;)V

    const-string v1, "version"

    .line 232
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->a(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a(Lcom/bytedance/sdk/openadsdk/core/e/i$a;)V

    :cond_f
    const-string p1, "if_block_lp"

    .line 236
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->c(I)V

    const-string p1, "cache_sort"

    .line 237
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->k(I)V

    const-string p1, "if_sp_cache"

    .line 238
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->l(I)V

    const/4 p1, 0x2

    const-string p2, "ua_policy"

    .line 240
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->n(I)V

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 289
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    const-string v2, "id"

    .line 290
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    const-string v2, "name"

    .line 291
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    const-string v2, "is_selected"

    .line 292
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    const-string v2, "options"

    .line 293
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 295
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 296
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 297
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 298
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/b;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/b;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 318
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;-><init>()V

    const-string v1, "app_name"

    .line 319
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b(Ljava/lang/String;)V

    const-string v1, "package_name"

    .line 320
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c(Ljava/lang/String;)V

    const-string v1, "download_url"

    .line 321
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "score"

    .line 322
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a(I)V

    const/16 v1, 0x1ad6

    const-string v2, "comment_num"

    .line 323
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b(I)V

    const/4 v1, 0x0

    const-string v2, "app_size"

    .line 324
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c(I)V

    return-object v0
.end method

.method private static e(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/f;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/f;-><init>()V

    const/4 v1, 0x0

    const-string v2, "if_send_click"

    .line 334
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e/f;->a(I)V

    return-object v0
.end method

.method private static f(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/e;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;-><init>()V

    const-string v1, "deeplink_url"

    .line 344
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/e;->a(Ljava/lang/String;)V

    const-string v1, "fallback_url"

    .line 345
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/e;->b(Ljava/lang/String;)V

    const-string v1, "fallback_type"

    .line 346
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->a(I)V

    return-object v0
.end method

.method private static g(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/e/o;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;-><init>()V

    const-string v1, "cover_height"

    .line 356
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->b(I)V

    const-string v1, "cover_width"

    .line 357
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->c(I)V

    const-string v1, "resolution"

    .line 358
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->a(Ljava/lang/String;)V

    const-string v1, "size"

    .line 359
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->a(J)V

    const-string v1, "video_duration"

    .line 360
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->a(D)V

    const-string v1, "cover_url"

    .line 361
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->b(Ljava/lang/String;)V

    const-string v1, "video_url"

    .line 362
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->c(Ljava/lang/String;)V

    const-string v1, "endcard"

    .line 363
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d(Ljava/lang/String;)V

    const-string v1, "playable_download_url"

    .line 364
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->e(Ljava/lang/String;)V

    const-string v1, "file_hash"

    .line 365
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->f(Ljava/lang/String;)V

    const-string v1, "if_playable_loading_show"

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->d(I)V

    const-string v1, "remove_loading_page_type"

    .line 367
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->e(I)V

    const-string v1, "fallback_endcard_judge"

    .line 368
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->a(I)V

    return-object v0
.end method

.method private static h(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 377
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 378
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 384
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
