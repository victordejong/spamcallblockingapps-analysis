.class public Lcom/explorestack/iab/mraid/MraidWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/MraidWebView$a;,
        Lcom/explorestack/iab/mraid/MraidWebView$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "MraidWebView"

.field private static final e:Lcom/explorestack/iab/mraid/MraidWebView$a;


# instance fields
.field final a:Lcom/explorestack/iab/mraid/k;

.field b:Z

.field c:Z

.field private final f:Lcom/explorestack/iab/utils/o;

.field private g:Lcom/explorestack/iab/mraid/MraidWebView$b;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/explorestack/iab/mraid/MraidWebView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/iab/mraid/MraidWebView$a;-><init>(Lcom/explorestack/iab/mraid/MraidWebView$1;)V

    sput-object v0, Lcom/explorestack/iab/mraid/MraidWebView;->e:Lcom/explorestack/iab/mraid/MraidWebView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->b:Z

    .line 32
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->h:Z

    .line 33
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->c:Z

    .line 39
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setScrollContainer(Z)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setVerticalScrollBarEnabled(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setVerticalScrollbarOverlay(Z)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setHorizontalScrollbarOverlay(Z)V

    const/high16 v1, 0x2000000

    .line 44
    invoke-virtual {p0, v1}, Lcom/explorestack/iab/mraid/MraidWebView;->setScrollBarStyle(I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setFocusableInTouchMode(Z)V

    .line 48
    new-instance v1, Lcom/explorestack/iab/mraid/k;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/mraid/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidWebView;->a:Lcom/explorestack/iab/mraid/k;

    .line 49
    new-instance v1, Lcom/explorestack/iab/mraid/MraidWebView$1;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/mraid/MraidWebView$1;-><init>(Lcom/explorestack/iab/mraid/MraidWebView;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/explorestack/iab/mraid/MraidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    sget-object v1, Lcom/explorestack/iab/mraid/MraidWebView;->e:Lcom/explorestack/iab/mraid/MraidWebView$a;

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/mraid/MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 68
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->setBackgroundColor(I)V

    .line 77
    new-instance v0, Lcom/explorestack/iab/mraid/MraidWebView$2;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidWebView$2;-><init>(Lcom/explorestack/iab/mraid/MraidWebView;)V

    .line 83
    new-instance v1, Lcom/explorestack/iab/utils/o;

    invoke-direct {v1, p1, p0, v0}, Lcom/explorestack/iab/utils/o;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/o$a;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidWebView;->f:Lcom/explorestack/iab/utils/o;

    .line 1065
    iget-object p1, v1, Lcom/explorestack/iab/utils/o;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez p1, :cond_0

    .line 1066
    new-instance p1, Lcom/explorestack/iab/utils/o$2;

    invoke-direct {p1, v1}, Lcom/explorestack/iab/utils/o$2;-><init>(Lcom/explorestack/iab/utils/o;)V

    iput-object p1, v1, Lcom/explorestack/iab/utils/o;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1074
    :cond_0
    iget-object p1, v1, Lcom/explorestack/iab/utils/o;->d:Landroid/view/View$OnAttachStateChangeListener;

    if-nez p1, :cond_1

    .line 1075
    new-instance p1, Lcom/explorestack/iab/utils/o$3;

    invoke-direct {p1, v1}, Lcom/explorestack/iab/utils/o$3;-><init>(Lcom/explorestack/iab/utils/o;)V

    iput-object p1, v1, Lcom/explorestack/iab/utils/o;->d:Landroid/view/View$OnAttachStateChangeListener;

    .line 1087
    :cond_1
    iget-object p1, v1, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, v1, Lcom/explorestack/iab/utils/o;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1088
    iget-object p1, v1, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    iget-object v0, v1, Lcom/explorestack/iab/utils/o;->d:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1089
    invoke-virtual {v1}, Lcom/explorestack/iab/utils/o;->a()V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/mraid/MraidWebView;)Lcom/explorestack/iab/mraid/k;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->a:Lcom/explorestack/iab/mraid/k;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 140
    sget-object v0, Lcom/explorestack/iab/mraid/MraidWebView;->d:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/explorestack/iab/mraid/MraidWebView;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->h:Z

    .line 147
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->f:Lcom/explorestack/iab/utils/o;

    .line 2061
    iget-boolean v0, v0, Lcom/explorestack/iab/utils/o;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidWebView;->b:Z

    if-eq v0, v1, :cond_1

    .line 164
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->b:Z

    .line 165
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidWebView;->g:Lcom/explorestack/iab/mraid/MraidWebView$b;

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v1, v0}, Lcom/explorestack/iab/mraid/MraidWebView$b;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/explorestack/iab/mraid/MraidWebView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->b()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->c:Z

    .line 2172
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->stopLoading()V

    const-string v0, ""

    .line 2173
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    .line 2174
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->a()V

    .line 183
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidWebView;->f:Lcom/explorestack/iab/utils/o;

    const/4 v1, 0x0

    .line 3093
    iput-boolean v1, v0, Lcom/explorestack/iab/utils/o;->f:Z

    .line 3094
    iget-object v1, v0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/explorestack/iab/utils/o;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3095
    iget-object v1, v0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    iget-object v2, v0, Lcom/explorestack/iab/utils/o;->d:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3096
    iget-object v0, v0, Lcom/explorestack/iab/utils/o;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->d(Ljava/lang/Runnable;)V

    .line 185
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 1151
    sget-object p1, Lcom/explorestack/iab/mraid/MraidWebView;->d:Ljava/lang/String;

    const-string v0, "onResume"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1155
    sget-object v0, Lcom/explorestack/iab/mraid/MraidWebView;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 1157
    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidWebView;->h:Z

    .line 1158
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->b()V

    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidWebView;->a()V

    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setListener(Lcom/explorestack/iab/mraid/MraidWebView$b;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidWebView;->g:Lcom/explorestack/iab/mraid/MraidWebView$b;

    return-void
.end method
