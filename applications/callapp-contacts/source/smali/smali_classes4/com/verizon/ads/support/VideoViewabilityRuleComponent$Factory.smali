.class public Lcom/verizon/ads/support/VideoViewabilityRuleComponent$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/support/VideoViewabilityRuleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs newInstance(Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    const-string v2, "eventArgs"

    const/4 v3, 0x3

    .line 51
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 52
    invoke-static {}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e()Lcom/verizon/ads/Logger;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v5

    const-string v8, "Creating VideoViewabilityRuleComponent with ruleInfo: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 56
    invoke-static {}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "ruleInfo cannot be null."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4

    :cond_1
    if-eqz v0, :cond_8

    .line 64
    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    aget-object v7, v0, v5

    instance-of v7, v7, Lcom/verizon/ads/VideoPlayerView;

    if-eqz v7, :cond_8

    aget-object v7, v0, v6

    instance-of v7, v7, Lcom/verizon/ads/RuleComponent$RuleListener;

    if-nez v7, :cond_2

    goto/16 :goto_1

    .line 70
    :cond_2
    aget-object v7, v0, v5

    move-object v9, v7

    check-cast v9, Lcom/verizon/ads/VideoPlayerView;

    .line 71
    aget-object v0, v0, v6

    move-object v10, v0

    check-cast v10, Lcom/verizon/ads/RuleComponent$RuleListener;

    const-string v0, "data"

    .line 73
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 75
    invoke-static {}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "data in ruleInfo is either missing or not a dictionary"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4

    :cond_3
    :try_start_0
    const-string v7, "eventId"

    .line 82
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "percentage"

    .line 83
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "duration"

    .line 84
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v7, "continuous"

    .line 85
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v7, "audio"

    .line 86
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-ltz v11, :cond_7

    const/16 v7, 0x64

    if-gt v11, v7, :cond_7

    if-ltz v12, :cond_6

    const/16 v7, 0x3a98

    if-gt v12, v7, :cond_6

    .line 98
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/support/ViewabilityWatcherRule;->convertJSONToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    :cond_4
    move-object/from16 v16, v4

    .line 1118
    :goto_0
    new-instance v0, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;-><init>(Lcom/verizon/ads/VideoPlayerView;Lcom/verizon/ads/RuleComponent$RuleListener;IIZZLjava/lang/String;Ljava/util/Map;)V

    .line 1121
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1122
    invoke-static {}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e()Lcom/verizon/ads/Logger;

    move-result-object v2

    const-string v3, "Rule created %s"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 93
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Duration must be >= 0 and <= 15000"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Percentage must be >= 0 and <= 100"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 106
    invoke-static {}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e()Lcom/verizon/ads/Logger;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const-string v1, "Error creating VideoViewabilityRuleComponent with ruleInfo: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 65
    :cond_8
    :goto_1
    invoke-static {}, Lcom/verizon/ads/support/VideoViewabilityRuleComponent;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Call to newInstance requires VideoPlayerView and RuleListener"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4
.end method
