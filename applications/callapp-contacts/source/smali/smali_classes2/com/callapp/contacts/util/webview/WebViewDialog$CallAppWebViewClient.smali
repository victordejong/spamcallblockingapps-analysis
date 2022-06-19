.class Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/webview/WebViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallAppWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/webview/WebViewDialog;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/webview/WebViewDialog;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->a:Lcom/callapp/contacts/util/webview/WebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->a:Lcom/callapp/contacts/util/webview/WebViewDialog;

    iget-object p1, p1, Lcom/callapp/contacts/util/webview/WebViewDialog;->a:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->a:Lcom/callapp/contacts/util/webview/WebViewDialog;

    iget-object p1, p1, Lcom/callapp/contacts/util/webview/WebViewDialog;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    const-class p1, Lcom/callapp/contacts/util/webview/WebViewDialog;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string p2, "Error code: %d Description: %s failingUrl: %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "mailto:"

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p2

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->b:Landroid/content/Context;

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v3, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v2

    :cond_0
    const-string p1, "market:"

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    iget-object p2, p0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return v2

    :cond_1
    const-string p1, "tel:"

    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 95
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/sim/SimManager;->isDualSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1f4

    .line 97
    :try_start_0
    invoke-static {p1, v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v3

    .line 98
    invoke-static {v3, v4, p1}, Lcom/callapp/contacts/loader/PreferredSimManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p2
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to get contact id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WebViewDialog"

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 104
    :cond_2
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v3, 0x7f120819

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient$1;-><init>(Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;)V

    invoke-static {v1, v3, p2, v4}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    return v2

    :cond_3
    return v1
.end method
