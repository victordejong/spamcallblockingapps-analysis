.class public Lcom/callapp/contacts/util/webview/WebViewDialog;
.super Lcom/callapp/contacts/util/webview/BaseWebViewDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;
    }
.end annotation


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2, p3, p4}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 2

    .line 60
    new-instance v0, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;

    iget-object v1, p0, Lcom/callapp/contacts/util/webview/WebViewDialog;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/webview/WebViewDialog$CallAppWebViewClient;-><init>(Lcom/callapp/contacts/util/webview/WebViewDialog;Landroid/content/Context;)V

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0ac4

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Lcom/callapp/contacts/util/webview/WebViewDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/webview/WebViewDialog$1;-><init>(Lcom/callapp/contacts/util/webview/WebViewDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method
