.class Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/external/WhitePagesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/api/LoadContext;

.field final synthetic b:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/loader/external/WhitePagesLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/loader/external/WhitePagesLoader;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->d:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iput-object p3, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->b:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    iput-object p4, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 158
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "webViewUserAgent"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->d:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-static {v2}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a(Lcom/callapp/contacts/loader/external/WhitePagesLoader;)Landroid/webkit/WebViewClient;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;-><init>(Landroid/widget/ProgressBar;)V

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 166
    new-instance v1, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v3, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->b:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;-><init>(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/loader/external/WhitePagesLoader;)V

    const-string v2, "callAppJSObj"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->d:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-static {v1}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->b(Lcom/callapp/contacts/loader/external/WhitePagesLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$2;->d:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addWebview(Lcom/callapp/contacts/loader/api/ContactDataLoader;Landroid/webkit/WebView;)V

    return-void
.end method
