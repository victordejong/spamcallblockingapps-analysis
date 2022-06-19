.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs newInstance(Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;
    .locals 2

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 128
    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    instance-of v1, v1, Lcom/verizon/ads/AdSession;

    if-nez v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    aget-object p3, p3, v0

    check-cast p3, Lcom/verizon/ads/AdSession;

    .line 135
    new-instance v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-direct {v1, p3, p2, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;-><init>(Lcom/verizon/ads/AdSession;Lorg/json/JSONObject;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;)V

    .line 136
    invoke-static {v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 139
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a()Lcom/verizon/ads/Logger;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Failed to prepare controller: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1

    :cond_1
    return-object v1

    .line 129
    :cond_2
    :goto_0
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string p3, "Call to newInstance requires AdSession"

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1
.end method
