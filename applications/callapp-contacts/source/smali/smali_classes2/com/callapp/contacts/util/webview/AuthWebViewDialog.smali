.class public Lcom/callapp/contacts/util/webview/AuthWebViewDialog;
.super Lcom/callapp/contacts/util/webview/BaseWebViewDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;,
        Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private final e:Lcom/callapp/contacts/api/helper/common/LoginListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Lcom/callapp/contacts/api/helper/common/LoginListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p2, v0, p3}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->d:Landroid/app/Activity;

    .line 40
    iput-object p4, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->e:Lcom/callapp/contacts/api/helper/common/LoginListener;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "https://api.twitter.com/oauth/authorize?"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->d:Landroid/app/Activity;

    return-object p0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "try { var elem=document.getElementById(\'%s\'); if (!elem){elem=document.getElementsByName(\'%s\')[0];} if (elem){elem.value = \'%s\';} } catch(err) { }"

    .line 103
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/webview/WebViewUtils;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/api/helper/common/LoginListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "twitterauth.callapp.com"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "oauth_verifier"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "https://oauth.vk.com/blank.html"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getVKHelper()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->getOAUTH_CALLBACK_URL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getDropBoxHelper()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v1

    .line 122
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "oauth_token_secret"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    .line 129
    :goto_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 2

    .line 83
    new-instance v0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$OAuthWebViewClient;-><init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;Lcom/callapp/contacts/util/webview/AuthWebViewDialog$1;)V

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 71
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 74
    iget-object p2, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const p2, 0x7f0a0212

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog$MultiWindowWebChromeClient;-><init>(Lcom/callapp/contacts/util/webview/AuthWebViewDialog;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object p1
.end method
