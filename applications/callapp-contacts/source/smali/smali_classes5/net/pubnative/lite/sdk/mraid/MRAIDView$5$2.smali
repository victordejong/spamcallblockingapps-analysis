.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 672
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 674
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 676
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 677
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 678
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1202(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 679
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->val$content:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hz-m MRAIDView - expand - switching out currentwebview for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1402(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 682
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1502(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Z)Z

    .line 683
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    iget-object v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;)V

    return-void
.end method
