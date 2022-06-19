.class public Lcom/mopub/mraid/MraidController;
.super Lcom/mopub/mobileads/MoPubWebViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$a;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
    }
.end annotation


# instance fields
.field final e:Lcom/mopub/mraid/PlacementType;

.field final f:Lcom/mopub/common/CloseableLayout;

.field final g:Lcom/mopub/mraid/c;

.field h:Lcom/mopub/mraid/ViewState;

.field private i:Landroid/view/ViewGroup;

.field private final j:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

.field private k:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

.field private l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private final m:Lcom/mopub/mraid/MraidBridge;

.field private final n:Lcom/mopub/mraid/MraidBridge;

.field private o:Lcom/mopub/mraid/MraidController$a;

.field private p:Ljava/lang/Integer;

.field private q:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

.field private r:Z

.field private s:Lcom/mopub/mraid/b;

.field private final t:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private u:Ljava/lang/String;

.field private final v:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private final w:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;)V
    .locals 2

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    .line 97
    new-instance p1, Lcom/mopub/mraid/MraidController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidController$a;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$a;

    .line 105
    new-instance p1, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->r:Z

    .line 129
    sget-object p1, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/b;

    .line 184
    new-instance p1, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 258
    new-instance p2, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->w:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 151
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    .line 152
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    .line 153
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    .line 154
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    .line 156
    sget-object p3, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    .line 158
    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 159
    new-instance p6, Lcom/mopub/mraid/c;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p6, v0, p3}, Lcom/mopub/mraid/c;-><init>(Landroid/content/Context;F)V

    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    .line 160
    new-instance p3, Lcom/mopub/common/CloseableLayout;

    iget-object p6, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p3, p6}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    .line 161
    new-instance p6, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {p6, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p3, p6}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 168
    new-instance p6, Landroid/view/View;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance v0, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p6, v0}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$a;

    iget-object p6, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p6}, Lcom/mopub/mraid/MraidController$a;->register(Landroid/content/Context;)V

    .line 1113
    iput-object p1, p4, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 2113
    iput-object p2, p5, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 181
    new-instance p1, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->t:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V
    .locals 7

    .line 138
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p3, p4}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Z)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, v0, p4}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Z)V

    new-instance v6, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-direct {v6}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;)V

    return-void
.end method

.method static a(III)I
    .locals 0

    .line 574
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseWebView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object p0
.end method

