.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs newInstance(Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;
    .locals 8

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 49
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string p3, "componentInfo cannot be null."

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p3, :cond_2

    .line 57
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/verizon/ads/AdSession;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    aget-object v0, p3, v0

    move-object v3, v0

    check-cast v3, Lcom/verizon/ads/AdSession;

    .line 63
    aget-object p3, p3, v1

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    :try_start_0
    const-string p3, "contentType"

    .line 66
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p3, "data"

    .line 67
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string/jumbo v0, "value"

    .line 70
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1084
    new-instance p3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;

    move-object v2, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p2

    .line 74
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a()Lcom/verizon/ads/Logger;

    move-result-object p3

    const-string v0, "Attribute not found in the component information structure."

    invoke-virtual {p3, v0, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 58
    :cond_2
    :goto_0
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string p3, "Call to newInstance requires AdSession and component ID"

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1
.end method
