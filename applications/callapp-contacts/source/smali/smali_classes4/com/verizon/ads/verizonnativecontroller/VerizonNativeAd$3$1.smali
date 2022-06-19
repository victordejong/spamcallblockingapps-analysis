.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/PEXHandler$PEXPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;

    iget-object v0, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->d:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;

    iget-object v1, v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->d:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    .line 764
    invoke-static {v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->d(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;

    iget-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3$1;->a:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;

    iget-object v3, v3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$3;->b:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;

    invoke-direct {v2, v3, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage;Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 763
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
