.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1305
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-boolean v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-instance v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {v1, v2, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;-><init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    .line 1310
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$10;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->j(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
