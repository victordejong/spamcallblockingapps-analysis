.class Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/webview/AuthWebViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OAuthWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;Lcom/callapp/contacts/util/webview/AuthWebViewDialog$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;-><init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/api/helper/common/LoginListener;Ljava/lang/String;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;-><init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;Lcom/callapp/contacts/api/helper/common/LoginListener;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->c:Z

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;->a:Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 174
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    invoke-static {p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x6

    const-string v1, ""

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    const-string p2, "id"

    goto :goto_0

    :cond_1
    const-string p2, "username"

    .line 189
    :goto_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-static {}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getGmailAccount()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_2
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 158
    invoke-static {p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 159
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/api/helper/common/LoginListener;

    .line 160
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1147
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1148
    invoke-direct {p0, v1, v0}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;->a(Lcom/callapp/contacts/api/helper/common/LoginListener;Ljava/lang/String;)V

    return v3

    .line 1151
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 164
    invoke-direct {p0, v1, v0}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;->a(Lcom/callapp/contacts/api/helper/common/LoginListener;Ljava/lang/String;)V

    :cond_3
    return v3
.end method
