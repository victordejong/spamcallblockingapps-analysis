.class Lcom/verizon/ads/webcontroller/WebController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webcontroller/WebController;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webcontroller/WebController;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webcontroller/WebController;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$2;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$2;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->d(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$2;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->d(Lcom/verizon/ads/webcontroller/WebController;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->release()V

    .line 137
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$2;->a:Lcom/verizon/ads/webcontroller/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verizon/ads/webcontroller/WebController;->a(Lcom/verizon/ads/webcontroller/WebController;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    :cond_0
    return-void
.end method
