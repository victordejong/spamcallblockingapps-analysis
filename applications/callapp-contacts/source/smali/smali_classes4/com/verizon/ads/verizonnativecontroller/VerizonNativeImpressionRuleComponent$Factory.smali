.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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

    .line 33
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 34
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v5

    const-string v8, "Creating VerizonNativeImpressionViewabilityRuleComponent with ruleInfo: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 38
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "ruleInfo cannot be null."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4

    :cond_1
    if-eqz v0, :cond_b

    .line 47
    array-length v7, v0

    if-lt v7, v3, :cond_b

    aget-object v7, v0, v5

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_b

    aget-object v7, v0, v6

    instance-of v7, v7, Lcom/verizon/ads/RuleComponent$RuleListener;

    if-eqz v7, :cond_b

    const/4 v7, 0x2

    aget-object v8, v0, v7

    instance-of v8, v8, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v8, :cond_2

    goto/16 :goto_1

    .line 54
    :cond_2
    aget-object v8, v0, v5

    move-object v10, v8

    check-cast v10, Landroid/view/ViewGroup;

    .line 55
    aget-object v8, v0, v6

    move-object v11, v8

    check-cast v11, Lcom/verizon/ads/RuleComponent$RuleListener;

    .line 56
    aget-object v0, v0, v7

    check-cast v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    .line 58
    invoke-static {v10, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a(Landroid/view/ViewGroup;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Not all required components are attached"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4

    :cond_3
    const-string v0, "data"

    .line 64
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    .line 66
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "data in ruleInfo is either missing or not a dictionary"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4

    :cond_4
    :try_start_0
    const-string v7, "eventId"

    .line 73
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "percentage"

    .line 74
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v7, "duration"

    .line 75
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v7, "continuous"

    .line 76
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-ltz v12, :cond_5

    const/16 v7, 0x64

    if-le v12, v7, :cond_6

    :cond_5
    const/4 v7, -0x1

    if-ne v12, v7, :cond_a

    :cond_6
    if-ltz v13, :cond_9

    const/16 v7, 0x3a98

    if-gt v13, v7, :cond_9

    .line 88
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 89
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    :cond_7
    move-object/from16 v16, v4

    .line 1107
    :goto_0
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;-><init>(Landroid/view/View;Lcom/verizon/ads/RuleComponent$RuleListener;IIZLjava/lang/String;Ljava/util/Map;)V

    .line 1111
    invoke-static {v3}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1112
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v2

    const-string v3, "Rule created %s"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_8
    return-object v0

    .line 83
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Duration must be >= 0 and <= 15000"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Percentage must be >= 0 and <= 100 or == -1"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const-string v1, "Error creating VerizonNativeImpressionViewabilityRuleComponent with ruleInfo: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 49
    :cond_b
    :goto_1
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->n()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Call to newInstance requires ViewGroup, RuleListener, and VerizonNativeAd"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v4
.end method
