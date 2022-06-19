.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs newInstance(Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;
    .locals 3

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 47
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->b()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string p3, "componentInfo cannot be null."

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p3, :cond_2

    .line 55
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

    .line 60
    :cond_1
    aget-object v0, p3, v0

    check-cast v0, Lcom/verizon/ads/AdSession;

    .line 61
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/String;

    :try_start_0
    const-string v1, "contentType"

    .line 64
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    new-instance v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    invoke-direct {v2, v0, p3, v1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    .line 68
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->b()Lcom/verizon/ads/Logger;

    move-result-object p3

    const-string v0, "contentType attribute not found in the component information structure."

    invoke-virtual {p3, v0, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    .line 56
    :cond_2
    :goto_0
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->b()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string p3, "Call to newInstance requires AdSession and component ID"

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1
.end method
