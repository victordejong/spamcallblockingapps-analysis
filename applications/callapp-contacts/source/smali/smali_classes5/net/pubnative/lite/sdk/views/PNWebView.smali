.class public Lnet/pubnative/lite/sdk/views/PNWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field private static sDeadlockCleared:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/pubnative/lite/sdk/views/PNWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 57
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 58
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 59
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 61
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->enableWebDebugging()V

    .line 63
    invoke-virtual {p0, p2}, Lnet/pubnative/lite/sdk/views/PNWebView;->enablePlugins(Z)V

    .line 64
    new-instance p1, Lnet/pubnative/lite/sdk/views/PNWebView$1;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/views/PNWebView$1;-><init>(Lnet/pubnative/lite/sdk/views/PNWebView;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/PNWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    sget-boolean p1, Lnet/pubnative/lite/sdk/views/PNWebView;->sDeadlockCleared:Z

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/PNWebView;->fixWebViewDeadlock(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 96
    sput-boolean p1, Lnet/pubnative/lite/sdk/views/PNWebView;->sDeadlockCleared:Z

    :cond_0
    return-void
.end method

.method private fixWebViewDeadlock(Landroid/content/Context;)V
    .locals 8

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object v2, v0

    .line 139
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v2, 0x1

    .line 141
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 142
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x7d5

    .line 144
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x1000018

    .line 145
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 148
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    .line 149
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v2, "window"

    .line 151
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    .line 153
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 102
    invoke-static {p0}, Lnet/pubnative/lite/sdk/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->removeAllViews()V

    .line 104
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public enablePlugins(Z)V
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object p1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    return-void
.end method

.method public enableWebDebugging()V
    .locals 2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 118
    invoke-static {v0}, Lnet/pubnative/lite/sdk/views/PNWebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method
