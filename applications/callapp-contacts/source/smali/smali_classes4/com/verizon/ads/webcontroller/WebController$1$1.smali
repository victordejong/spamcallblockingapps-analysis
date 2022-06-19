.class Lcom/verizon/ads/webcontroller/WebController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webcontroller/WebController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webcontroller/WebController$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webcontroller/WebController$1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$1$1;->a:Lcom/verizon/ads/webcontroller/WebController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$1$1;->a:Lcom/verizon/ads/webcontroller/WebController$1;

    iget-object v0, v0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->b(Lcom/verizon/ads/webcontroller/WebController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$1$1;->a:Lcom/verizon/ads/webcontroller/WebController$1;

    iget-object v0, v0, Lcom/verizon/ads/webcontroller/WebController$1;->d:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->c(Lcom/verizon/ads/webcontroller/WebController;)V

    .line 111
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$1$1;->a:Lcom/verizon/ads/webcontroller/WebController$1;

    iget-object v0, v0, Lcom/verizon/ads/webcontroller/WebController$1;->c:Lcom/verizon/ads/webcontroller/WebController$LoadListener;

    invoke-interface {v0, p1}, Lcom/verizon/ads/webcontroller/WebController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method
