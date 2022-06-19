.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollHandler"
.end annotation


# instance fields
.field private a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 223
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unexpected msg.what = %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->e()V

    return-void

    .line 215
    :cond_2
    invoke-virtual {p0, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x64

    .line 216
    invoke-virtual {p0, v2, v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method
