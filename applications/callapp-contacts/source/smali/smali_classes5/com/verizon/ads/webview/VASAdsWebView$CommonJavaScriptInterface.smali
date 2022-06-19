.class Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsWebView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsWebView;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileLoaded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 200
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsWebView;->k()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileLoaded: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    iget-object p1, p1, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    .line 1695
    iget-object p1, p1, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getActionsQueue()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/webview/VASAdsWebView;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/webview/VASAdsWebView;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;->a:Lcom/verizon/ads/webview/VASAdsWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsWebView;->b(Lcom/verizon/ads/webview/VASAdsWebView;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 193
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useActionsQueue()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 179
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsWebView;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
