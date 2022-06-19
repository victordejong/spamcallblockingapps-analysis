.class Lcom/amazon/device/ads/DTBAdView$WebBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebBridge"
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/amazon/device/ads/DTBAdView;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->b:Lcom/amazon/device/ads/DTBAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "type"

    .line 664
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 667
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "service"

    .line 668
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "arguments"

    const-string v3, "subtype"

    if-eqz v0, :cond_1

    .line 1683
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "log"

    .line 1684
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1685
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "message"

    .line 1686
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mraid:JSNative"

    .line 1717
    invoke-static {v0, p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "mraid"

    .line 670
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2691
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->a:Ljava/lang/Exception;

    .line 2692
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2693
    invoke-static {p1}, Lcom/amazon/device/ads/MraidCommand;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MRAID Command:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->b:Lcom/amazon/device/ads/DTBAdView;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdView;->b(Lcom/amazon/device/ads/DTBAdView;)Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->b:Lcom/amazon/device/ads/DTBAdView;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdView;->b(Lcom/amazon/device/ads/DTBAdView;)Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    .line 2702
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MraidCommand;

    .line 2703
    sget-object v3, Lcom/amazon/device/ads/DTBAdView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "execute command "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MraidCommand;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2705
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->b:Lcom/amazon/device/ads/DTBAdView;

    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdView;->b(Lcom/amazon/device/ads/DTBAdView;)Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MraidCommand;->a(Lorg/json/JSONObject;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2711
    :try_start_3
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->a:Ljava/lang/Exception;

    .line 2712
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error execution command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2708
    throw p1

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p1, "Unrecognized bridge call"

    .line 675
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 678
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JSON conversion failed:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
