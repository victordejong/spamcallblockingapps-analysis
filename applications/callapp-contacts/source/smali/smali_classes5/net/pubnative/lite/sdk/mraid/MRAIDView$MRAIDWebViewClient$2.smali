.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
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

    .line 1619
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1622
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$2;->this$1:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$4000(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
