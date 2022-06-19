.class Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid$4;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 303
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid$4;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;->access$200(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid$4;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;->access$300(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;)Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridge;

    move-result-object p1

    invoke-interface {p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/VpaidBridge;->prepare()V

    .line 305
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Init webView done"

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid$4;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;->access$202(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid;Z)Z

    :cond_0
    return-void
.end method
