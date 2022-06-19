.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_INCORRECT_COMPONENT_TYPE:I = -0x2

.field public static final ERROR_VNAPS_RESPONSE_ERROR:I = -0x1

.field private static final a:Ljava/lang/String; = "com.verizon.ads.verizonnativecontroller.VerizonNativeController"


# instance fields
.field private b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accepts(Lcom/verizon/ads/AdContent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object p0

    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "ver"

    .line 59
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_1

    return v0

    :cond_1
    const-string v2, "rev"

    .line 64
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    if-gez v2, :cond_2

    return v0

    :cond_2
    const-string p0, "adInfo"

    .line 69
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "components"

    .line 70
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public getVerizonNativeAd()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    return-object v0
.end method

.method public prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;
    .locals 4

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "verizon/nativeAd-v1"

    .line 99
    new-instance v2, Lorg/json/JSONObject;

    .line 100
    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    const/4 p1, 0x0

    .line 99
    invoke-static {v1, p1, v2, p2}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p2

    if-nez p2, :cond_1

    .line 103
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->a:Ljava/lang/String;

    const-string v1, "Error creating VerizonNativeAd from VNAPS response."

    invoke-direct {p1, p2, v1, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 106
    :cond_1
    instance-of v1, p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-eqz v1, :cond_2

    .line 107
    check-cast p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    return-object p1

    .line 111
    :cond_2
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->a:Ljava/lang/String;

    const-string v1, "Expected Verizon Native Ad Component for type verizon/nativeAd"

    const/4 v2, -0x2

    invoke-direct {p1, p2, v1, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 115
    :catch_0
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->a:Ljava/lang/String;

    const-string v1, "Error Parsing Verizon Native Ad Response"

    invoke-direct {p1, p2, v1, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 95
    :cond_3
    :goto_0
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->a:Ljava/lang/String;

    const-string v1, "Ad content was null."

    invoke-direct {p1, p2, v1, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method
