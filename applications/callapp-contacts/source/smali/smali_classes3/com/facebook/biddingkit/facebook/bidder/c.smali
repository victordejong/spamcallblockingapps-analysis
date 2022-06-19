.class final Lcom/facebook/biddingkit/facebook/bidder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/facebook/biddingkit/facebook/bidder/b$a;J)Ljava/lang/String;
    .locals 11

    const-string v0, "id"

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1313
    :try_start_0
    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "imp"

    .line 2277
    iget-object v3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->c:Lcom/facebook/biddingkit/c/d;

    .line 2093
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "FB Ad Impression"

    .line 2096
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "tagid"

    .line 3273
    iget-object v7, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b:Ljava/lang/String;

    .line 2097
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "instl"

    .line 2098
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getInstl()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2099
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getFormatLabel()Ljava/lang/String;

    move-result-object v6

    .line 4103
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "h"

    .line 4104
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "w"

    .line 4105
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "linearity"

    .line 4106
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getLinearity()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 4107
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getVideoType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "ext"

    if-nez v8, :cond_0

    .line 4108
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "videotype"

    .line 4110
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/d;->getVideoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 4108
    invoke-virtual {v7, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2099
    :cond_0
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2094
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app"

    .line 49
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "publisher"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4269
    iget-object v6, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 52
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device"

    .line 55
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "lmt"

    .line 4281
    invoke-static {}, Lcom/facebook/biddingkit/b/a;->a()Landroid/content/Context;

    move-result-object v5

    .line 5065
    invoke-static {v5}, Lcom/facebook/biddingkit/e/b;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 5067
    invoke-virtual {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 57
    :goto_1
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "regs"

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "coppa"

    .line 5289
    iget-boolean v5, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->h:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 61
    :goto_2
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "at"

    .line 5297
    iget-object v3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->g:Lcom/facebook/biddingkit/c/c;

    .line 63
    invoke-virtual {v3}, Lcom/facebook/biddingkit/c/c;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tmax"

    const/16 v3, 0x3e8

    .line 65
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "test"

    .line 6285
    iget-boolean v3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->f:Z

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    .line 67
    :cond_4
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "platformid"

    .line 6293
    iget-object v4, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->i:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->i:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    .line 72
    :goto_3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "bidding_kit_version"

    .line 7116
    sget-boolean v4, Lcom/facebook/biddingkit/facebook/bidder/c;->a:Z

    if-eqz v4, :cond_6

    const-string v4, ""

    goto :goto_4

    :cond_6
    const-string v4, "0.5.0"

    .line 73
    :goto_4
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "bidding_kit_source"

    .line 7317
    iget-boolean v4, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->j:Z

    if-eqz v4, :cond_7

    const-string v4, "standalone"

    goto :goto_5

    :cond_7
    const-string v4, "auction"

    .line 74
    :goto_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8269
    iget-object v3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    .line 9120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "V1_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9121
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    .line 9122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9123
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9125
    sget-boolean v3, Lcom/facebook/biddingkit/facebook/bidder/c;->a:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    move-object v3, v5

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v6, 0x3

    .line 9127
    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    :goto_6
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "timestamp"

    sget-boolean v3, Lcom/facebook/biddingkit/facebook/bidder/c;->a:Z

    if-eqz v3, :cond_9

    goto :goto_7

    .line 76
    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_7
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 69
    invoke-virtual {v1, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "user"

    .line 78
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "buyeruid"

    .line 9301
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->e:Ljava/lang/String;

    .line 80
    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 78
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    const-string p1, "FacebookBidderPayloadBuilder"

    const-string p2, "Creating Facebook Bidder Payload failed"

    .line 82
    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
