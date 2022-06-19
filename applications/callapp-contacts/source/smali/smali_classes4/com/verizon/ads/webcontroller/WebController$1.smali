.class Lcom/verizon/ads/webcontroller/WebController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webcontroller/WebController;->load(Landroid/content/Context;ILcom/verizon/ads/webcontroller/WebController$LoadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/verizon/ads/webcontroller/WebController$LoadListener;

.field final synthetic d:Lcom/verizon/ads/webcontroller/WebController;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webcontroller/WebController;Landroid/content/Context;ZLcom/verizon/ads/webcontroller/WebController$LoadListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    iput-object p2, p0, Lcom/verizon/ads/webcontroller/WebController$1;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/verizon/ads/webcontroller/WebController$1;->b:Z

    iput-object p4, p0, Lcom/verizon/ads/webcontroller/WebController$1;->c:Lcom/verizon/ads/webcontroller/WebController$LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    new-instance v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v2, p0, Lcom/verizon/ads/webcontroller/WebController$1;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/verizon/ads/webcontroller/WebController$1;->b:Z

    new-instance v4, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;

    iget-object v5, p0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener;-><init>(Lcom/verizon/ads/webcontroller/WebController;Lcom/verizon/ads/webcontroller/WebController$1;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;-><init>(Landroid/content/Context;ZLcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;)V

    invoke-static {v0, v1}, Lcom/verizon/ads/webcontroller/WebController;->a(Lcom/verizon/ads/webcontroller/WebController;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 105
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->d(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v1}, Lcom/verizon/ads/webcontroller/WebController;->a(Lcom/verizon/ads/webcontroller/WebController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    new-instance v3, Lcom/verizon/ads/webcontroller/WebController$1$1;

    invoke-direct {v3, p0}, Lcom/verizon/ads/webcontroller/WebController$1$1;-><init>(Lcom/verizon/ads/webcontroller/WebController$1;)V

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 116
    :catch_0
    invoke-static {}, Lcom/verizon/ads/webcontroller/WebController;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Error creating VASAdsMRAIDWebView."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$1;->c:Lcom/verizon/ads/webcontroller/WebController$LoadListener;

    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/webcontroller/WebController;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x3

    invoke-direct {v2, v3, v1, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Lcom/verizon/ads/webcontroller/WebController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
