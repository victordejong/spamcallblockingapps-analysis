.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/webview/MediaUtils$PlayVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->playVideo(Ljava/lang/String;)V
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

    .line 897
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$6;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$6;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const-string v1, "playVideo"

    invoke-virtual {v0, p1, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStarted(Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x3

    .line 902
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Video activity started for <%s>"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
