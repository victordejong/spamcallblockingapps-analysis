.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

.field final synthetic b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 675
    invoke-static {}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Asset loading encountered an error -- skipping asset download"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    .line 679
    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;

    iget-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$2;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-direct {v2, v3, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 678
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
