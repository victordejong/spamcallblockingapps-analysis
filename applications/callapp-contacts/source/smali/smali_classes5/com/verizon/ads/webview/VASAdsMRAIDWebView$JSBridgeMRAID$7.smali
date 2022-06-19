.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c()V
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

    .line 1050
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1054
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v3, v3, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "interstitial"

    goto :goto_0

    :cond_0
    const-string v3, "inline"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "MmJsBridge.mraid.setPlacementType"

    invoke-virtual {v0, v3, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->d()Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "MmJsBridge.mraid.setSupports"

    invoke-virtual {v0, v3, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a()V

    .line 1057
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-boolean v3, v3, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "MmJsBridge.mraid.setViewable"

    invoke-virtual {v0, v3, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getCurrentVolume(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "MmJsBridge.mraid.setVolume"

    invoke-virtual {v0, v2, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v1

    iget v1, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    move-result-object v2

    iget-object v2, v2, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->mbr:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(FLandroid/graphics/Rect;)V

    .line 1062
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo;

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    .line 1064
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Landroid/location/Location;)V

    .line 1067
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$7;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;)V

    return-void
.end method
