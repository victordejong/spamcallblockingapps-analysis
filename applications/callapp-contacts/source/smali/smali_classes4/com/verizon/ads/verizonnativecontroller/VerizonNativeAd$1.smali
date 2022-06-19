.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;-><init>(Lcom/verizon/ads/AdSession;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 226
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 252
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Received unexpected message with what = %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->c(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-static {v1, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->c(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)V

    goto :goto_0

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;

    invoke-static {v1, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;)V

    goto :goto_0

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-static {v1, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    goto :goto_0

    .line 228
    :cond_6
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-static {v1, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V

    :goto_0
    return v0
.end method
