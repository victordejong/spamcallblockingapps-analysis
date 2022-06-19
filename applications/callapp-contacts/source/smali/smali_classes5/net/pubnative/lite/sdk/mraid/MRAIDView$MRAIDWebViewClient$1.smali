.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;)V
    .locals 0

    .line 1511
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1514
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mraid.setPlacementType(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v2, v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "interstitial"

    goto :goto_0

    :cond_0
    const-string v2, "inline"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1516
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1517
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1518
    invoke-static {}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling fireStateChangeEvent 2"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1520
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireReadyEvent()V

    .line 1521
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-boolean v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireViewableChangeEvent()V

    :cond_1
    return-void
.end method
