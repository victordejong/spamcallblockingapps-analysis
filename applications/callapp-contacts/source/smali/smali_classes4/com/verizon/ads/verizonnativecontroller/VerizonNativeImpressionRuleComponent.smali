.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;
.super Lcom/verizon/ads/support/StaticViewabilityRuleComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lcom/verizon/ads/RuleComponent$RuleListener;IIZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/verizon/ads/RuleComponent$RuleListener;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct/range {p0 .. p7}, Lcom/verizon/ads/support/StaticViewabilityRuleComponent;-><init>(Landroid/view/View;Lcom/verizon/ads/RuleComponent$RuleListener;IIZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->convertJSONToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/view/ViewGroup;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Z
    .locals 6

    .line 1129
    invoke-virtual {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getRequiredComponentIds()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x3

    .line 1130
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1131
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a:Lcom/verizon/ads/Logger;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v5, "Required component ids for display: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    .line 1135
    sget-object p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a:Lcom/verizon/ads/Logger;

    const-string p1, "No required component ids are defined"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v3

    .line 1140
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1141
    invoke-virtual {p1, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;

    move-result-object v4

    .line 1142
    instance-of v5, v4, Lcom/verizon/ads/verizonnativecontroller/NativeViewComponent;

    if-nez v5, :cond_3

    .line 1143
    sget-object p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a:Lcom/verizon/ads/Logger;

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v0, "Required component \'%s\' is not a native view component"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v3

    .line 1148
    :cond_3
    check-cast v4, Lcom/verizon/ads/verizonnativecontroller/NativeViewComponent;

    invoke-interface {v4, p0}, Lcom/verizon/ads/verizonnativecontroller/NativeViewComponent;->isDescendantOf(Landroid/view/ViewGroup;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1149
    sget-object p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a:Lcom/verizon/ads/Logger;

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string v0, "Component \'%s\' is not attached to container"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v3

    :cond_4
    return v2
.end method

.method static synthetic n()Lcom/verizon/ads/Logger;
    .locals 1

    .line 22
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method