.method private a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 821
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/b;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 827
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Ljava/lang/Integer;

    .line 830
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 822
    :cond_1
    new-instance p1, Lcom/mopub/mraid/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/b;

    .line 823
    invoke-virtual {v1}, Lcom/mopub/mraid/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Lcom/mopub/mraid/ViewState;Lcom/mopub/mraid/ViewState;)V
    .locals 1

    .line 556
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 557
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 558
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 560
    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_0

    .line 561
    invoke-interface {p0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onExpand()V

    return-void

    .line 562
    :cond_0
    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_1

    .line 563
    invoke-interface {p0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    return-void

    .line 564
    :cond_1
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_2

    .line 565
    invoke-interface {p0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    return-void

    .line 566
    :cond_2
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    .line 567
    invoke-interface {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onResize(Z)V

    return-void

    .line 568
    :cond_3
    sget-object p1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne p2, p1, :cond_4

    const/4 p1, 0x0

    .line 569
    invoke-interface {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onResize(Z)V

    :cond_4
    return-void
.end method

.method private a(Lcom/mopub/mraid/b;)Z
    .locals 6

    .line 869
    sget-object v0, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 881
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 882
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 881
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 890
    invoke-virtual {p1}, Lcom/mopub/mraid/b;->getActivityInfoOrientation()I

    move-result p1

    if-ne v3, p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 895
    :cond_3
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 896
    invoke-static {p1, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 899
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    .line 900
    invoke-static {p1, v0}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :catch_0
    :cond_4
    return v2
.end method

.method static synthetic b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseWebView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-void
.end method

.method private f()Landroid/view/ViewGroup;
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 804
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/b;

    sget-object v1, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    if-ne v0, v1, :cond_2

    .line 836
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->r:Z

    if-eqz v0, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->h()V

    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 849
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(I)V

    return-void

    .line 843
    :cond_1
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/b;

    invoke-virtual {v0}, Lcom/mopub/mraid/b;->getActivityInfoOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(I)V

    return-void
.end method

.method static synthetic h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 860
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic i(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method private i()Z
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic k(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->t:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object p0
.end method

.method static synthetic l(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    return-object p0
.end method

.method static synthetic p(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    return-object p0
.end method

.method static synthetic q(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    return-object p0
.end method

.method static synthetic s(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->f()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic u(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic v(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic w(Lcom/mopub/mraid/MraidController;)I
    .locals 1

    .line 4348
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 4349
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 4350
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method


# virtual methods
.method final a(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method a(Lcom/mopub/mraid/ViewState;)V
    .locals 4

    .line 536
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MRAID state set to "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    .line 538
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    .line 539
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 542
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    .line 3662
    iget-boolean v1, v1, Lcom/mopub/mraid/MraidBridge;->b:Z

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-static {v1, v0, p1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Lcom/mopub/mraid/ViewState;Lcom/mopub/mraid/ViewState;)V

    :cond_1
    const/4 p1, 0x0

    .line 550
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 438
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 7

    .line 1027
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mBaseWebViewListener:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    .line 1031
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1032
    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v0}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 1033
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    .line 1034
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Uri scheme %s is not allowed."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Lcom/mopub/mraid/a;

    const-string v2, "Unsupported MRAID Javascript command"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, v3

    .line 1033
    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 1039
    :cond_1
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1041
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1042
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1045
    :cond_2
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/mopub/common/UrlAction;

    sget-object v6, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v6, v5, v4

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v5, v3

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1053
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/util/ManifestUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1054
    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    invoke-virtual {v0, v2}, Lcom/mopub/common/UrlHandler$Builder;->withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1058
    :cond_3
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 1060
    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/net/URI;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_b

    .line 677
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_0

    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    return-void

    .line 685
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 692
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->createWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v1

    check-cast v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 693
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->disableTracking()V

    .line 694
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 697
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 701
    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 703
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    const/4 v4, 0x4

    if-ne v2, v3, :cond_7

    if-eqz v0, :cond_4

    .line 705
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 707
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    instance-of v0, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v0, :cond_5

    .line 708
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 710
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 711
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    instance-of v0, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v0, :cond_6

    .line 714
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    .line 717
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->d()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 719
    :cond_7
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_a

    if-eqz v0, :cond_a

    .line 723
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    instance-of v0, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v0, :cond_8

    .line 724
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 726
    :cond_8
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 727
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    instance-of v0, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v0, :cond_9

    .line 729
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    .line 732
    :cond_9
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Z)V

    .line 742
    sget-object p1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    return-void

    .line 674
    :cond_b
    new-instance p1, Lcom/mopub/mraid/a;

    const-string p2, "Unable to expand after the WebView is destroyed"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(Z)V
    .locals 2

    .line 907
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->i()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 913
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_1

    .line 914
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    :cond_1
    return-void
.end method

.method final a(ZLcom/mopub/mraid/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 1007
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1012
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->r:Z

    .line 1013
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/b;

    .line 1015
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object p2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    sget-object p2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/mopub/mraid/MraidController;->d:Z

    if-nez p1, :cond_1

    .line 1017
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()V

    :cond_1
    return-void

    .line 1008
    :cond_2
    new-instance p1, Lcom/mopub/mraid/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to force orientation to "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a()Z
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method final a(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Lcom/mopub/mraid/WebViewDebugListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Lcom/mopub/mraid/WebViewDebugListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/WebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method final a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Lcom/mopub/mraid/WebViewDebugListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Lcom/mopub/mraid/WebViewDebugListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/WebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 367
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method final b()V
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    .line 400
    invoke-static {}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a()Z

    move-result v3

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 401
    invoke-static {v1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v4

    .line 402
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->a()Z

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 397
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mraid/MraidBridge;->a(ZZZZZ)V

    .line 403
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/PlacementType;)V

    .line 404
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Z)V

    .line 405
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->g:Lcom/mopub/mraid/c;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/c;)V

    .line 406
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    .line 407
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    const-string v1, "mraidbridge.notifyReadyEvent();"

    .line 2644
    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 758
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->h()V

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 778
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_5

    .line 779
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 780
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    :cond_5
    return-void

    .line 762
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_7

    .line 765
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->e()V

    .line 766
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 769
    :cond_7
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 774
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 777
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public createWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 2

    .line 924
    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method d()Landroid/view/ViewGroup;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->f()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Landroid/view/ViewGroup;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final destroy()V
    .locals 3

    .line 504
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->destroy()V

    .line 505
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$a;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$a;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 3525
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    const/4 v0, 0x0

    .line 3526
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    .line 520
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->e()V

    .line 521
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->h()V

    return-void

    .line 511
    :cond_0
    throw v0
.end method

.method public final doFillContent(Ljava/lang/String;)V
    .locals 4

    .line 929
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 930
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method public final getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 942
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Landroid/app/Activity;)V
    .locals 1

    .line 336
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    .line 337
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz p1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->i()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    .line 341
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()V
    :try_end_0
    .catch Lcom/mopub/mraid/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to apply orientation."

    .line 343
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final pause(Z)V
    .locals 1

    .line 488
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->pause(Z)V

    .line 489
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 490
    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 1

    .line 496
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->resume()V

    .line 497
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->b:Lcom/mopub/mraid/WebViewDebugListener;

    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    return-void
.end method
