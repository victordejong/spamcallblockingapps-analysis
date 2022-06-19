.class public abstract Lcom/callapp/contacts/util/webview/BaseWebViewDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;
    }
.end annotation


# instance fields
.field protected a:Landroid/webkit/WebView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Z

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->c:Z

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->e:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->d:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->shouldCanceledOnTouchOutside()Z

    return-void
.end method

.method private static a(Landroid/webkit/WebSettings;)V
    .locals 5

    .line 202
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    const/4 v0, 0x2

    .line 203
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 207
    :try_start_0
    const-class v1, Lcom/callapp/contacts/manager/cache/CacheManager;

    const-string v2, "setCacheDisabled"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 209
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, p0

    const-string p0, "myapp"

    const-string v1, "Reflection failed"

    .line 211
    invoke-static {p0, v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 2

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 168
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-static {v1}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a(Landroid/webkit/WebSettings;)V

    const/4 p1, 0x1

    .line 177
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 179
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 184
    :cond_1
    invoke-virtual {p0, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 186
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 187
    sget-object p2, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 188
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 189
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 190
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 191
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 192
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 193
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 195
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e9

    return v0
.end method

.method private setupWebView(Landroid/widget/ProgressBar;)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$SingleWindowWebChromeClient;-><init>(Landroid/widget/ProgressBar;)V

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 132
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected abstract getWebViewClient()Landroid/webkit/WebViewClient;
.end method

.method public onDialogBackPressed()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->c:Z

    return-void
.end method

.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogDismissed(Landroid/content/DialogInterface;)V

    .line 121
    iget-boolean v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->f:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->getLayoutId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    new-instance p2, Landroid/webkit/WebView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    const p2, 0x7f0a02cd

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->b:Landroid/widget/ImageView;

    .line 71
    new-instance v0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog$1;-><init>(Lcom/callapp/contacts/util/webview/BaseWebViewDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080368

    invoke-direct {p2, v0, v2, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    .line 80
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1354
    iput-object v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 81
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f060088

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    const/4 v0, 0x1

    .line 1371
    iput-boolean v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 83
    invoke-virtual {p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    const p2, 0x7f0a0212

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 92
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->setupWebView(Landroid/widget/ProgressBar;)V

    :goto_1
    const p2, 0x7f0a0ac4

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/callapp/contacts/util/webview/BaseWebViewDialog;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
