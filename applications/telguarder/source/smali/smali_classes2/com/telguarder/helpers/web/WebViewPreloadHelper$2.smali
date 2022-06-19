.class Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;
.super Ljava/lang/Object;
.source "WebViewPreloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Landroid/content/Context;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    iput-object p2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    :try_start_0
    new-instance v0, Lcom/telguarder/helpers/web/LollipopFixedWebView;

    iget-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;-><init>(Landroid/content/Context;)V

    .line 153
    iget-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-static {v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$200(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 154
    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 155
    invoke-virtual {v0}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-static {v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$300(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->this$0:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    iget-object v3, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->access$000(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/web/LollipopFixedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
