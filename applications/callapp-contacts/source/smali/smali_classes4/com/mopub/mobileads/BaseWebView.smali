.class public Lcom/mopub/mobileads/BaseWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field private static c:Z = false


# instance fields
.field protected a:Z

.field protected b:Z

.field private final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/mobileads/BaseWebView;->d:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebView;->b:Z

    .line 1099
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 1101
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 1102
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 40
    invoke-static {p0}, Lcom/mopub/mobileads/util/WebViews;->setDisableJSChromeClient(Landroid/webkit/WebView;)V

    .line 42
    sget-boolean v0, Lcom/mopub/mobileads/BaseWebView;->c:Z

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1119
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1120
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v6, ""

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    move-object v4, v1

    .line 1124
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1126
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1127
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x7d5

    .line 1129
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x1000018

    .line 1130
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 1133
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    .line 1134
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v2, "window"

    .line 1136
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1138
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_0
    sput-boolean v3, Lcom/mopub/mobileads/BaseWebView;->c:Z

    :cond_1
    return-void
.end method

.method private b()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public static synthetic lambda$3QpdVWDz68hZidiMx61o0_oyhPk(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/BaseWebView;->b()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 4

    .line 56
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->a:Z

    .line 64
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->removeAllViews()V

    .line 70
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->b:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/BaseWebView;->d:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$BaseWebView$3QpdVWDz68hZidiMx61o0_oyhPk;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$BaseWebView$3QpdVWDz68hZidiMx61o0_oyhPk;-><init>(Lcom/mopub/mobileads/BaseWebView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 73
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 51
    invoke-static {p0}, Lcom/mopub/mobileads/util/WebViews;->manageThirdPartyCookies(Landroid/webkit/WebView;)V

    return-void
.end method
