.class Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->c:Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;

    iput-object p2, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p3, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 108
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->a:Lcom/callapp/framework/phone/Phone;

    iget-object v2, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;I)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->c:Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;

    invoke-static {p1}, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->a(Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;->b:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
