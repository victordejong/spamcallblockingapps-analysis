.class public Lnet/pubnative/lite/sdk/mraid/MRAIDView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;,
        Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;,
        Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;,
        Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDState;
    }
.end annotation


# static fields
.field private static final CLOSE_REGION_SIZE:I = 0x32

.field private static final COMMANDS_WITH_MAP:[Ljava/lang/String;

.field private static final COMMANDS_WITH_NO_PARAM:[Ljava/lang/String;

.field private static final COMMANDS_WITH_STRING:[Ljava/lang/String;

.field private static final MRAID_LOG_TAG:Ljava/lang/String; = "MRAIDView"

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HIDDEN:I = 0x4

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_RESIZED:I = 0x3


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private closeLayoutListener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

.field private closeRegion:Landroid/widget/ImageButton;

.field private contentInfo:Landroid/view/ViewGroup;

.field private contentInfoAdded:Z

.field private contentViewTop:I

.field private final context:Landroid/content/Context;

.field private currentPosition:Landroid/graphics/Rect;

.field private currentWebView:Landroid/webkit/WebView;

.field private defaultPosition:Landroid/graphics/Rect;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private expandedView:Landroid/widget/RelativeLayout;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field protected handler:Landroid/os/Handler;

.field private injections:I

.field private isActionBarShowing:Z

.field private isClosing:Z

.field private isExpanded:Z

.field private isExpandingFromDefault:Z

.field private isExpandingPart2:Z

.field private isForceNotFullScreen:Z

.field private isForcingFullScreen:Z

.field private isFullScreen:Z

.field private final isInterstitial:Z

.field protected isLaidOut:Z

.field protected isPageFinished:Z

.field protected isViewable:Z

.field protected listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

.field private mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

.field private mSkipTimeMillis:Ljava/lang/Integer;

.field private mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

.field private mViewabilityFriendlyObstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

.field private mraidJs:Ljava/lang/String;

.field private final mraidWebChromeClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;

.field private final mraidWebViewClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

.field private final nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

.field private final nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

.field private final orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

.field private origTitleBarVisibility:I

.field private final originalRequestedOrientation:I

.field private final resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

.field private resizedView:Landroid/widget/RelativeLayout;

.field private screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

.field private showActivity:Landroid/app/Activity;

.field protected state:I

.field private titleBar:Landroid/view/View;

.field private useCustomClose:Z

.field private wasTouched:Z

.field protected webView:Landroid/webkit/WebView;

.field private webViewLoaded:Z

.field private webViewPart2:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "close"

    const-string v1, "resize"

    .line 138
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->COMMANDS_WITH_NO_PARAM:[Ljava/lang/String;

    const-string v1, "createCalendarEvent"

    const-string v2, "expand"

    const-string v3, "open"

    const-string v4, "playVideo"

    const-string v5, "storePicture"

    const-string v6, "useCustomClose"

    .line 143
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->COMMANDS_WITH_STRING:[Ljava/lang/String;

    const-string v0, "setOrientationProperties"

    const-string v1, "setResizeProperties"

    .line 152
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->COMMANDS_WITH_MAP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 274
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mSkipTimeMillis:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 190
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->wasTouched:Z

    .line 192
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfoAdded:Z

    .line 193
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewLoaded:Z

    .line 1249
    iput v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injections:I

    .line 276
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    .line 277
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 278
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showActivity:Landroid/app/Activity;

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "http://example.com/"

    .line 280
    :cond_1
    iput-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    .line 281
    iput-boolean p8, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isInterstitial:Z

    .line 283
    iput-object p7, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfo:Landroid/view/ViewGroup;

    .line 285
    iput v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    .line 286
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    .line 287
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->useCustomClose:Z

    .line 288
    new-instance p7, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    invoke-direct {p7}, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;-><init>()V

    iput-object p7, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    .line 289
    new-instance p7, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    invoke-direct {p7}, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;-><init>()V

    iput-object p7, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    .line 290
    new-instance p7, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    new-instance p8, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p8, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p7, p1, p8}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p7, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    .line 292
    iput-object p5, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    .line 293
    iput-object p6, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    const-string p4, "window"

    .line 295
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    .line 297
    new-instance p6, Landroid/util/DisplayMetrics;

    invoke-direct {p6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p6, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 298
    invoke-interface {p4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4, p6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 300
    :cond_2
    iput-object p5, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 303
    :goto_0
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 304
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 305
    new-instance p4, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    invoke-direct {p4, p5}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;)V

    iput-object p4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    .line 306
    new-instance p4, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    invoke-direct {p4, p5}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;)V

    iput-object p4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    .line 308
    instance-of p4, p1, Landroid/app/Activity;

    if-eqz p4, :cond_3

    .line 309
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->originalRequestedOrientation:I

    goto :goto_1

    .line 311
    :cond_3
    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->originalRequestedOrientation:I

    .line 313
    :goto_1
    sget-object p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p6, "originalRequestedOrientation "

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p6, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->originalRequestedOrientation:I

    invoke-static {p6}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getOrientationString(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object p4

    new-instance p6, Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;

    invoke-direct {p6, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-direct {p1, p4, p6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    .line 322
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    .line 324
    new-instance p1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getViewabilityManager()Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    move-result-object p4

    invoke-direct {p1, p4}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;-><init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    .line 325
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mViewabilityFriendlyObstructions:Ljava/util/List;

    .line 327
    new-instance p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-direct {p1, p0, p5}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidWebChromeClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;

    .line 328
    new-instance p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p1, p0, p5}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidWebViewClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    .line 330
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    .line 332
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    .line 333
    invoke-static {p3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDHtmlProcessor;->processRawHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 334
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "hz-m loading mraid "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 336
    iget-object p3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 p8, 0x0

    const-string p6, "text/html"

    const-string p7, "UTF-8"

    move-object p4, p2

    invoke-virtual/range {p3 .. p8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeLayoutListener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->removeResizeView()V

    return-void
.end method

.method static synthetic access$1200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1202(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1402(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpandingPart2:Z

    return p0
.end method

.method static synthetic access$1502(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpandingPart2:Z

    return p1
.end method

.method static synthetic access$1600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->restoreOriginalOrientation()V

    return-void
.end method

.method static synthetic access$1900(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->restoreOriginalScreenState()V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setSupportedServices()V

    return-void
.end method

.method static synthetic access$2300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->initSkipTime()V

    return-void
.end method

.method static synthetic access$2400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setScreenSize()V

    return-void
.end method

.method static synthetic access$2500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setMaxSize()V

    return-void
.end method

.method static synthetic access$2600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setCurrentPosition()V

    return-void
.end method

.method static synthetic access$2700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setDefaultPosition()V

    return-void
.end method

.method static synthetic access$2800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/app/Activity;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2900(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addContentInfo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/webkit/WebView;ZIIII)V
    .locals 0

    .line 109
    invoke-direct/range {p0 .. p6}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->onLayoutWebView(Landroid/webkit/WebView;ZIIII)V

    return-void
.end method

.method static synthetic access$3000(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewLoaded:Z

    return p0
.end method

.method static synthetic access$3002(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewLoaded:Z

    return p1
.end method

.method static synthetic access$3100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    return-object p0
.end method

.method static synthetic access$3200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/view/ViewGroup;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfo:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfoAdded:Z

    return p0
.end method

.method static synthetic access$3400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Ljava/util/List;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mViewabilityFriendlyObstructions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->startSkipTimer()V

    return-void
.end method

.method static synthetic access$3600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->parseCommandUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)Z
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isVerveCustomExpand(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandCreative(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3900(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isInterstitial:Z

    return p0
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-static {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Ljava/io/InputStream;
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getMraidJsStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setResizedViewPosition()V

    return-void
.end method

.method static synthetic access$500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/content/Context;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 109
    iget-object p0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-static {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method static synthetic access$902(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Z)Z
    .locals 0

    .line 109
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->wasTouched:Z

    return p1
.end method

.method private addCloseRegion(Landroid/view/View;)V
    .locals 2

    .line 1153
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 1154
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1155
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$10;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$10;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_0

    .line 1165
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showDefaultCloseButton()V

    .line 1168
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addContentInfo(Landroid/view/View;)V
    .locals 2

    .line 1144
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfo:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfoAdded:Z

    if-nez v1, :cond_0

    .line 1145
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 1146
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfoAdded:Z

    :cond_0
    return-void
.end method

.method private calculateMaxSize()V
    .locals 6

    .line 1809
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1810
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1812
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1813
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1815
    sget-object v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculateMaxSize frame ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x1020002

    .line 1817
    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1819
    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    goto :goto_0

    .line 1822
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    .line 1824
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 1825
    iget v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v3, v1

    .line 1826
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "calculateMaxSize statusHeight "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "calculateMaxSize titleHeight "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "calculateMaxSize contentViewTop "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1830
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    iget v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v1, v3

    .line 1831
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "calculateMaxSize max size "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v2, v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->width:I

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v2, v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    if-eq v1, v2, :cond_2

    .line 1833
    :cond_1
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iput v0, v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->width:I

    .line 1834
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iput v1, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    .line 1835
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_2

    .line 1836
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setMaxSize()V

    :cond_2
    return-void
.end method

.method private calculatePosition(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1844
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "current"

    goto :goto_1

    :cond_1
    const-string v1, "default"

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1849
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 1850
    aget v3, v2, v3

    const/4 v4, 0x1

    .line 1851
    aget v2, v2, v4

    .line 1853
    sget-object v4, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "calculatePosition "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " locationOnScreen ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " contentViewTop "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget v5, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v2, v5

    .line 1857
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1858
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1860
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " position ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] ("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 1862
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 1864
    :goto_2
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v5, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_6

    :cond_3
    if-eqz p1, :cond_4

    .line 1866
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v3

    add-int/2addr v0, v2

    invoke-direct {v1, v3, v2, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    goto :goto_3

    .line 1868
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v3

    add-int/2addr v0, v2

    invoke-direct {v1, v3, v2, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 1871
    :goto_3
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 1873
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setCurrentPosition()V

    return-void

    .line 1875
    :cond_5
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setDefaultPosition()V

    :cond_6
    return-void
.end method

.method private calculateScreenSize()V
    .locals 5

    .line 1791
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1793
    :goto_0
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calculateScreenSize orientation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v1, "portrait"

    goto :goto_1

    :cond_1
    const-string v1, "landscape"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_3

    .line 1795
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1796
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1797
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculateScreenSize screen size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->width:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    if-eq v2, v0, :cond_3

    .line 1799
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iput v1, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->width:I

    .line 1800
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iput v2, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    .line 1801
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_3

    .line 1802
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setScreenSize()V

    :cond_3
    return-void
.end method

.method private createCalendarEvent(Ljava/lang/String;)V
    .locals 3

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createCalendarEvent "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createWebView()Landroid/webkit/WebView;
    .locals 4

    .line 341
    new-instance v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/PNWebView;->setScrollContainer(Z)V

    .line 397
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/PNWebView;->setVerticalScrollBarEnabled(Z)V

    .line 398
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/views/PNWebView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v2, 0x2000000

    .line 401
    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/views/PNWebView;->setScrollBarStyle(I)V

    .line 407
    new-instance v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$3;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$3;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/views/PNWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 426
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 427
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 429
    invoke-virtual {v0, v3}, Lnet/pubnative/lite/sdk/views/PNWebView;->enablePlugins(Z)V

    .line 432
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 434
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidWebChromeClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/views/PNWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 435
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidWebViewClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/views/PNWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 437
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 438
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/views/PNWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    return-object v0
.end method

.method private expandCreative(Ljava/lang/String;Z)V
    .locals 3

    .line 599
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hz-m MRAIDView - expand "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, "(1-part)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 604
    iget p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 612
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->removeResizeView()V

    goto :goto_2

    .line 606
    :cond_2
    :goto_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 607
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 609
    :cond_3
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->removeView(Landroid/view/View;)V

    .line 614
    :cond_4
    :goto_2
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;)V

    const-string p1, "hz-m MRAIDView - expand - empty url"

    .line 615
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    :try_start_0
    const-string v0, "UTF-8"

    .line 623
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "http://"

    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 638
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;

    invoke-direct {v1, p0, p2, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;ZLjava/lang/String;)V

    const-string p1, "2-part-content"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception p1

    .line 625
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hz-m MRAIDView - expand - UnsupportedEncodingException "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private forceFullScreen()V
    .locals 5

    .line 1064
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 1065
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "forceFullScreen"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1069
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v1, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1070
    :goto_0
    iput-boolean v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isFullScreen:Z

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1071
    :goto_1
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isForceNotFullScreen:Z

    const/16 v1, -0x9

    .line 1072
    iput v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->origTitleBarVisibility:I

    .line 1076
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1079
    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v3

    iput-boolean v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isActionBarShowing:Z

    .line 1080
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 1086
    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->titleBar:Landroid/view/View;

    const v1, 0x1020016

    .line 1088
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->titleBar:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 1092
    :goto_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1093
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->origTitleBarVisibility:I

    .line 1094
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->titleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    :cond_3
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isFullScreen "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isFullScreen:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isForceNotFullScreen "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isForceNotFullScreen:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isActionBarShowing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isActionBarShowing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "origTitleBarVisibility "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-static {v3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1105
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1107
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isFullScreen:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isForcingFullScreen:Z

    :cond_4
    return-void
.end method

.method private getMraidJsStream()Ljava/io/InputStream;
    .locals 3

    .line 1261
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Ly8KICAgICAgICAvLyAgbXJhaWQuanMKICAgICAgICAvLwoKICAgICAgICAoZnVuY3Rpb24gKCkgewoKICAgICAgICAgICAgY29uc29sZS5sb2coIk1SQUlEIG9iamVjdCBsb2FkaW5nLi4uIik7CgogICAgICAgICAgICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAgICAgICAgICAqIGNvbnNvbGUgbG9nZ2luZyBoZWxwZXIKICAgICAgICAgICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgICAgICAgICAgdmFyIExvZ0xldmVsRW51bSA9IHsKICAgICAgICAgICAgICAgICJERUJVRyI6IDAsCiAgICAgICAgICAgICAgICAiSU5GTyI6IDEsCiAgICAgICAgICAgICAgICAiV0FSTklORyI6IDIsCiAgICAgICAgICAgICAgICAiRVJST1IiOiAzLAogICAgICAgICAgICAgICAgIk5PTkUiOiA0CiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgbG9nTGV2ZWwgPSBMb2dMZXZlbEVudW0uREVCVUc7CiAgICAgICAgICAgIHZhciBsb2cgPSB7fTsKCiAgICAgICAgICAgIGxvZy5kID0gZnVuY3Rpb24gKG1zZykgewogICAgICAgICAgICAgICAgaWYgKGxvZ0xldmVsIDw9IExvZ0xldmVsRW51bS5ERUJVRykgewogICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCIoRC1tcmFpZC5qcykgIiArIG1zZyk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBsb2cuaSA9IGZ1bmN0aW9uIChtc2cpIHsKICAgICAgICAgICAgICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uSU5GTykgewogICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCIoSS1tcmFpZC5qcykgIiArIG1zZyk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBsb2cudyA9IGZ1bmN0aW9uIChtc2cpIHsKICAgICAgICAgICAgICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uV0FSTklORykgewogICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCIoVy1tcmFpZC5qcykgIiArIG1zZyk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBsb2cuZSA9IGZ1bmN0aW9uIChtc2cpIHsKICAgICAgICAgICAgICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uRVJST1IpIHsKICAgICAgICAgICAgICAgICAgICBjb25zb2xlLmxvZygiKEUtbXJhaWQuanMpICIgKyBtc2cpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgICAgICAgICAgKiBNUkFJRCBkZWNsYXJhdGlvbgogICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogICAgICAgICAgICB2YXIgbXJhaWQgPSB3aW5kb3cubXJhaWQgPSB7fTsKCiAgICAgICAgICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAgICAgICAgICogY29uc3RhbnRzCiAgICAgICAgICAgICAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KCiAgICAgICAgICAgIHZhciBWRVJTSU9OID0gIjIuMCI7CgogICAgICAgICAgICB2YXIgU1RBVEVTID0gbXJhaWQuU1RBVEVTID0gewogICAgICAgICAgICAgICAgIkxPQURJTkciOiAibG9hZGluZyIsCiAgICAgICAgICAgICAgICAiREVGQVVMVCI6ICJkZWZhdWx0IiwKICAgICAgICAgICAgICAgICJFWFBBTkRFRCI6ICJleHBhbmRlZCIsCiAgICAgICAgICAgICAgICAiUkVTSVpFRCI6ICJyZXNpemVkIiwKICAgICAgICAgICAgICAgICJISURERU4iOiAiaGlkZGVuIgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIFBMQUNFTUVOVF9UWVBFUyA9IG1yYWlkLlBMQUNFTUVOVF9UWVBFUyA9IHsKICAgICAgICAgICAgICAgICJJTkxJTkUiOiAiaW5saW5lIiwKICAgICAgICAgICAgICAgICJJTlRFUlNUSVRJQUwiOiAiaW50ZXJzdGl0aWFsIgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIFJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTiA9IG1yYWlkLlJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTiA9IHsKICAgICAgICAgICAgICAgICJUT1BfTEVGVCI6ICJ0b3AtbGVmdCIsCiAgICAgICAgICAgICAgICAiVE9QX0NFTlRFUiI6ICJ0b3AtY2VudGVyIiwKICAgICAgICAgICAgICAgICJUT1BfUklHSFQiOiAidG9wLXJpZ2h0IiwKICAgICAgICAgICAgICAgICJDRU5URVIiOiAiY2VudGVyIiwKICAgICAgICAgICAgICAgICJCT1RUT01fTEVGVCI6ICJib3R0b20tbGVmdCIsCiAgICAgICAgICAgICAgICAiQk9UVE9NX0NFTlRFUiI6ICJib3R0b20tY2VudGVyIiwKICAgICAgICAgICAgICAgICJCT1RUT01fUklHSFQiOiAiYm90dG9tLXJpZ2h0IgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIE9SSUVOVEFUSU9OX1BST1BFUlRJRVNfRk9SQ0VfT1JJRU5UQVRJT04gPSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OID0gewogICAgICAgICAgICAgICAgIlBPUlRSQUlUIjogInBvcnRyYWl0IiwKICAgICAgICAgICAgICAgICJMQU5EU0NBUEUiOiAibGFuZHNjYXBlIiwKICAgICAgICAgICAgICAgICJOT05FIjogIm5vbmUiCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgRVZFTlRTID0gbXJhaWQuRVZFTlRTID0gewogICAgICAgICAgICAgICAgIkVSUk9SIjogImVycm9yIiwKICAgICAgICAgICAgICAgICJSRUFEWSI6ICJyZWFkeSIsCiAgICAgICAgICAgICAgICAiU0laRUNIQU5HRSI6ICJzaXplQ2hhbmdlIiwKICAgICAgICAgICAgICAgICJTVEFURUNIQU5HRSI6ICJzdGF0ZUNoYW5nZSIsCiAgICAgICAgICAgICAgICAiVklFV0FCTEVDSEFOR0UiOiAidmlld2FibGVDaGFuZ2UiCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgU1VQUE9SVEVEX0ZFQVRVUkVTID0gbXJhaWQuU1VQUE9SVEVEX0ZFQVRVUkVTID0gewogICAgICAgICAgICAgICAgIlNNUyI6ICJzbXMiLAogICAgICAgICAgICAgICAgIlRFTCI6ICJ0ZWwiLAogICAgICAgICAgICAgICAgIkNBTEVOREFSIjogImNhbGVuZGFyIiwKICAgICAgICAgICAgICAgICJTVE9SRVBJQ1RVUkUiOiAic3RvcmVQaWN0dXJlIiwKICAgICAgICAgICAgICAgICJJTkxJTkVWSURFTyI6ICJpbmxpbmVWaWRlbyIKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAgICAgICAgICogc3RhdGUKICAgICAgICAgICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgICAgICAgICAgdmFyIHN0YXRlID0gU1RBVEVTLkxPQURJTkc7CiAgICAgICAgICAgIHZhciBwbGFjZW1lbnRUeXBlID0gUExBQ0VNRU5UX1RZUEVTLklOTElORTsKICAgICAgICAgICAgdmFyIHN1cHBvcnRlZEZlYXR1cmVzID0ge307CiAgICAgICAgICAgIHZhciBpc1ZpZXdhYmxlID0gZmFsc2U7CiAgICAgICAgICAgIHZhciBpc0V4cGFuZFByb3BlcnRpZXNTZXQgPSBmYWxzZTsKICAgICAgICAgICAgdmFyIGlzUmVzaXplUmVhZHkgPSBmYWxzZTsKCiAgICAgICAgICAgIHZhciBleHBhbmRQcm9wZXJ0aWVzID0gewogICAgICAgICAgICAgICAgIndpZHRoIjogMCwKICAgICAgICAgICAgICAgICJoZWlnaHQiOiAwLAogICAgICAgICAgICAgICAgInVzZUN1c3RvbUNsb3NlIjogZmFsc2UsCiAgICAgICAgICAgICAgICAiaXNNb2RhbCI6IHRydWUKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIHZhciBvcmllbnRhdGlvblByb3BlcnRpZXMgPSB7CiAgICAgICAgICAgICAgICAiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSI6IHRydWUsCiAgICAgICAgICAgICAgICAiZm9yY2VPcmllbnRhdGlvbiI6IE9SSUVOVEFUSU9OX1BST1BFUlRJRVNfRk9SQ0VfT1JJRU5UQVRJT04uTk9ORQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIHJlc2l6ZVByb3BlcnRpZXMgPSB7CiAgICAgICAgICAgICAgICAid2lkdGgiOiAwLAogICAgICAgICAgICAgICAgImhlaWdodCI6IDAsCiAgICAgICAgICAgICAgICAiY3VzdG9tQ2xvc2VQb3NpdGlvbiI6IFJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTi5UT1BfUklHSFQsCiAgICAgICAgICAgICAgICAib2Zmc2V0WCI6IDAsCiAgICAgICAgICAgICAgICAib2Zmc2V0WSI6IDAsCiAgICAgICAgICAgICAgICAiYWxsb3dPZmZzY3JlZW4iOiB0cnVlCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgY3VycmVudFBvc2l0aW9uID0gewogICAgICAgICAgICAgICAgIngiOiAwLAogICAgICAgICAgICAgICAgInkiOiAwLAogICAgICAgICAgICAgICAgIndpZHRoIjogMCwKICAgICAgICAgICAgICAgICJoZWlnaHQiOiAwCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgZGVmYXVsdFBvc2l0aW9uID0gewogICAgICAgICAgICAgICAgIngiOiAwLAogICAgICAgICAgICAgICAgInkiOiAwLAogICAgICAgICAgICAgICAgIndpZHRoIjogMCwKICAgICAgICAgICAgICAgICJoZWlnaHQiOiAwCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgbWF4U2l6ZSA9IHsKICAgICAgICAgICAgICAgICJ3aWR0aCI6IDAsCiAgICAgICAgICAgICAgICAiaGVpZ2h0IjogMAogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIHNjcmVlblNpemUgPSB7CiAgICAgICAgICAgICAgICAid2lkdGgiOiAwLAogICAgICAgICAgICAgICAgImhlaWdodCI6IDAKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIHZhciBjdXJyZW50T3JpZW50YXRpb24gPSAwOwoKICAgICAgICAgICAgdmFyIGxpc3RlbmVycyA9IHt9OwogICAgICAgICAgICB3aW5kb3cubGlzdGVuZXJzID0gbGlzdGVuZXJzOwoKICAgICAgICAgICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgICAgICAgICAgKiAib2ZmaWNpYWwiIEFQSTogbWV0aG9kcyBjYWxsZWQgYnkgY3JlYXRpdmUKICAgICAgICAgICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgICAgICAgICAgbXJhaWQuYWRkRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uIChldmVudCwgbGlzdGVuZXIpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5hZGRFdmVudExpc3RlbmVyICIgKyBldmVudCArICI6ICIgKyBTdHJpbmcobGlzdGVuZXIpKTsKICAgICAgICAgICAgICAgIGlmICghZXZlbnQgfHwgIWxpc3RlbmVyKSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIkJvdGggZXZlbnQgYW5kIGxpc3RlbmVyIGFyZSByZXF1aXJlZC4iLCAiYWRkRXZlbnRMaXN0ZW5lciIpOwogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmICghY29udGFpbnMoZXZlbnQsIEVWRU5UUykpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiVW5rbm93biBNUkFJRCBldmVudDogIiArIGV2ZW50LCAiYWRkRXZlbnRMaXN0ZW5lciIpOwogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIHZhciBsaXN0ZW5lcnNGb3JFdmVudCA9IGxpc3RlbmVyc1tldmVudF0gPSBsaXN0ZW5lcnNbZXZlbnRdIHx8IFtdOwogICAgICAgICAgICAgICAgLy8gY2hlY2sgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIGxpc3RlbmVyIGlzbid0IGFscmVhZHkgcmVnaXN0ZXJlZAogICAgICAgICAgICAgICAgZm9yICh2YXIgaSA9IDA7IGkgPCBsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGg7IGkrKykgewogICAgICAgICAgICAgICAgICAgIHZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsKICAgICAgICAgICAgICAgICAgICB2YXIgc3RyMiA9IFN0cmluZyhsaXN0ZW5lcnNGb3JFdmVudFtpXSk7CiAgICAgICAgICAgICAgICAgICAgaWYgKGxpc3RlbmVyID09PSBsaXN0ZW5lcnNGb3JFdmVudFtpXSB8fCBzdHIxID09PSBzdHIyKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGxvZy5pKCJsaXN0ZW5lciAiICsgc3RyMSArICIgaXMgYWxyZWFkeSByZWdpc3RlcmVkIGZvciBldmVudCAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgbGlzdGVuZXJzRm9yRXZlbnQucHVzaChsaXN0ZW5lcik7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5jcmVhdGVDYWxlbmRhckV2ZW50ID0gZnVuY3Rpb24gKHBhcmFtZXRlcnMpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5jcmVhdGVDYWxlbmRhckV2ZW50IHdpdGggIiArIHBhcmFtZXRlcnMpOwogICAgICAgICAgICAgICAgaWYgKHN1cHBvcnRlZEZlYXR1cmVzW21yYWlkLlNVUFBPUlRFRF9GRUFUVVJFUy5DQUxFTkRBUl0pIHsKICAgICAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJjcmVhdGVDYWxlbmRhckV2ZW50P2V2ZW50SlNPTj0iICsgSlNPTi5zdHJpbmdpZnkocGFyYW1ldGVycykpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBsb2cuZSgiY3JlYXRlQ2FsZW5kYXJFdmVudCBpcyBub3Qgc3VwcG9ydGVkIik7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5jbG9zZSA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5jbG9zZSIpOwogICAgICAgICAgICAgICAgaWYgKHN0YXRlID09PSBTVEFURVMuTE9BRElORwogICAgICAgICAgICAgICAgICAgIHx8IChzdGF0ZSA9PT0gU1RBVEVTLkRFRkFVTFQgJiYgcGxhY2VtZW50VHlwZSA9PT0gUExBQ0VNRU5UX1RZUEVTLklOTElORSkKICAgICAgICAgICAgICAgICAgICB8fCBzdGF0ZSA9PT0gU1RBVEVTLkhJRERFTikgewogICAgICAgICAgICAgICAgICAgIC8vIGRvIG5vdGhpbmcKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJjbG9zZSIpOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZXhwYW5kID0gZnVuY3Rpb24gKHVybCkgewogICAgICAgICAgICAgICAgaWYgKHVybCA9PT0gdW5kZWZpbmVkKSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmV4cGFuZCAoMS1wYXJ0KSIpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZXhwYW5kICIgKyB1cmwpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgLy8gVGhlIG9ubHkgdGltZSBpdCBpcyB2YWxpZCB0byBjYWxsIGV4cGFuZCBpcyB3aGVuIHRoZSBhZCBpcwogICAgICAgICAgICAgICAgLy8gYSBiYW5uZXIgY3VycmVudGx5IGluIGVpdGhlciBkZWZhdWx0IG9yIHJlc2l6ZWQgc3RhdGUuCiAgICAgICAgICAgICAgICBpZiAocGxhY2VtZW50VHlwZSAhPT0gUExBQ0VNRU5UX1RZUEVTLklOTElORQogICAgICAgICAgICAgICAgICAgIHx8IChzdGF0ZSAhPT0gU1RBVEVTLkRFRkFVTFQgJiYgc3RhdGUgIT09IFNUQVRFUy5SRVNJWkVEKSkgewogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmICh1cmwgPT09IHVuZGVmaW5lZCkgewogICAgICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoImV4cGFuZCIpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJleHBhbmQ/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRDdXJyZW50UG9zaXRpb24gPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZ2V0Q3VycmVudFBvc2l0aW9uIik7CiAgICAgICAgICAgICAgICByZXR1cm4gY3VycmVudFBvc2l0aW9uOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZ2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldERlZmF1bHRQb3NpdGlvbiIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGRlZmF1bHRQb3NpdGlvbjsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmdldEV4cGFuZFByb3BlcnRpZXMgPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZ2V0RXhwYW5kUHJvcGVydGllcyIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGV4cGFuZFByb3BlcnRpZXM7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRNYXhTaXplID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldE1heFNpemUiKTsKICAgICAgICAgICAgICAgIHJldHVybiBtYXhTaXplOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZ2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldE9yaWVudGF0aW9uUHJvcGVydGllcyIpOwogICAgICAgICAgICAgICAgcmV0dXJuIG9yaWVudGF0aW9uUHJvcGVydGllczsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmdldFBsYWNlbWVudFR5cGUgPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZ2V0UGxhY2VtZW50VHlwZSIpOwogICAgICAgICAgICAgICAgcmV0dXJuIHBsYWNlbWVudFR5cGU7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRSZXNpemVQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldFJlc2l6ZVByb3BlcnRpZXMiKTsKICAgICAgICAgICAgICAgIHJldHVybiByZXNpemVQcm9wZXJ0aWVzOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZ2V0U2NyZWVuU2l6ZSA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5nZXRTY3JlZW5TaXplIik7CiAgICAgICAgICAgICAgICByZXR1cm4gc2NyZWVuU2l6ZTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmdldFN0YXRlID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldFN0YXRlIik7CiAgICAgICAgICAgICAgICByZXR1cm4gc3RhdGU7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRWZXJzaW9uID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldFZlcnNpb24iKTsKICAgICAgICAgICAgICAgIHJldHVybiBWRVJTSU9OOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuaXNWaWV3YWJsZSA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5pc1ZpZXdhYmxlIik7CiAgICAgICAgICAgICAgICByZXR1cm4gaXNWaWV3YWJsZTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLm9wZW4gPSBmdW5jdGlvbiAodXJsKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQub3BlbiAiICsgdXJsKTsKICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoIm9wZW4/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5wbGF5VmlkZW8gPSBmdW5jdGlvbiAodXJsKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQucGxheVZpZGVvICIgKyB1cmwpOwogICAgICAgICAgICAgICAgY2FsbE5hdGl2ZSgicGxheVZpZGVvP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQucmVtb3ZlRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uIChldmVudCwgbGlzdGVuZXIpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5yZW1vdmVFdmVudExpc3RlbmVyICIgKyBldmVudCArICIgOiAiICsgU3RyaW5nKGxpc3RlbmVyKSk7CiAgICAgICAgICAgICAgICBpZiAoIWV2ZW50KSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIkV2ZW50IGlzIHJlcXVpcmVkLiIsICJyZW1vdmVFdmVudExpc3RlbmVyIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgaWYgKCFjb250YWlucyhldmVudCwgRVZFTlRTKSkgewogICAgICAgICAgICAgICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJVbmtub3duIE1SQUlEIGV2ZW50OiAiICsgZXZlbnQsICJyZW1vdmVFdmVudExpc3RlbmVyIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgaWYgKGxpc3RlbmVycy5oYXNPd25Qcm9wZXJ0eShldmVudCkpIHsKICAgICAgICAgICAgICAgICAgICBpZiAobGlzdGVuZXIpIHsKICAgICAgICAgICAgICAgICAgICAgICAgdmFyIGxpc3RlbmVyc0ZvckV2ZW50ID0gbGlzdGVuZXJzW2V2ZW50XTsKICAgICAgICAgICAgICAgICAgICAgICAgLy8gdHJ5IHRvIGZpbmQgdGhlIGdpdmVuIGxpc3RlbmVyCiAgICAgICAgICAgICAgICAgICAgICAgIHZhciBsZW4gPSBsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGg7CiAgICAgICAgICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgbGVuOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciByZWdpc3RlcmVkTGlzdGVuZXIgPSBsaXN0ZW5lcnNGb3JFdmVudFtpXTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBzdHIyID0gU3RyaW5nKHJlZ2lzdGVyZWRMaXN0ZW5lcik7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAobGlzdGVuZXIgPT09IHJlZ2lzdGVyZWRMaXN0ZW5lciB8fCBzdHIxID09PSBzdHIyKSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGlzdGVuZXJzRm9yRXZlbnQuc3BsaWNlKGksIDEpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChpID09PSBsZW4pIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvZy5pKCJsaXN0ZW5lciAiICsgc3RyMSArICIgbm90IGZvdW5kIGZvciBldmVudCAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGggPT09IDApIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICAgICAgLy8gbm8gbGlzdGVuZXIgdG8gcmVtb3ZlIHdhcyBwcm92aWRlZCwgc28gcmVtb3ZlIGFsbCBsaXN0ZW5lcnMKICAgICAgICAgICAgICAgICAgICAgICAgLy8gZm9yIGdpdmVuIGV2ZW50CiAgICAgICAgICAgICAgICAgICAgICAgIGRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyByZWdpc3RlcmVkIGZvciBldmVudCAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQucmVzaXplID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnJlc2l6ZSIpOwogICAgICAgICAgICAgICAgLy8gVGhlIG9ubHkgdGltZSBpdCBpcyB2YWxpZCB0byBjYWxsIHJlc2l6ZSBpcyB3aGVuIHRoZSBhZCBpcwogICAgICAgICAgICAgICAgLy8gYSBiYW5uZXIgY3VycmVudGx5IGluIGVpdGhlciBkZWZhdWx0IG9yIHJlc2l6ZWQgc3RhdGUuCiAgICAgICAgICAgICAgICAvLyBUcmlnZ2VyIGFuIGVycm9yIGlmIHRoZSBjdXJyZW50IHN0YXRlIGlzIGV4cGFuZGVkLgogICAgICAgICAgICAgICAgaWYgKHBsYWNlbWVudFR5cGUgPT09IFBMQUNFTUVOVF9UWVBFUy5JTlRFUlNUSVRJQUwgfHwgc3RhdGUgPT09IFNUQVRFUy5MT0FESU5HIHx8IHN0YXRlID09PSBTVEFURVMuSElEREVOKSB7CiAgICAgICAgICAgICAgICAgICAgLy8gZG8gbm90aGluZwogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmIChzdGF0ZSA9PT0gU1RBVEVTLkVYUEFOREVEKSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIm1yYWlkLnJlc2l6ZSBjYWxsZWQgd2hlbiBhZCBpcyBpbiBleHBhbmRlZCBzdGF0ZSIsICJtcmFpZC5yZXNpemUiKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBpZiAoIWlzUmVzaXplUmVhZHkpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgibXJhaWQucmVzaXplIGlzIG5vdCByZWFkeSB0byBiZSBjYWxsZWQiLCAibXJhaWQucmVzaXplIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgY2FsbE5hdGl2ZSgicmVzaXplIik7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKHByb3BlcnRpZXMpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzIik7CgogICAgICAgICAgICAgICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0RXhwYW5kUHJvcGVydGllcyIpKSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmUoImZhaWxlZCB2YWxpZGF0aW9uIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciBvbGRVc2VDdXN0b21DbG9zZSA9IGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2U7CgogICAgICAgICAgICAgICAgLy8gZXhwYW5kUHJvcGVydGllcyBjb250YWlucyAzIHJlYWQtd3JpdGUgcHJvcGVydGllczogd2lkdGgsIGhlaWdodCwgYW5kIHVzZUN1c3RvbUNsb3NlOwogICAgICAgICAgICAgICAgLy8gdGhlIGlzTW9kYWwgcHJvcGVydHkgaXMgcmVhZC1vbmx5CiAgICAgICAgICAgICAgICB2YXIgcndQcm9wcyA9IFsid2lkdGgiLCAiaGVpZ2h0IiwgInVzZUN1c3RvbUNsb3NlIl07CiAgICAgICAgICAgICAgICBmb3IgKHZhciBpID0gMDsgaSA8IHJ3UHJvcHMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICB2YXIgcHJvcG5hbWUgPSByd1Byb3BzW2ldOwogICAgICAgICAgICAgICAgICAgIGlmIChwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KHByb3BuYW1lKSkgewogICAgICAgICAgICAgICAgICAgICAgICBleHBhbmRQcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3BlcnRpZXNbcHJvcG5hbWVdOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICAvLyBJbiBNUkFJRCB2Mi4wLCBhbGwgZXhwYW5kZWQgYWRzIGJ5IGRlZmluaXRpb24gY292ZXIgdGhlIGVudGlyZSBzY3JlZW4sCiAgICAgICAgICAgICAgICAvLyBzbyB0aGUgb25seSBwcm9wZXJ0eSB0aGF0IHRoZSBuYXRpdmUgc2lkZSBoYXMgdG8ga25vdyBhYm91dCBpcyB1c2VDdXN0b21DbG9zZS4KICAgICAgICAgICAgICAgIC8vIChUaGF0IGlzLCB0aGUgd2lkdGggYW5kIGhlaWdodCBwcm9wZXJ0aWVzIGFyZSBub3QgbmVlZGVkIGJ5IHRoZSBuYXRpdmUgY29kZS4pCiAgICAgICAgICAgICAgICBpZiAoZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSAhPT0gb2xkVXNlQ3VzdG9tQ2xvc2UpIHsKICAgICAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJ1c2VDdXN0b21DbG9zZT91c2VDdXN0b21DbG9zZT0iICsgZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSk7CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgaXNFeHBhbmRQcm9wZXJ0aWVzU2V0ID0gdHJ1ZTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldE9yaWVudGF0aW9uUHJvcGVydGllcyA9IGZ1bmN0aW9uIChwcm9wZXJ0aWVzKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7CgogICAgICAgICAgICAgICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIikpIHsKICAgICAgICAgICAgICAgICAgICBsb2cuZSgiZmFpbGVkIHZhbGlkYXRpb24iKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgdmFyIG5ld09yaWVudGF0aW9uUHJvcGVydGllcyA9IHt9OwogICAgICAgICAgICAgICAgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UgPSBvcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSwKICAgICAgICAgICAgICAgICAgICBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRhdGlvbiA9IG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uOwoKICAgICAgICAgICAgICAgIC8vIG9yaWVudGF0aW9uUHJvcGVydGllcyBjb250YWlucyAyIHJlYWQtd3JpdGUgcHJvcGVydGllczoKICAgICAgICAgICAgICAgIC8vIGFsbG93T3JpZW50YXRpb25DaGFuZ2UgYW5kIGZvcmNlT3JpZW50YXRpb24KICAgICAgICAgICAgICAgIHZhciByd1Byb3BzID0gWyJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiwgImZvcmNlT3JpZW50YXRpb24iXTsKICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgewogICAgICAgICAgICAgICAgICAgIHZhciBwcm9wbmFtZSA9IHJ3UHJvcHNbaV07CiAgICAgICAgICAgICAgICAgICAgaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIG5ld09yaWVudGF0aW9uUHJvcGVydGllc1twcm9wbmFtZV0gPSBwcm9wZXJ0aWVzW3Byb3BuYW1lXTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgLy8gU2V0dGluZyBhbGxvd09yaWVudGF0aW9uQ2hhbmdlIHRvIHRydWUgd2hpbGUgc2V0dGluZyBmb3JjZU9yaWVudGF0aW9uCiAgICAgICAgICAgICAgICAvLyB0byBlaXRoZXIgcG9ydHJhaXQgb3IgbGFuZHNjYXBlCiAgICAgICAgICAgICAgICAvLyBpcyBjb25zaWRlcmVkIGFuIGVycm9yIGNvbmRpdGlvbi4KICAgICAgICAgICAgICAgIGlmIChuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZQogICAgICAgICAgICAgICAgICAgICYmIG5ld09yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uICE9PSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5PTkUpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgKICAgICAgICAgICAgICAgICAgICAgICAgImFsbG93T3JpZW50YXRpb25DaGFuZ2UgaXMgdHJ1ZSBidXQgZm9yY2VPcmllbnRhdGlvbiBpcyAiCiAgICAgICAgICAgICAgICAgICAgICAgICsgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb24sCiAgICAgICAgICAgICAgICAgICAgICAgICJzZXRPcmllbnRhdGlvblByb3BlcnRpZXMiKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UgPSBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZTsKICAgICAgICAgICAgICAgIG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uID0gbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb247CgogICAgICAgICAgICAgICAgdmFyIHBhcmFtcyA9ICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlPSIKICAgICAgICAgICAgICAgICAgICArIG9yaWVudGF0aW9uUHJvcGVydGllcy5hbGxvd09yaWVudGF0aW9uQ2hhbmdlCiAgICAgICAgICAgICAgICAgICAgKyAiJmZvcmNlT3JpZW50YXRpb249IiArIG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uOwoKICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoInNldE9yaWVudGF0aW9uUHJvcGVydGllcz8iICsgcGFyYW1zKTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMgPSBmdW5jdGlvbiAocHJvcGVydGllcykgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsKCiAgICAgICAgICAgICAgICBpc1Jlc2l6ZVJlYWR5ID0gZmFsc2U7CgogICAgICAgICAgICAgICAgLy8gcmVzaXplUHJvcGVydGllcyBjb250YWlucyA2IHJlYWQtd3JpdGUgcHJvcGVydGllczoKICAgICAgICAgICAgICAgIC8vIHdpZHRoLCBoZWlnaHQsIG9mZnNldFgsIG9mZnNldFksIGN1c3RvbUNsb3NlUG9zaXRpb24sIGFsbG93T2Zmc2NyZWVuCgogICAgICAgICAgICAgICAgLy8gVGhlIHByb3BlcnRpZXMgb2JqZWN0IHBhc3NlZCBpbnRvIHRoaXMgZnVuY3Rpb24gbXVzdCBjb250YWluIHdpZHRoLCBoZWlnaHQsIG9mZnNldFgsIG9mZnNldFkuCiAgICAgICAgICAgICAgICAvLyBUaGUgcmVtYWluaW5nIHR3byBwcm9wZXJ0aWVzIGFyZSBvcHRpb25hbC4KICAgICAgICAgICAgICAgIHZhciByZXF1aXJlZFByb3BzID0gWyJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJvZmZzZXRZIl07CiAgICAgICAgICAgICAgICBmb3IgKHZhciBpID0gMDsgaSA8IHJlcXVpcmVkUHJvcHMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICB2YXIgcHJvcG5hbWUgPSByZXF1aXJlZFByb3BzW2ldOwogICAgICAgICAgICAgICAgICAgIGlmICghcHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eShwcm9wbmFtZSkpIHsKICAgICAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAicmVxdWlyZWQgcHJvcGVydHkgIiArIHByb3BuYW1lICsgIiBpcyBtaXNzaW5nIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0UmVzaXplUHJvcGVydGllcyIpKSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoImZhaWxlZCB2YWxpZGF0aW9uIiwgIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgdmFyIGFkanVzdG1lbnRzID0geyJ4IjogMCwgInkiOiAwfTsKCiAgICAgICAgICAgICAgICB2YXIgYWxsb3dPZmZzY3JlZW4gPSBwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KCJhbGxvd09mZnNjcmVlbiIpID8gcHJvcGVydGllcy5hbGxvd09mZnNjcmVlbiA6IHJlc2l6ZVByb3BlcnRpZXMuYWxsb3dPZmZzY3JlZW47CiAgICAgICAgICAgICAgICBpZiAoIWFsbG93T2Zmc2NyZWVuKSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKHByb3BlcnRpZXMud2lkdGggPiBtYXhTaXplLndpZHRoIHx8IHByb3BlcnRpZXMuaGVpZ2h0ID4gbWF4U2l6ZS5oZWlnaHQpIHsKICAgICAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoInJlc2l6ZSB3aWR0aCBvciBoZWlnaHQgaXMgZ3JlYXRlciB0aGFuIHRoZSBtYXhTaXplIHdpZHRoIG9yIGhlaWdodCIsICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgYWRqdXN0bWVudHMgPSBmaXRSZXNpemVWaWV3T25TY3JlZW4ocHJvcGVydGllcyk7CiAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKCFpc0Nsb3NlUmVnaW9uT25TY3JlZW4ocHJvcGVydGllcykpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiY2xvc2UgZXZlbnQgcmVnaW9uIHdpbGwgbm90IGFwcGVhciBlbnRpcmVseSBvbnNjcmVlbiIsICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciByd1Byb3BzID0gWyJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJvZmZzZXRZIiwgImN1c3RvbUNsb3NlUG9zaXRpb24iLCAiYWxsb3dPZmZzY3JlZW4iXTsKICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgewogICAgICAgICAgICAgICAgICAgIHZhciBwcm9wbmFtZSA9IHJ3UHJvcHNbaV07CiAgICAgICAgICAgICAgICAgICAgaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJlc2l6ZVByb3BlcnRpZXNbcHJvcG5hbWVdID0gcHJvcGVydGllc1twcm9wbmFtZV07CiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciBwYXJhbXMgPQogICAgICAgICAgICAgICAgICAgICJ3aWR0aD0iICsgcmVzaXplUHJvcGVydGllcy53aWR0aCArCiAgICAgICAgICAgICAgICAgICAgIiZoZWlnaHQ9IiArIHJlc2l6ZVByb3BlcnRpZXMuaGVpZ2h0ICsKICAgICAgICAgICAgICAgICAgICAiJm9mZnNldFg9IiArIChyZXNpemVQcm9wZXJ0aWVzLm9mZnNldFggKyBhZGp1c3RtZW50cy54KSArCiAgICAgICAgICAgICAgICAgICAgIiZvZmZzZXRZPSIgKyAocmVzaXplUHJvcGVydGllcy5vZmZzZXRZICsgYWRqdXN0bWVudHMueSkgKwogICAgICAgICAgICAgICAgICAgICImY3VzdG9tQ2xvc2VQb3NpdGlvbj0iICsgcmVzaXplUHJvcGVydGllcy5jdXN0b21DbG9zZVBvc2l0aW9uICsKICAgICAgICAgICAgICAgICAgICAiJmFsbG93T2Zmc2NyZWVuPSIgKyByZXNpemVQcm9wZXJ0aWVzLmFsbG93T2Zmc2NyZWVuOwoKICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoInNldFJlc2l6ZVByb3BlcnRpZXM/IiArIHBhcmFtcyk7CgogICAgICAgICAgICAgICAgaXNSZXNpemVSZWFkeSA9IHRydWU7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zdG9yZVBpY3R1cmUgPSBmdW5jdGlvbiAodXJsKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc3RvcmVQaWN0dXJlICIgKyB1cmwpOwogICAgICAgICAgICAgICAgaWYgKHN1cHBvcnRlZEZlYXR1cmVzW21yYWlkLlNVUFBPUlRFRF9GRUFUVVJFUy5TVE9SRVBJQ1RVUkVdKSB7CiAgICAgICAgICAgICAgICAgICAgY2FsbE5hdGl2ZSgic3RvcmVQaWN0dXJlP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBsb2cuZSgic3RvcmVQaWN0dXJlIGlzIG5vdCBzdXBwb3J0ZWQiKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnN1cHBvcnRzID0gZnVuY3Rpb24gKGZlYXR1cmUpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5zdXBwb3J0cyAiICsgZmVhdHVyZSArICIgIiArIHN1cHBvcnRlZEZlYXR1cmVzW2ZlYXR1cmVdKTsKICAgICAgICAgICAgICAgIHZhciByZXR2YWwgPSBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXTsKICAgICAgICAgICAgICAgIGlmICh0eXBlb2YgcmV0dmFsID09PSAidW5kZWZpbmVkIikgewogICAgICAgICAgICAgICAgICAgIHJldHZhbCA9IGZhbHNlOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgcmV0dXJuIHJldHZhbDsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnVzZUN1c3RvbUNsb3NlID0gZnVuY3Rpb24gKGlzQ3VzdG9tQ2xvc2UpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC51c2VDdXN0b21DbG9zZSAiICsgaXNDdXN0b21DbG9zZSk7CiAgICAgICAgICAgICAgICBpZiAoZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSAhPT0gaXNDdXN0b21DbG9zZSkgewogICAgICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UgPSBpc0N1c3RvbUNsb3NlOwogICAgICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoInVzZUN1c3RvbUNsb3NlP3VzZUN1c3RvbUNsb3NlPSIKICAgICAgICAgICAgICAgICAgICAgICAgKyBleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAgICAgICAgICogaGVscGVyIG1ldGhvZHMgY2FsbGVkIGJ5IFNESwogICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogICAgICAgICAgICAvLyBzZXR0ZXJzIHRvIGNoYW5nZSBzdGF0ZQogICAgICAgICAgICBtcmFpZC5zZXRDdXJyZW50UG9zaXRpb24gPSBmdW5jdGlvbiAoeCwgeSwgd2lkdGgsIGhlaWdodCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnNldEN1cnJlbnRQb3NpdGlvbiAiICsgeCArICIsIiArIHkgKyAiLCIgKyB3aWR0aCArICIsIiArIGhlaWdodCk7CgogICAgICAgICAgICAgICAgdmFyIHByZXZpb3VzU2l6ZSA9IHt9OwogICAgICAgICAgICAgICAgcHJldmlvdXNTaXplLndpZHRoID0gY3VycmVudFBvc2l0aW9uLndpZHRoOwogICAgICAgICAgICAgICAgcHJldmlvdXNTaXplLmhlaWdodCA9IGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQ7CiAgICAgICAgICAgICAgICBsb2cuaSgicHJldmlvdXNTaXplICIgKyBwcmV2aW91c1NpemUud2lkdGggKyAiLCIgKyBwcmV2aW91c1NpemUuaGVpZ2h0KTsKCiAgICAgICAgICAgICAgICBjdXJyZW50UG9zaXRpb24ueCA9IHg7CiAgICAgICAgICAgICAgICBjdXJyZW50UG9zaXRpb24ueSA9IHk7CiAgICAgICAgICAgICAgICBjdXJyZW50UG9zaXRpb24ud2lkdGggPSB3aWR0aDsKICAgICAgICAgICAgICAgIGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQgPSBoZWlnaHQ7CgogICAgICAgICAgICAgICAgaWYgKHdpZHRoICE9PSBwcmV2aW91c1NpemUud2lkdGggfHwgaGVpZ2h0ICE9PSBwcmV2aW91c1NpemUuaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZVNpemVDaGFuZ2VFdmVudCh3aWR0aCwgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldERlZmF1bHRQb3NpdGlvbiA9IGZ1bmN0aW9uICh4LCB5LCB3aWR0aCwgaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0RGVmYXVsdFBvc2l0aW9uICIgKyB4ICsgIiwiICsgeSArICIsIiArIHdpZHRoICsgIiwiICsgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIGRlZmF1bHRQb3NpdGlvbi54ID0geDsKICAgICAgICAgICAgICAgIGRlZmF1bHRQb3NpdGlvbi55ID0geTsKICAgICAgICAgICAgICAgIGRlZmF1bHRQb3NpdGlvbi53aWR0aCA9IHdpZHRoOwogICAgICAgICAgICAgICAgZGVmYXVsdFBvc2l0aW9uLmhlaWdodCA9IGhlaWdodDsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldEV4cGFuZFNpemUgPSBmdW5jdGlvbiAod2lkdGgsIGhlaWdodCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnNldEV4cGFuZFNpemUgIiArIHdpZHRoICsgIngiICsgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMud2lkdGggPSB3aWR0aDsKICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMuaGVpZ2h0ID0gaGVpZ2h0OwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuc2V0TWF4U2l6ZSA9IGZ1bmN0aW9uICh3aWR0aCwgaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0TWF4U2l6ZSAiICsgd2lkdGggKyAieCIgKyBoZWlnaHQpOwogICAgICAgICAgICAgICAgbWF4U2l6ZS53aWR0aCA9IHdpZHRoOwogICAgICAgICAgICAgICAgbWF4U2l6ZS5oZWlnaHQgPSBoZWlnaHQ7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zZXRQbGFjZW1lbnRUeXBlID0gZnVuY3Rpb24gKHB0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0UGxhY2VtZW50VHlwZSAiICsgcHQpOwogICAgICAgICAgICAgICAgcGxhY2VtZW50VHlwZSA9IHB0OwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuc2V0U2NyZWVuU2l6ZSA9IGZ1bmN0aW9uICh3aWR0aCwgaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0U2NyZWVuU2l6ZSAiICsgd2lkdGggKyAieCIgKyBoZWlnaHQpOwogICAgICAgICAgICAgICAgc2NyZWVuU2l6ZS53aWR0aCA9IHdpZHRoOwogICAgICAgICAgICAgICAgc2NyZWVuU2l6ZS5oZWlnaHQgPSBoZWlnaHQ7CiAgICAgICAgICAgICAgICB1cGRhdGVDcmVhdGl2ZVNpemUod2lkdGgsIGhlaWdodCk7CiAgICAgICAgICAgICAgICBpZiAoIWlzRXhwYW5kUHJvcGVydGllc1NldCkgewogICAgICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMud2lkdGggPSB3aWR0aDsKICAgICAgICAgICAgICAgICAgICBleHBhbmRQcm9wZXJ0aWVzLmhlaWdodCA9IGhlaWdodDsKICAgICAgICAgICAgICAgICAgICA7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zZXRTdXBwb3J0cyA9IGZ1bmN0aW9uIChmZWF0dXJlLCBzdXBwb3J0ZWQpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5zZXRTdXBwb3J0cyAiICsgZmVhdHVyZSArICIgIiArIHN1cHBvcnRlZCk7CiAgICAgICAgICAgICAgICBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXSA9IHN1cHBvcnRlZDsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIC8vIG1ldGhvZHMgdG8gZmlyZSBldmVudHMKCiAgICAgICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50ID0gZnVuY3Rpb24gKG1lc3NhZ2UsIGFjdGlvbikgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmZpcmVFcnJvckV2ZW50ICIgKyBtZXNzYWdlICsgIiAiICsgYWN0aW9uKTsKICAgICAgICAgICAgICAgIGZpcmVFdmVudChtcmFpZC5FVkVOVFMuRVJST1IsIG1lc3NhZ2UsIGFjdGlvbik7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5maXJlUmVhZHlFdmVudCA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5maXJlUmVhZHlFdmVudCIpOwogICAgICAgICAgICAgICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5SRUFEWSk7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKHdpZHRoLCBoZWlnaHQpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ICIgKyB3aWR0aCArICJ4IiArIGhlaWdodCk7CiAgICAgICAgICAgICAgICBpZiAoc3RhdGUgIT09IG1yYWlkLlNUQVRFUy5MT0FESU5HKSB7CiAgICAgICAgICAgICAgICAgICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5TSVpFQ0hBTkdFLCB3aWR0aCwgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmZpcmVTdGF0ZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKG5ld1N0YXRlKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZmlyZVN0YXRlQ2hhbmdlRXZlbnQgIiArIG5ld1N0YXRlKTsKICAgICAgICAgICAgICAgIGlmIChzdGF0ZSAhPT0gbmV3U3RhdGUpIHsKICAgICAgICAgICAgICAgICAgICBzdGF0ZSA9IG5ld1N0YXRlOwogICAgICAgICAgICAgICAgICAgIGZpcmVFdmVudChtcmFpZC5FVkVOVFMuU1RBVEVDSEFOR0UsIHN0YXRlKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKG5ld0lzVmlld2FibGUpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5maXJlVmlld2FibGVDaGFuZ2VFdmVudCAiICsgbmV3SXNWaWV3YWJsZSk7CiAgICAgICAgICAgICAgICBpZiAoaXNWaWV3YWJsZSAhPT0gbmV3SXNWaWV3YWJsZSkgewogICAgICAgICAgICAgICAgICAgIGlzVmlld2FibGUgPSBuZXdJc1ZpZXdhYmxlOwogICAgICAgICAgICAgICAgICAgIGZpcmVFdmVudChtcmFpZC5FVkVOVFMuVklFV0FCTEVDSEFOR0UsIGlzVmlld2FibGUpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgICAgICAgICAgKiBpbnRlcm5hbCBoZWxwZXIgbWV0aG9kcwogICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogICAgICAgICAgICBmdW5jdGlvbiBjYWxsTmF0aXZlKGNvbW1hbmQpIHsKICAgICAgICAgICAgICAgIHZhciBpZnJhbWUgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCJJRlJBTUUiKTsKICAgICAgICAgICAgICAgIGlmcmFtZS5zZXRBdHRyaWJ1dGUoInNyYyIsICJtcmFpZDovLyIgKyBjb21tYW5kKTsKICAgICAgICAgICAgICAgIGRvY3VtZW50LmRvY3VtZW50RWxlbWVudC5hcHBlbmRDaGlsZChpZnJhbWUpOwogICAgICAgICAgICAgICAgaWZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoaWZyYW1lKTsKICAgICAgICAgICAgICAgIGlmcmFtZSA9IG51bGw7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBmdW5jdGlvbiBmaXJlRXZlbnQoZXZlbnQpIHsKICAgICAgICAgICAgICAgIHZhciBhcmdzID0gQXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYXJndW1lbnRzKTsKICAgICAgICAgICAgICAgIGFyZ3Muc2hpZnQoKTsKICAgICAgICAgICAgICAgIGxvZy5pKCJmaXJlRXZlbnQgIiArIGV2ZW50ICsgIiBbIiArIGFyZ3MudG9TdHJpbmcoKSArICJdIik7CiAgICAgICAgICAgICAgICB2YXIgZXZlbnRMaXN0ZW5lcnMgPSAobGlzdGVuZXJzW2V2ZW50XSB8fCBbXSkuc2xpY2UoMCk7CiAgICAgICAgICAgICAgICBpZiAoZXZlbnRMaXN0ZW5lcnMpIHsKICAgICAgICAgICAgICAgICAgICBsb2cuaShldmVudExpc3RlbmVycy5sZW5ndGggKyAiIGxpc3RlbmVyKHMpIGZvdW5kIGZvciAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgZXZlbnRMaXN0ZW5lcnMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICAgICAgbG9nLmkoImZpcmluZyBsaXN0ZW5lciAiICsgaSArICIgZm9yICIgKyBldmVudCArICI6ICIgKyBldmVudExpc3RlbmVyc1tpXSk7CiAgICAgICAgICAgICAgICAgICAgICAgIGV2ZW50TGlzdGVuZXJzW2ldLmFwcGx5KG51bGwsIGFyZ3MpOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyBmb3VuZCIpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgZnVuY3Rpb24gY29udGFpbnModmFsdWUsIGFycmF5KSB7CiAgICAgICAgICAgICAgICBmb3IgKHZhciBpIGluIGFycmF5KSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKGFycmF5W2ldID09PSB2YWx1ZSkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICAvLyBUaGUgYWN0aW9uIHBhcmFtZXRlciBpcyBhIHN0cmluZyB3aGljaCBpcyB0aGUgbmFtZSBvZiB0aGUgc2V0dGVyIGZ1bmN0aW9uCiAgICAgICAgICAgIC8vIHdoaWNoIGNhbGxlZCB0aGlzIGZ1bmN0aW9uCiAgICAgICAgICAgIC8vIChpbiBvdGhlciB3b3Jkcywgc2V0RXhwYW5kUHJvcGV0aWVzLCBzZXRPcmllbnRhdGlvblByb3BlcnRpZXMsIG9yCiAgICAgICAgICAgIC8vIHNldFJlc2l6ZVByb3BlcnRpZXMpLgogICAgICAgICAgICAvLyBJdCBzZXJ2ZXMgYm90aCBhcyB0aGUga2V5IHRvIGdldCB0aGUgdGhlIGFwcHJvcHJpYXRlIHNldCBvZiB2YWxpZGF0aW5nCiAgICAgICAgICAgIC8vIGZ1bmN0aW9ucyBmcm9tIHRoZSBhbGxWYWxpZGF0b3JzIG9iamVjdAogICAgICAgICAgICAvLyBhcyB3ZWxsIGFzIHRoZSBhY3Rpb24gcGFyYW1ldGVyIG9mIGFueSBlcnJvciBldmVudCB0aGF0IG1heSBiZSB0aHJvd24uCiAgICAgICAgICAgIGZ1bmN0aW9uIHZhbGlkYXRlKHByb3BlcnRpZXMsIGFjdGlvbikgewogICAgICAgICAgICAgICAgdmFyIHJldHZhbCA9IHRydWU7CiAgICAgICAgICAgICAgICB2YXIgdmFsaWRhdG9ycyA9IGFsbFZhbGlkYXRvcnNbYWN0aW9uXTsKICAgICAgICAgICAgICAgIGZvciAodmFyIHByb3AgaW4gcHJvcGVydGllcykgewogICAgICAgICAgICAgICAgICAgIHZhciB2YWxpZGF0b3IgPSB2YWxpZGF0b3JzW3Byb3BdOwogICAgICAgICAgICAgICAgICAgIHZhciB2YWx1ZSA9IHByb3BlcnRpZXNbcHJvcF07CiAgICAgICAgICAgICAgICAgICAgaWYgKHZhbGlkYXRvciAmJiAhdmFsaWRhdG9yKHZhbHVlKSkgewogICAgICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiVmFsdWUgb2YgcHJvcGVydHkgIiArIHByb3AgKyAiICgiICsgdmFsdWUgKyAiKSBpcyBpbnZhbGlkIiwgIm1yYWlkLiIgKyBhY3Rpb24pOwogICAgICAgICAgICAgICAgICAgICAgICByZXR2YWwgPSBmYWxzZTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICByZXR1cm4gcmV0dmFsOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIGFsbFZhbGlkYXRvcnMgPSB7CiAgICAgICAgICAgICAgICAic2V0RXhwYW5kUHJvcGVydGllcyI6IHsKICAgICAgICAgICAgICAgICAgICAvLyBJbiBNUkFJRCAyLjAsIHRoZSBvbmx5IHByb3BlcnR5IGluIGV4cGFuZFByb3BlcnRpZXMgd2UgYWN0dWFsbHkgY2FyZSBhYm91dCBpcyB1c2VDdXN0b21DbG9zZS4KICAgICAgICAgICAgICAgICAgICAvLyBTdGlsbCwgd2UnbGwgZG8gYSBiYXNpYyBzYW5pdHkgY2hlY2sgb24gdGhlIHdpZHRoIGFuZCBoZWlnaHQgcHJvcGVydGllcywgdG9vLgogICAgICAgICAgICAgICAgICAgICJ3aWR0aCI6IGZ1bmN0aW9uICh3aWR0aCkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKHdpZHRoKTsKICAgICAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgICAgICJoZWlnaHQiOiBmdW5jdGlvbiAoaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAhaXNOYU4oaGVpZ2h0KTsKICAgICAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgICAgICJ1c2VDdXN0b21DbG9zZSI6IGZ1bmN0aW9uICh1c2VDdXN0b21DbG9zZSkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gKHR5cGVvZiB1c2VDdXN0b21DbG9zZSA9PT0gImJvb2xlYW4iKTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgInNldE9yaWVudGF0aW9uUHJvcGVydGllcyI6IHsKICAgICAgICAgICAgICAgICAgICAiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSI6IGZ1bmN0aW9uIChhbGxvd09yaWVudGF0aW9uQ2hhbmdlKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAodHlwZW9mIGFsbG93T3JpZW50YXRpb25DaGFuZ2UgPT09ICJib29sZWFuIik7CiAgICAgICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgICAgICAiZm9yY2VPcmllbnRhdGlvbiI6IGZ1bmN0aW9uIChmb3JjZU9yaWVudGF0aW9uKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHZhciB2YWxpZFZhbHVlcyA9IFsicG9ydHJhaXQiLCAibGFuZHNjYXBlIiwgIm5vbmUiXTsKICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuICh0eXBlb2YgZm9yY2VPcmllbnRhdGlvbiA9PT0gInN0cmluZyIgJiYgdmFsaWRWYWx1ZXMuaW5kZXhPZihmb3JjZU9yaWVudGF0aW9uKSAhPT0gLTEpOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAic2V0UmVzaXplUHJvcGVydGllcyI6IHsKICAgICAgICAgICAgICAgICAgICAid2lkdGgiOiBmdW5jdGlvbiAod2lkdGgpIHsKICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuICFpc05hTih3aWR0aCkgJiYgNTAgPD0gd2lkdGg7CiAgICAgICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgICAgICAiaGVpZ2h0IjogZnVuY3Rpb24gKGhlaWdodCkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKGhlaWdodCkgJiYgNTAgPD0gaGVpZ2h0OwogICAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICAgIm9mZnNldFgiOiBmdW5jdGlvbiAob2Zmc2V0WCkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKG9mZnNldFgpOwogICAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICAgIm9mZnNldFkiOiBmdW5jdGlvbiAob2Zmc2V0WSkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKG9mZnNldFkpOwogICAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICAgImN1c3RvbUNsb3NlUG9zaXRpb24iOiBmdW5jdGlvbiAoY3VzdG9tQ2xvc2VQb3NpdGlvbikgewogICAgICAgICAgICAgICAgICAgICAgICB2YXIgdmFsaWRQb3NpdGlvbnMgPSBbInRvcC1sZWZ0IiwgInRvcC1jZW50ZXIiLCAidG9wLXJpZ2h0IiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjZW50ZXIiLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgImJvdHRvbS1sZWZ0IiwgImJvdHRvbS1jZW50ZXIiLCAiYm90dG9tLXJpZ2h0Il07CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAodHlwZW9mIGN1c3RvbUNsb3NlUG9zaXRpb24gPT09ICJzdHJpbmciICYmIHZhbGlkUG9zaXRpb25zLmluZGV4T2YoY3VzdG9tQ2xvc2VQb3NpdGlvbikgIT09IC0xKTsKICAgICAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgICAgICJhbGxvd09mZnNjcmVlbiI6IGZ1bmN0aW9uIChhbGxvd09mZnNjcmVlbikgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gKHR5cGVvZiBhbGxvd09mZnNjcmVlbiA9PT0gImJvb2xlYW4iKTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBmdW5jdGlvbiBpc0Nsb3NlUmVnaW9uT25TY3JlZW4ocHJvcGVydGllcykgewogICAgICAgICAgICAgICAgbG9nLmQoImlzQ2xvc2VSZWdpb25PblNjcmVlbiIpOwogICAgICAgICAgICAgICAgbG9nLmQoImRlZmF1bHRQb3NpdGlvbiAiICsgZGVmYXVsdFBvc2l0aW9uLnggKyAiICIgKyBkZWZhdWx0UG9zaXRpb24ueSk7CiAgICAgICAgICAgICAgICBsb2cuZCgib2Zmc2V0ICIgKyBwcm9wZXJ0aWVzLm9mZnNldFggKyAiICIgKyBwcm9wZXJ0aWVzLm9mZnNldFkpOwoKICAgICAgICAgICAgICAgIHZhciByZXNpemVSZWN0ID0ge307CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LnggPSBkZWZhdWx0UG9zaXRpb24ueCArIHByb3BlcnRpZXMub2Zmc2V0WDsKICAgICAgICAgICAgICAgIHJlc2l6ZVJlY3QueSA9IGRlZmF1bHRQb3NpdGlvbi55ICsgcHJvcGVydGllcy5vZmZzZXRZOwogICAgICAgICAgICAgICAgcmVzaXplUmVjdC53aWR0aCA9IHByb3BlcnRpZXMud2lkdGg7CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LmhlaWdodCA9IHByb3BlcnRpZXMuaGVpZ2h0OwogICAgICAgICAgICAgICAgcHJpbnRSZWN0KCJyZXNpemVSZWN0IiwgcmVzaXplUmVjdCk7CgogICAgICAgICAgICAgICAgdmFyIGN1c3RvbUNsb3NlUG9zaXRpb24gPSBwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KCJjdXN0b21DbG9zZVBvc2l0aW9uIikgPwogICAgICAgICAgICAgICAgICAgIHByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlvbiA6IHJlc2l6ZVByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlvbjsKICAgICAgICAgICAgICAgIGxvZy5kKCJjdXN0b21DbG9zZVBvc2l0aW9uICIgKyBjdXN0b21DbG9zZVBvc2l0aW9uKTsKCiAgICAgICAgICAgICAgICB2YXIgY2xvc2VSZWN0ID0geyJ3aWR0aCI6IDUwLCAiaGVpZ2h0IjogNTB9OwoKICAgICAgICAgICAgICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgibGVmdCIpICE9PSAtMSkgewogICAgICAgICAgICAgICAgICAgIGNsb3NlUmVjdC54ID0gcmVzaXplUmVjdC54OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgiY2VudGVyIikgIT09IC0xKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnggPSByZXNpemVSZWN0LnggKyAocmVzaXplUmVjdC53aWR0aCAvIDIpIC0gMjU7CiAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKGN1c3RvbUNsb3NlUG9zaXRpb24uc2VhcmNoKCJyaWdodCIpICE9PSAtMSkgewogICAgICAgICAgICAgICAgICAgIGNsb3NlUmVjdC54ID0gcmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCAtIDUwOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgidG9wIikgIT09IC0xKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0Lnk7CiAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKGN1c3RvbUNsb3NlUG9zaXRpb24gPT09ICJjZW50ZXIiKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0LnkgKyAocmVzaXplUmVjdC5oZWlnaHQgLyAyKSAtIDI1OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgiYm90dG9tIikgIT09IC0xKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCAtIDUwOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciBtYXhSZWN0ID0geyJ4IjogMCwgInkiOiAwfTsKICAgICAgICAgICAgICAgIG1heFJlY3Qud2lkdGggPSBtYXhTaXplLndpZHRoOwogICAgICAgICAgICAgICAgbWF4UmVjdC5oZWlnaHQgPSBtYXhTaXplLmhlaWdodDsKCiAgICAgICAgICAgICAgICByZXR1cm4gaXNSZWN0Q29udGFpbmVkKG1heFJlY3QsIGNsb3NlUmVjdCk7CiAgICAgICAgICAgIH0KCiAgICAgICAgICAgIGZ1bmN0aW9uIGZpdFJlc2l6ZVZpZXdPblNjcmVlbihwcm9wZXJ0aWVzKSB7CiAgICAgICAgICAgICAgICBsb2cuZCgiZml0UmVzaXplVmlld09uU2NyZWVuIik7CiAgICAgICAgICAgICAgICBsb2cuZCgiZGVmYXVsdFBvc2l0aW9uICIgKyBkZWZhdWx0UG9zaXRpb24ueCArICIgIiArIGRlZmF1bHRQb3NpdGlvbi55KTsKICAgICAgICAgICAgICAgIGxvZy5kKCJvZmZzZXQgIiArIHByb3BlcnRpZXMub2Zmc2V0WCArICIgIiArIHByb3BlcnRpZXMub2Zmc2V0WSk7CgogICAgICAgICAgICAgICAgdmFyIHJlc2l6ZVJlY3QgPSB7fTsKICAgICAgICAgICAgICAgIHJlc2l6ZVJlY3QueCA9IGRlZmF1bHRQb3NpdGlvbi54ICsgcHJvcGVydGllcy5vZmZzZXRYOwogICAgICAgICAgICAgICAgcmVzaXplUmVjdC55ID0gZGVmYXVsdFBvc2l0aW9uLnkgKyBwcm9wZXJ0aWVzLm9mZnNldFk7CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LndpZHRoID0gcHJvcGVydGllcy53aWR0aDsKICAgICAgICAgICAgICAgIHJlc2l6ZVJlY3QuaGVpZ2h0ID0gcHJvcGVydGllcy5oZWlnaHQ7CiAgICAgICAgICAgICAgICBwcmludFJlY3QoInJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsKCiAgICAgICAgICAgICAgICB2YXIgbWF4UmVjdCA9IHsieCI6IDAsICJ5IjogMH07CiAgICAgICAgICAgICAgICBtYXhSZWN0LndpZHRoID0gbWF4U2l6ZS53aWR0aDsKICAgICAgICAgICAgICAgIG1heFJlY3QuaGVpZ2h0ID0gbWF4U2l6ZS5oZWlnaHQ7CgogICAgICAgICAgICAgICAgdmFyIGFkanVzdG1lbnRzID0geyJ4IjogMCwgInkiOiAwfTsKCiAgICAgICAgICAgICAgICBpZiAoaXNSZWN0Q29udGFpbmVkKG1heFJlY3QsIHJlc2l6ZVJlY3QpKSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmQoIm5vIGFkanVzdG1lbnQgbmVjZXNzYXJ5Iik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGFkanVzdG1lbnRzOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGlmIChyZXNpemVSZWN0LnggPCBtYXhSZWN0LngpIHsKICAgICAgICAgICAgICAgICAgICBhZGp1c3RtZW50cy54ID0gbWF4UmVjdC54IC0gcmVzaXplUmVjdC54OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmICgocmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCkgPiAobWF4UmVjdC54ICsgbWF4UmVjdC53aWR0aCkpIHsKICAgICAgICAgICAgICAgICAgICBhZGp1c3RtZW50cy54ID0gKG1heFJlY3QueCArIG1heFJlY3Qud2lkdGgpIC0gKHJlc2l6ZVJlY3QueCArIHJlc2l6ZVJlY3Qud2lkdGgpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgbG9nLmQoImFkanVzdG1lbnRzLnggIiArIGFkanVzdG1lbnRzLngpOwoKICAgICAgICAgICAgICAgIGlmIChyZXNpemVSZWN0LnkgPCBtYXhSZWN0LnkpIHsKICAgICAgICAgICAgICAgICAgICBhZGp1c3RtZW50cy55ID0gbWF4UmVjdC55IC0gcmVzaXplUmVjdC55OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmICgocmVzaXplUmVjdC55ICsgcmVzaXplUmVjdC5oZWlnaHQpID4gKG1heFJlY3QueSArIG1heFJlY3QuaGVpZ2h0KSkgewogICAgICAgICAgICAgICAgICAgIGFkanVzdG1lbnRzLnkgPSAobWF4UmVjdC55ICsgbWF4UmVjdC5oZWlnaHQpIC0gKHJlc2l6ZVJlY3QueSArIHJlc2l6ZVJlY3QuaGVpZ2h0KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGxvZy5kKCJhZGp1c3RtZW50cy55ICIgKyBhZGp1c3RtZW50cy55KTsKCiAgICAgICAgICAgICAgICByZXNpemVSZWN0LnggPSBkZWZhdWx0UG9zaXRpb24ueCArIHByb3BlcnRpZXMub2Zmc2V0WCArIGFkanVzdG1lbnRzLng7CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LnkgPSBkZWZhdWx0UG9zaXRpb24ueSArIHByb3BlcnRpZXMub2Zmc2V0WSArIGFkanVzdG1lbnRzLnk7CiAgICAgICAgICAgICAgICBwcmludFJlY3QoImFkanVzdGVkIHJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsKCiAgICAgICAgICAgICAgICByZXR1cm4gYWRqdXN0bWVudHM7CiAgICAgICAgICAgIH0KCiAgICAgICAgICAgIGZ1bmN0aW9uIGlzUmVjdENvbnRhaW5lZChjb250YWluaW5nUmVjdCwgY29udGFpbmVkUmVjdCkgewogICAgICAgICAgICAgICAgbG9nLmQoImlzUmVjdENvbnRhaW5lZCIpOwogICAgICAgICAgICAgICAgcHJpbnRSZWN0KCJjb250YWluaW5nUmVjdCIsIGNvbnRhaW5pbmdSZWN0KTsKICAgICAgICAgICAgICAgIHByaW50UmVjdCgiY29udGFpbmVkUmVjdCIsIGNvbnRhaW5lZFJlY3QpOwogICAgICAgICAgICAgICAgcmV0dXJuIChjb250YWluZWRSZWN0LnggPj0gY29udGFpbmluZ1JlY3QueCAmJgogICAgICAgICAgICAgICAgICAgIChjb250YWluZWRSZWN0LnggKyBjb250YWluZWRSZWN0LndpZHRoKSA8PSAoY29udGFpbmluZ1JlY3QueCArIGNvbnRhaW5pbmdSZWN0LndpZHRoKSAmJgogICAgICAgICAgICAgICAgICAgIGNvbnRhaW5lZFJlY3QueSA+PSBjb250YWluaW5nUmVjdC55ICYmCiAgICAgICAgICAgICAgICAgICAgKGNvbnRhaW5lZFJlY3QueSArIGNvbnRhaW5lZFJlY3QuaGVpZ2h0KSA8PSAoY29udGFpbmluZ1JlY3QueSArIGNvbnRhaW5pbmdSZWN0LmhlaWdodCkpOwogICAgICAgICAgICB9CgogICAgICAgICAgICBmdW5jdGlvbiBwcmludFJlY3QobGFiZWwsIHJlY3QpIHsKICAgICAgICAgICAgICAgIGxvZy5kKGxhYmVsICsKICAgICAgICAgICAgICAgICAgICAiIFsiICsgcmVjdC54ICsgIiwiICsgcmVjdC55ICsgIl0iICsKICAgICAgICAgICAgICAgICAgICAiLFsiICsgKHJlY3QueCArIHJlY3Qud2lkdGgpICsgIiwiICsgKHJlY3QueSArIHJlY3QuaGVpZ2h0KSArICJdIiArCiAgICAgICAgICAgICAgICAgICAgIiAoIiArIHJlY3Qud2lkdGggKyAieCIgKyByZWN0LmhlaWdodCArICIpIik7CiAgICAgICAgICAgIH0KCiAgICAgICAgICAgIG1yYWlkLmR1bXBMaXN0ZW5lcnMgPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICB2YXIgbkV2ZW50cyA9IE9iamVjdC5rZXlzKGxpc3RlbmVycykubGVuZ3RoOwogICAgICAgICAgICAgICAgbG9nLmkoImR1bXBpbmcgbGlzdGVuZXJzICgiICsgbkV2ZW50cyArICIgZXZlbnRzKSIpOwogICAgICAgICAgICAgICAgZm9yICh2YXIgZXZlbnQgaW4gbGlzdGVuZXJzKSB7CiAgICAgICAgICAgICAgICAgICAgdmFyIGV2ZW50TGlzdGVuZXJzID0gbGlzdGVuZXJzW2V2ZW50XTsKICAgICAgICAgICAgICAgICAgICBsb2cuaSgiICAiICsgZXZlbnQgKyAiIGNvbnRhaW5zICIgKyBldmVudExpc3RlbmVycy5sZW5ndGggKyAiIGxpc3RlbmVycyIpOwogICAgICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgZXZlbnRMaXN0ZW5lcnMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICAgICAgbG9nLmkoIiAgICAiICsgZXZlbnRMaXN0ZW5lcnNbaV0pOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIGNvbnNvbGUubG9nKCJNUkFJRCBvYmplY3QgbG9hZGVkIik7CgogICAgICAgIH0pKCk7"

    .line 1263
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1264
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    .line 1266
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static getOrientationString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "PORTRAIT"

    return-object p0

    :cond_1
    const-string p0, "LANDSCAPE"

    return-object p0

    :cond_2
    const-string p0, "UNSPECIFIED"

    return-object p0
.end method

.method private getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 888
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    .line 889
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 890
    aget-object v1, p1, v1

    const-string v2, "android_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    .line 893
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/4 v4, 0x4

    aget-object p1, p1, v4

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 896
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p1, :cond_0

    .line 899
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 900
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 903
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error fetching file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    .line 908
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Unknown location to fetch file content"

    .line 910
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method private getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "file:///"

    .line 848
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 855
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 856
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 857
    sget-object v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v3, "response code "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getContentLength "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x5dc

    :try_start_1
    new-array v2, v2, [B

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 865
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 866
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    sget-object v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringFromUrl ok, length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_2
    move-object v1, v0

    .line 871
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 877
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 873
    :goto_3
    :try_start_4
    sget-object v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringFromUrl failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_2

    :catch_3
    :cond_3
    :goto_4
    return-object v1

    :goto_5
    if-eqz v0, :cond_4

    .line 877
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 881
    :catch_4
    :cond_4
    throw p1
.end method

.method private static getVisibilityString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0

    :cond_2
    const-string p0, "VISIBLE"

    return-object p0
.end method

.method private initSkipTime()V
    .locals 2

    .line 1950
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->getInterstitialSkipOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 1952
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mSkipTimeMillis:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    if-lez v0, :cond_0

    .line 1953
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mSkipTimeMillis:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method private static injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1276
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "evaluating js: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    new-instance v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$11;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$11;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 1285
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascript:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private injectJavaScript(Ljava/lang/String;)V
    .locals 1

    .line 1270
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private injectMraidJs(Landroid/webkit/WebView;)V
    .locals 1

    .line 1252
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "Ly8KICAgICAgICAvLyAgbXJhaWQuanMKICAgICAgICAvLwoKICAgICAgICAoZnVuY3Rpb24gKCkgewoKICAgICAgICAgICAgY29uc29sZS5sb2coIk1SQUlEIG9iamVjdCBsb2FkaW5nLi4uIik7CgogICAgICAgICAgICAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAgICAgICAgICAqIGNvbnNvbGUgbG9nZ2luZyBoZWxwZXIKICAgICAgICAgICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgICAgICAgICAgdmFyIExvZ0xldmVsRW51bSA9IHsKICAgICAgICAgICAgICAgICJERUJVRyI6IDAsCiAgICAgICAgICAgICAgICAiSU5GTyI6IDEsCiAgICAgICAgICAgICAgICAiV0FSTklORyI6IDIsCiAgICAgICAgICAgICAgICAiRVJST1IiOiAzLAogICAgICAgICAgICAgICAgIk5PTkUiOiA0CiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgbG9nTGV2ZWwgPSBMb2dMZXZlbEVudW0uREVCVUc7CiAgICAgICAgICAgIHZhciBsb2cgPSB7fTsKCiAgICAgICAgICAgIGxvZy5kID0gZnVuY3Rpb24gKG1zZykgewogICAgICAgICAgICAgICAgaWYgKGxvZ0xldmVsIDw9IExvZ0xldmVsRW51bS5ERUJVRykgewogICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCIoRC1tcmFpZC5qcykgIiArIG1zZyk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBsb2cuaSA9IGZ1bmN0aW9uIChtc2cpIHsKICAgICAgICAgICAgICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uSU5GTykgewogICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCIoSS1tcmFpZC5qcykgIiArIG1zZyk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBsb2cudyA9IGZ1bmN0aW9uIChtc2cpIHsKICAgICAgICAgICAgICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uV0FSTklORykgewogICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCIoVy1tcmFpZC5qcykgIiArIG1zZyk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBsb2cuZSA9IGZ1bmN0aW9uIChtc2cpIHsKICAgICAgICAgICAgICAgIGlmIChsb2dMZXZlbCA8PSBMb2dMZXZlbEVudW0uRVJST1IpIHsKICAgICAgICAgICAgICAgICAgICBjb25zb2xlLmxvZygiKEUtbXJhaWQuanMpICIgKyBtc2cpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgICAgICAgICAgKiBNUkFJRCBkZWNsYXJhdGlvbgogICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogICAgICAgICAgICB2YXIgbXJhaWQgPSB3aW5kb3cubXJhaWQgPSB7fTsKCiAgICAgICAgICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAgICAgICAgICogY29uc3RhbnRzCiAgICAgICAgICAgICAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KCiAgICAgICAgICAgIHZhciBWRVJTSU9OID0gIjIuMCI7CgogICAgICAgICAgICB2YXIgU1RBVEVTID0gbXJhaWQuU1RBVEVTID0gewogICAgICAgICAgICAgICAgIkxPQURJTkciOiAibG9hZGluZyIsCiAgICAgICAgICAgICAgICAiREVGQVVMVCI6ICJkZWZhdWx0IiwKICAgICAgICAgICAgICAgICJFWFBBTkRFRCI6ICJleHBhbmRlZCIsCiAgICAgICAgICAgICAgICAiUkVTSVpFRCI6ICJyZXNpemVkIiwKICAgICAgICAgICAgICAgICJISURERU4iOiAiaGlkZGVuIgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIFBMQUNFTUVOVF9UWVBFUyA9IG1yYWlkLlBMQUNFTUVOVF9UWVBFUyA9IHsKICAgICAgICAgICAgICAgICJJTkxJTkUiOiAiaW5saW5lIiwKICAgICAgICAgICAgICAgICJJTlRFUlNUSVRJQUwiOiAiaW50ZXJzdGl0aWFsIgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIFJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTiA9IG1yYWlkLlJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTiA9IHsKICAgICAgICAgICAgICAgICJUT1BfTEVGVCI6ICJ0b3AtbGVmdCIsCiAgICAgICAgICAgICAgICAiVE9QX0NFTlRFUiI6ICJ0b3AtY2VudGVyIiwKICAgICAgICAgICAgICAgICJUT1BfUklHSFQiOiAidG9wLXJpZ2h0IiwKICAgICAgICAgICAgICAgICJDRU5URVIiOiAiY2VudGVyIiwKICAgICAgICAgICAgICAgICJCT1RUT01fTEVGVCI6ICJib3R0b20tbGVmdCIsCiAgICAgICAgICAgICAgICAiQk9UVE9NX0NFTlRFUiI6ICJib3R0b20tY2VudGVyIiwKICAgICAgICAgICAgICAgICJCT1RUT01fUklHSFQiOiAiYm90dG9tLXJpZ2h0IgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIE9SSUVOVEFUSU9OX1BST1BFUlRJRVNfRk9SQ0VfT1JJRU5UQVRJT04gPSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OID0gewogICAgICAgICAgICAgICAgIlBPUlRSQUlUIjogInBvcnRyYWl0IiwKICAgICAgICAgICAgICAgICJMQU5EU0NBUEUiOiAibGFuZHNjYXBlIiwKICAgICAgICAgICAgICAgICJOT05FIjogIm5vbmUiCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgRVZFTlRTID0gbXJhaWQuRVZFTlRTID0gewogICAgICAgICAgICAgICAgIkVSUk9SIjogImVycm9yIiwKICAgICAgICAgICAgICAgICJSRUFEWSI6ICJyZWFkeSIsCiAgICAgICAgICAgICAgICAiU0laRUNIQU5HRSI6ICJzaXplQ2hhbmdlIiwKICAgICAgICAgICAgICAgICJTVEFURUNIQU5HRSI6ICJzdGF0ZUNoYW5nZSIsCiAgICAgICAgICAgICAgICAiVklFV0FCTEVDSEFOR0UiOiAidmlld2FibGVDaGFuZ2UiCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgU1VQUE9SVEVEX0ZFQVRVUkVTID0gbXJhaWQuU1VQUE9SVEVEX0ZFQVRVUkVTID0gewogICAgICAgICAgICAgICAgIlNNUyI6ICJzbXMiLAogICAgICAgICAgICAgICAgIlRFTCI6ICJ0ZWwiLAogICAgICAgICAgICAgICAgIkNBTEVOREFSIjogImNhbGVuZGFyIiwKICAgICAgICAgICAgICAgICJTVE9SRVBJQ1RVUkUiOiAic3RvcmVQaWN0dXJlIiwKICAgICAgICAgICAgICAgICJJTkxJTkVWSURFTyI6ICJpbmxpbmVWaWRlbyIKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAgICAgICAgICogc3RhdGUKICAgICAgICAgICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgICAgICAgICAgdmFyIHN0YXRlID0gU1RBVEVTLkxPQURJTkc7CiAgICAgICAgICAgIHZhciBwbGFjZW1lbnRUeXBlID0gUExBQ0VNRU5UX1RZUEVTLklOTElORTsKICAgICAgICAgICAgdmFyIHN1cHBvcnRlZEZlYXR1cmVzID0ge307CiAgICAgICAgICAgIHZhciBpc1ZpZXdhYmxlID0gZmFsc2U7CiAgICAgICAgICAgIHZhciBpc0V4cGFuZFByb3BlcnRpZXNTZXQgPSBmYWxzZTsKICAgICAgICAgICAgdmFyIGlzUmVzaXplUmVhZHkgPSBmYWxzZTsKCiAgICAgICAgICAgIHZhciBleHBhbmRQcm9wZXJ0aWVzID0gewogICAgICAgICAgICAgICAgIndpZHRoIjogMCwKICAgICAgICAgICAgICAgICJoZWlnaHQiOiAwLAogICAgICAgICAgICAgICAgInVzZUN1c3RvbUNsb3NlIjogZmFsc2UsCiAgICAgICAgICAgICAgICAiaXNNb2RhbCI6IHRydWUKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIHZhciBvcmllbnRhdGlvblByb3BlcnRpZXMgPSB7CiAgICAgICAgICAgICAgICAiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSI6IHRydWUsCiAgICAgICAgICAgICAgICAiZm9yY2VPcmllbnRhdGlvbiI6IE9SSUVOVEFUSU9OX1BST1BFUlRJRVNfRk9SQ0VfT1JJRU5UQVRJT04uTk9ORQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIHJlc2l6ZVByb3BlcnRpZXMgPSB7CiAgICAgICAgICAgICAgICAid2lkdGgiOiAwLAogICAgICAgICAgICAgICAgImhlaWdodCI6IDAsCiAgICAgICAgICAgICAgICAiY3VzdG9tQ2xvc2VQb3NpdGlvbiI6IFJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTi5UT1BfUklHSFQsCiAgICAgICAgICAgICAgICAib2Zmc2V0WCI6IDAsCiAgICAgICAgICAgICAgICAib2Zmc2V0WSI6IDAsCiAgICAgICAgICAgICAgICAiYWxsb3dPZmZzY3JlZW4iOiB0cnVlCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgY3VycmVudFBvc2l0aW9uID0gewogICAgICAgICAgICAgICAgIngiOiAwLAogICAgICAgICAgICAgICAgInkiOiAwLAogICAgICAgICAgICAgICAgIndpZHRoIjogMCwKICAgICAgICAgICAgICAgICJoZWlnaHQiOiAwCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgZGVmYXVsdFBvc2l0aW9uID0gewogICAgICAgICAgICAgICAgIngiOiAwLAogICAgICAgICAgICAgICAgInkiOiAwLAogICAgICAgICAgICAgICAgIndpZHRoIjogMCwKICAgICAgICAgICAgICAgICJoZWlnaHQiOiAwCiAgICAgICAgICAgIH07CgogICAgICAgICAgICB2YXIgbWF4U2l6ZSA9IHsKICAgICAgICAgICAgICAgICJ3aWR0aCI6IDAsCiAgICAgICAgICAgICAgICAiaGVpZ2h0IjogMAogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIHNjcmVlblNpemUgPSB7CiAgICAgICAgICAgICAgICAid2lkdGgiOiAwLAogICAgICAgICAgICAgICAgImhlaWdodCI6IDAKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIHZhciBjdXJyZW50T3JpZW50YXRpb24gPSAwOwoKICAgICAgICAgICAgdmFyIGxpc3RlbmVycyA9IHt9OwogICAgICAgICAgICB3aW5kb3cubGlzdGVuZXJzID0gbGlzdGVuZXJzOwoKICAgICAgICAgICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgICAgICAgICAgKiAib2ZmaWNpYWwiIEFQSTogbWV0aG9kcyBjYWxsZWQgYnkgY3JlYXRpdmUKICAgICAgICAgICAgICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKICAgICAgICAgICAgbXJhaWQuYWRkRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uIChldmVudCwgbGlzdGVuZXIpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5hZGRFdmVudExpc3RlbmVyICIgKyBldmVudCArICI6ICIgKyBTdHJpbmcobGlzdGVuZXIpKTsKICAgICAgICAgICAgICAgIGlmICghZXZlbnQgfHwgIWxpc3RlbmVyKSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIkJvdGggZXZlbnQgYW5kIGxpc3RlbmVyIGFyZSByZXF1aXJlZC4iLCAiYWRkRXZlbnRMaXN0ZW5lciIpOwogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmICghY29udGFpbnMoZXZlbnQsIEVWRU5UUykpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiVW5rbm93biBNUkFJRCBldmVudDogIiArIGV2ZW50LCAiYWRkRXZlbnRMaXN0ZW5lciIpOwogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIHZhciBsaXN0ZW5lcnNGb3JFdmVudCA9IGxpc3RlbmVyc1tldmVudF0gPSBsaXN0ZW5lcnNbZXZlbnRdIHx8IFtdOwogICAgICAgICAgICAgICAgLy8gY2hlY2sgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIGxpc3RlbmVyIGlzbid0IGFscmVhZHkgcmVnaXN0ZXJlZAogICAgICAgICAgICAgICAgZm9yICh2YXIgaSA9IDA7IGkgPCBsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGg7IGkrKykgewogICAgICAgICAgICAgICAgICAgIHZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsKICAgICAgICAgICAgICAgICAgICB2YXIgc3RyMiA9IFN0cmluZyhsaXN0ZW5lcnNGb3JFdmVudFtpXSk7CiAgICAgICAgICAgICAgICAgICAgaWYgKGxpc3RlbmVyID09PSBsaXN0ZW5lcnNGb3JFdmVudFtpXSB8fCBzdHIxID09PSBzdHIyKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGxvZy5pKCJsaXN0ZW5lciAiICsgc3RyMSArICIgaXMgYWxyZWFkeSByZWdpc3RlcmVkIGZvciBldmVudCAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgbGlzdGVuZXJzRm9yRXZlbnQucHVzaChsaXN0ZW5lcik7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5jcmVhdGVDYWxlbmRhckV2ZW50ID0gZnVuY3Rpb24gKHBhcmFtZXRlcnMpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5jcmVhdGVDYWxlbmRhckV2ZW50IHdpdGggIiArIHBhcmFtZXRlcnMpOwogICAgICAgICAgICAgICAgaWYgKHN1cHBvcnRlZEZlYXR1cmVzW21yYWlkLlNVUFBPUlRFRF9GRUFUVVJFUy5DQUxFTkRBUl0pIHsKICAgICAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJjcmVhdGVDYWxlbmRhckV2ZW50P2V2ZW50SlNPTj0iICsgSlNPTi5zdHJpbmdpZnkocGFyYW1ldGVycykpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBsb2cuZSgiY3JlYXRlQ2FsZW5kYXJFdmVudCBpcyBub3Qgc3VwcG9ydGVkIik7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5jbG9zZSA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5jbG9zZSIpOwogICAgICAgICAgICAgICAgaWYgKHN0YXRlID09PSBTVEFURVMuTE9BRElORwogICAgICAgICAgICAgICAgICAgIHx8IChzdGF0ZSA9PT0gU1RBVEVTLkRFRkFVTFQgJiYgcGxhY2VtZW50VHlwZSA9PT0gUExBQ0VNRU5UX1RZUEVTLklOTElORSkKICAgICAgICAgICAgICAgICAgICB8fCBzdGF0ZSA9PT0gU1RBVEVTLkhJRERFTikgewogICAgICAgICAgICAgICAgICAgIC8vIGRvIG5vdGhpbmcKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJjbG9zZSIpOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZXhwYW5kID0gZnVuY3Rpb24gKHVybCkgewogICAgICAgICAgICAgICAgaWYgKHVybCA9PT0gdW5kZWZpbmVkKSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmV4cGFuZCAoMS1wYXJ0KSIpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZXhwYW5kICIgKyB1cmwpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgLy8gVGhlIG9ubHkgdGltZSBpdCBpcyB2YWxpZCB0byBjYWxsIGV4cGFuZCBpcyB3aGVuIHRoZSBhZCBpcwogICAgICAgICAgICAgICAgLy8gYSBiYW5uZXIgY3VycmVudGx5IGluIGVpdGhlciBkZWZhdWx0IG9yIHJlc2l6ZWQgc3RhdGUuCiAgICAgICAgICAgICAgICBpZiAocGxhY2VtZW50VHlwZSAhPT0gUExBQ0VNRU5UX1RZUEVTLklOTElORQogICAgICAgICAgICAgICAgICAgIHx8IChzdGF0ZSAhPT0gU1RBVEVTLkRFRkFVTFQgJiYgc3RhdGUgIT09IFNUQVRFUy5SRVNJWkVEKSkgewogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmICh1cmwgPT09IHVuZGVmaW5lZCkgewogICAgICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoImV4cGFuZCIpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJleHBhbmQ/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRDdXJyZW50UG9zaXRpb24gPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZ2V0Q3VycmVudFBvc2l0aW9uIik7CiAgICAgICAgICAgICAgICByZXR1cm4gY3VycmVudFBvc2l0aW9uOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZ2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldERlZmF1bHRQb3NpdGlvbiIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGRlZmF1bHRQb3NpdGlvbjsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmdldEV4cGFuZFByb3BlcnRpZXMgPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZ2V0RXhwYW5kUHJvcGVydGllcyIpOwogICAgICAgICAgICAgICAgcmV0dXJuIGV4cGFuZFByb3BlcnRpZXM7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRNYXhTaXplID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldE1heFNpemUiKTsKICAgICAgICAgICAgICAgIHJldHVybiBtYXhTaXplOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZ2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldE9yaWVudGF0aW9uUHJvcGVydGllcyIpOwogICAgICAgICAgICAgICAgcmV0dXJuIG9yaWVudGF0aW9uUHJvcGVydGllczsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmdldFBsYWNlbWVudFR5cGUgPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZ2V0UGxhY2VtZW50VHlwZSIpOwogICAgICAgICAgICAgICAgcmV0dXJuIHBsYWNlbWVudFR5cGU7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRSZXNpemVQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldFJlc2l6ZVByb3BlcnRpZXMiKTsKICAgICAgICAgICAgICAgIHJldHVybiByZXNpemVQcm9wZXJ0aWVzOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuZ2V0U2NyZWVuU2l6ZSA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5nZXRTY3JlZW5TaXplIik7CiAgICAgICAgICAgICAgICByZXR1cm4gc2NyZWVuU2l6ZTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmdldFN0YXRlID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldFN0YXRlIik7CiAgICAgICAgICAgICAgICByZXR1cm4gc3RhdGU7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5nZXRWZXJzaW9uID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmdldFZlcnNpb24iKTsKICAgICAgICAgICAgICAgIHJldHVybiBWRVJTSU9OOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuaXNWaWV3YWJsZSA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5pc1ZpZXdhYmxlIik7CiAgICAgICAgICAgICAgICByZXR1cm4gaXNWaWV3YWJsZTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLm9wZW4gPSBmdW5jdGlvbiAodXJsKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQub3BlbiAiICsgdXJsKTsKICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoIm9wZW4/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5wbGF5VmlkZW8gPSBmdW5jdGlvbiAodXJsKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQucGxheVZpZGVvICIgKyB1cmwpOwogICAgICAgICAgICAgICAgY2FsbE5hdGl2ZSgicGxheVZpZGVvP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQucmVtb3ZlRXZlbnRMaXN0ZW5lciA9IGZ1bmN0aW9uIChldmVudCwgbGlzdGVuZXIpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5yZW1vdmVFdmVudExpc3RlbmVyICIgKyBldmVudCArICIgOiAiICsgU3RyaW5nKGxpc3RlbmVyKSk7CiAgICAgICAgICAgICAgICBpZiAoIWV2ZW50KSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIkV2ZW50IGlzIHJlcXVpcmVkLiIsICJyZW1vdmVFdmVudExpc3RlbmVyIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgaWYgKCFjb250YWlucyhldmVudCwgRVZFTlRTKSkgewogICAgICAgICAgICAgICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50KCJVbmtub3duIE1SQUlEIGV2ZW50OiAiICsgZXZlbnQsICJyZW1vdmVFdmVudExpc3RlbmVyIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgaWYgKGxpc3RlbmVycy5oYXNPd25Qcm9wZXJ0eShldmVudCkpIHsKICAgICAgICAgICAgICAgICAgICBpZiAobGlzdGVuZXIpIHsKICAgICAgICAgICAgICAgICAgICAgICAgdmFyIGxpc3RlbmVyc0ZvckV2ZW50ID0gbGlzdGVuZXJzW2V2ZW50XTsKICAgICAgICAgICAgICAgICAgICAgICAgLy8gdHJ5IHRvIGZpbmQgdGhlIGdpdmVuIGxpc3RlbmVyCiAgICAgICAgICAgICAgICAgICAgICAgIHZhciBsZW4gPSBsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGg7CiAgICAgICAgICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgbGVuOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciByZWdpc3RlcmVkTGlzdGVuZXIgPSBsaXN0ZW5lcnNGb3JFdmVudFtpXTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBzdHIxID0gU3RyaW5nKGxpc3RlbmVyKTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhciBzdHIyID0gU3RyaW5nKHJlZ2lzdGVyZWRMaXN0ZW5lcik7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAobGlzdGVuZXIgPT09IHJlZ2lzdGVyZWRMaXN0ZW5lciB8fCBzdHIxID09PSBzdHIyKSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGlzdGVuZXJzRm9yRXZlbnQuc3BsaWNlKGksIDEpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChpID09PSBsZW4pIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvZy5pKCJsaXN0ZW5lciAiICsgc3RyMSArICIgbm90IGZvdW5kIGZvciBldmVudCAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChsaXN0ZW5lcnNGb3JFdmVudC5sZW5ndGggPT09IDApIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICAgICAgLy8gbm8gbGlzdGVuZXIgdG8gcmVtb3ZlIHdhcyBwcm92aWRlZCwgc28gcmVtb3ZlIGFsbCBsaXN0ZW5lcnMKICAgICAgICAgICAgICAgICAgICAgICAgLy8gZm9yIGdpdmVuIGV2ZW50CiAgICAgICAgICAgICAgICAgICAgICAgIGRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyByZWdpc3RlcmVkIGZvciBldmVudCAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQucmVzaXplID0gZnVuY3Rpb24gKCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnJlc2l6ZSIpOwogICAgICAgICAgICAgICAgLy8gVGhlIG9ubHkgdGltZSBpdCBpcyB2YWxpZCB0byBjYWxsIHJlc2l6ZSBpcyB3aGVuIHRoZSBhZCBpcwogICAgICAgICAgICAgICAgLy8gYSBiYW5uZXIgY3VycmVudGx5IGluIGVpdGhlciBkZWZhdWx0IG9yIHJlc2l6ZWQgc3RhdGUuCiAgICAgICAgICAgICAgICAvLyBUcmlnZ2VyIGFuIGVycm9yIGlmIHRoZSBjdXJyZW50IHN0YXRlIGlzIGV4cGFuZGVkLgogICAgICAgICAgICAgICAgaWYgKHBsYWNlbWVudFR5cGUgPT09IFBMQUNFTUVOVF9UWVBFUy5JTlRFUlNUSVRJQUwgfHwgc3RhdGUgPT09IFNUQVRFUy5MT0FESU5HIHx8IHN0YXRlID09PSBTVEFURVMuSElEREVOKSB7CiAgICAgICAgICAgICAgICAgICAgLy8gZG8gbm90aGluZwogICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmIChzdGF0ZSA9PT0gU1RBVEVTLkVYUEFOREVEKSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoIm1yYWlkLnJlc2l6ZSBjYWxsZWQgd2hlbiBhZCBpcyBpbiBleHBhbmRlZCBzdGF0ZSIsICJtcmFpZC5yZXNpemUiKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICBpZiAoIWlzUmVzaXplUmVhZHkpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgibXJhaWQucmVzaXplIGlzIG5vdCByZWFkeSB0byBiZSBjYWxsZWQiLCAibXJhaWQucmVzaXplIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgY2FsbE5hdGl2ZSgicmVzaXplIik7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzID0gZnVuY3Rpb24gKHByb3BlcnRpZXMpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzIik7CgogICAgICAgICAgICAgICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0RXhwYW5kUHJvcGVydGllcyIpKSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmUoImZhaWxlZCB2YWxpZGF0aW9uIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciBvbGRVc2VDdXN0b21DbG9zZSA9IGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2U7CgogICAgICAgICAgICAgICAgLy8gZXhwYW5kUHJvcGVydGllcyBjb250YWlucyAzIHJlYWQtd3JpdGUgcHJvcGVydGllczogd2lkdGgsIGhlaWdodCwgYW5kIHVzZUN1c3RvbUNsb3NlOwogICAgICAgICAgICAgICAgLy8gdGhlIGlzTW9kYWwgcHJvcGVydHkgaXMgcmVhZC1vbmx5CiAgICAgICAgICAgICAgICB2YXIgcndQcm9wcyA9IFsid2lkdGgiLCAiaGVpZ2h0IiwgInVzZUN1c3RvbUNsb3NlIl07CiAgICAgICAgICAgICAgICBmb3IgKHZhciBpID0gMDsgaSA8IHJ3UHJvcHMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICB2YXIgcHJvcG5hbWUgPSByd1Byb3BzW2ldOwogICAgICAgICAgICAgICAgICAgIGlmIChwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KHByb3BuYW1lKSkgewogICAgICAgICAgICAgICAgICAgICAgICBleHBhbmRQcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3BlcnRpZXNbcHJvcG5hbWVdOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICAvLyBJbiBNUkFJRCB2Mi4wLCBhbGwgZXhwYW5kZWQgYWRzIGJ5IGRlZmluaXRpb24gY292ZXIgdGhlIGVudGlyZSBzY3JlZW4sCiAgICAgICAgICAgICAgICAvLyBzbyB0aGUgb25seSBwcm9wZXJ0eSB0aGF0IHRoZSBuYXRpdmUgc2lkZSBoYXMgdG8ga25vdyBhYm91dCBpcyB1c2VDdXN0b21DbG9zZS4KICAgICAgICAgICAgICAgIC8vIChUaGF0IGlzLCB0aGUgd2lkdGggYW5kIGhlaWdodCBwcm9wZXJ0aWVzIGFyZSBub3QgbmVlZGVkIGJ5IHRoZSBuYXRpdmUgY29kZS4pCiAgICAgICAgICAgICAgICBpZiAoZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSAhPT0gb2xkVXNlQ3VzdG9tQ2xvc2UpIHsKICAgICAgICAgICAgICAgICAgICBjYWxsTmF0aXZlKCJ1c2VDdXN0b21DbG9zZT91c2VDdXN0b21DbG9zZT0iICsgZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSk7CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgaXNFeHBhbmRQcm9wZXJ0aWVzU2V0ID0gdHJ1ZTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldE9yaWVudGF0aW9uUHJvcGVydGllcyA9IGZ1bmN0aW9uIChwcm9wZXJ0aWVzKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7CgogICAgICAgICAgICAgICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIikpIHsKICAgICAgICAgICAgICAgICAgICBsb2cuZSgiZmFpbGVkIHZhbGlkYXRpb24iKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgdmFyIG5ld09yaWVudGF0aW9uUHJvcGVydGllcyA9IHt9OwogICAgICAgICAgICAgICAgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UgPSBvcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSwKICAgICAgICAgICAgICAgICAgICBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRhdGlvbiA9IG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uOwoKICAgICAgICAgICAgICAgIC8vIG9yaWVudGF0aW9uUHJvcGVydGllcyBjb250YWlucyAyIHJlYWQtd3JpdGUgcHJvcGVydGllczoKICAgICAgICAgICAgICAgIC8vIGFsbG93T3JpZW50YXRpb25DaGFuZ2UgYW5kIGZvcmNlT3JpZW50YXRpb24KICAgICAgICAgICAgICAgIHZhciByd1Byb3BzID0gWyJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiwgImZvcmNlT3JpZW50YXRpb24iXTsKICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgewogICAgICAgICAgICAgICAgICAgIHZhciBwcm9wbmFtZSA9IHJ3UHJvcHNbaV07CiAgICAgICAgICAgICAgICAgICAgaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIG5ld09yaWVudGF0aW9uUHJvcGVydGllc1twcm9wbmFtZV0gPSBwcm9wZXJ0aWVzW3Byb3BuYW1lXTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgLy8gU2V0dGluZyBhbGxvd09yaWVudGF0aW9uQ2hhbmdlIHRvIHRydWUgd2hpbGUgc2V0dGluZyBmb3JjZU9yaWVudGF0aW9uCiAgICAgICAgICAgICAgICAvLyB0byBlaXRoZXIgcG9ydHJhaXQgb3IgbGFuZHNjYXBlCiAgICAgICAgICAgICAgICAvLyBpcyBjb25zaWRlcmVkIGFuIGVycm9yIGNvbmRpdGlvbi4KICAgICAgICAgICAgICAgIGlmIChuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZQogICAgICAgICAgICAgICAgICAgICYmIG5ld09yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uICE9PSBtcmFpZC5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5PTkUpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgKICAgICAgICAgICAgICAgICAgICAgICAgImFsbG93T3JpZW50YXRpb25DaGFuZ2UgaXMgdHJ1ZSBidXQgZm9yY2VPcmllbnRhdGlvbiBpcyAiCiAgICAgICAgICAgICAgICAgICAgICAgICsgbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb24sCiAgICAgICAgICAgICAgICAgICAgICAgICJzZXRPcmllbnRhdGlvblByb3BlcnRpZXMiKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgb3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UgPSBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZTsKICAgICAgICAgICAgICAgIG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uID0gbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb247CgogICAgICAgICAgICAgICAgdmFyIHBhcmFtcyA9ICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlPSIKICAgICAgICAgICAgICAgICAgICArIG9yaWVudGF0aW9uUHJvcGVydGllcy5hbGxvd09yaWVudGF0aW9uQ2hhbmdlCiAgICAgICAgICAgICAgICAgICAgKyAiJmZvcmNlT3JpZW50YXRpb249IiArIG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uOwoKICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoInNldE9yaWVudGF0aW9uUHJvcGVydGllcz8iICsgcGFyYW1zKTsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMgPSBmdW5jdGlvbiAocHJvcGVydGllcykgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsKCiAgICAgICAgICAgICAgICBpc1Jlc2l6ZVJlYWR5ID0gZmFsc2U7CgogICAgICAgICAgICAgICAgLy8gcmVzaXplUHJvcGVydGllcyBjb250YWlucyA2IHJlYWQtd3JpdGUgcHJvcGVydGllczoKICAgICAgICAgICAgICAgIC8vIHdpZHRoLCBoZWlnaHQsIG9mZnNldFgsIG9mZnNldFksIGN1c3RvbUNsb3NlUG9zaXRpb24sIGFsbG93T2Zmc2NyZWVuCgogICAgICAgICAgICAgICAgLy8gVGhlIHByb3BlcnRpZXMgb2JqZWN0IHBhc3NlZCBpbnRvIHRoaXMgZnVuY3Rpb24gbXVzdCBjb250YWluIHdpZHRoLCBoZWlnaHQsIG9mZnNldFgsIG9mZnNldFkuCiAgICAgICAgICAgICAgICAvLyBUaGUgcmVtYWluaW5nIHR3byBwcm9wZXJ0aWVzIGFyZSBvcHRpb25hbC4KICAgICAgICAgICAgICAgIHZhciByZXF1aXJlZFByb3BzID0gWyJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJvZmZzZXRZIl07CiAgICAgICAgICAgICAgICBmb3IgKHZhciBpID0gMDsgaSA8IHJlcXVpcmVkUHJvcHMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICB2YXIgcHJvcG5hbWUgPSByZXF1aXJlZFByb3BzW2ldOwogICAgICAgICAgICAgICAgICAgIGlmICghcHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eShwcm9wbmFtZSkpIHsKICAgICAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAicmVxdWlyZWQgcHJvcGVydHkgIiArIHByb3BuYW1lICsgIiBpcyBtaXNzaW5nIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgaWYgKCF2YWxpZGF0ZShwcm9wZXJ0aWVzLCAic2V0UmVzaXplUHJvcGVydGllcyIpKSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoImZhaWxlZCB2YWxpZGF0aW9uIiwgIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsKICAgICAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgdmFyIGFkanVzdG1lbnRzID0geyJ4IjogMCwgInkiOiAwfTsKCiAgICAgICAgICAgICAgICB2YXIgYWxsb3dPZmZzY3JlZW4gPSBwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KCJhbGxvd09mZnNjcmVlbiIpID8gcHJvcGVydGllcy5hbGxvd09mZnNjcmVlbiA6IHJlc2l6ZVByb3BlcnRpZXMuYWxsb3dPZmZzY3JlZW47CiAgICAgICAgICAgICAgICBpZiAoIWFsbG93T2Zmc2NyZWVuKSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKHByb3BlcnRpZXMud2lkdGggPiBtYXhTaXplLndpZHRoIHx8IHByb3BlcnRpZXMuaGVpZ2h0ID4gbWF4U2l6ZS5oZWlnaHQpIHsKICAgICAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZUVycm9yRXZlbnQoInJlc2l6ZSB3aWR0aCBvciBoZWlnaHQgaXMgZ3JlYXRlciB0aGFuIHRoZSBtYXhTaXplIHdpZHRoIG9yIGhlaWdodCIsICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgYWRqdXN0bWVudHMgPSBmaXRSZXNpemVWaWV3T25TY3JlZW4ocHJvcGVydGllcyk7CiAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKCFpc0Nsb3NlUmVnaW9uT25TY3JlZW4ocHJvcGVydGllcykpIHsKICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiY2xvc2UgZXZlbnQgcmVnaW9uIHdpbGwgbm90IGFwcGVhciBlbnRpcmVseSBvbnNjcmVlbiIsICJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciByd1Byb3BzID0gWyJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJvZmZzZXRZIiwgImN1c3RvbUNsb3NlUG9zaXRpb24iLCAiYWxsb3dPZmZzY3JlZW4iXTsKICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgewogICAgICAgICAgICAgICAgICAgIHZhciBwcm9wbmFtZSA9IHJ3UHJvcHNbaV07CiAgICAgICAgICAgICAgICAgICAgaWYgKHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJlc2l6ZVByb3BlcnRpZXNbcHJvcG5hbWVdID0gcHJvcGVydGllc1twcm9wbmFtZV07CiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciBwYXJhbXMgPQogICAgICAgICAgICAgICAgICAgICJ3aWR0aD0iICsgcmVzaXplUHJvcGVydGllcy53aWR0aCArCiAgICAgICAgICAgICAgICAgICAgIiZoZWlnaHQ9IiArIHJlc2l6ZVByb3BlcnRpZXMuaGVpZ2h0ICsKICAgICAgICAgICAgICAgICAgICAiJm9mZnNldFg9IiArIChyZXNpemVQcm9wZXJ0aWVzLm9mZnNldFggKyBhZGp1c3RtZW50cy54KSArCiAgICAgICAgICAgICAgICAgICAgIiZvZmZzZXRZPSIgKyAocmVzaXplUHJvcGVydGllcy5vZmZzZXRZICsgYWRqdXN0bWVudHMueSkgKwogICAgICAgICAgICAgICAgICAgICImY3VzdG9tQ2xvc2VQb3NpdGlvbj0iICsgcmVzaXplUHJvcGVydGllcy5jdXN0b21DbG9zZVBvc2l0aW9uICsKICAgICAgICAgICAgICAgICAgICAiJmFsbG93T2Zmc2NyZWVuPSIgKyByZXNpemVQcm9wZXJ0aWVzLmFsbG93T2Zmc2NyZWVuOwoKICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoInNldFJlc2l6ZVByb3BlcnRpZXM/IiArIHBhcmFtcyk7CgogICAgICAgICAgICAgICAgaXNSZXNpemVSZWFkeSA9IHRydWU7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zdG9yZVBpY3R1cmUgPSBmdW5jdGlvbiAodXJsKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc3RvcmVQaWN0dXJlICIgKyB1cmwpOwogICAgICAgICAgICAgICAgaWYgKHN1cHBvcnRlZEZlYXR1cmVzW21yYWlkLlNVUFBPUlRFRF9GRUFUVVJFUy5TVE9SRVBJQ1RVUkVdKSB7CiAgICAgICAgICAgICAgICAgICAgY2FsbE5hdGl2ZSgic3RvcmVQaWN0dXJlP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOwogICAgICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgICAgICBsb2cuZSgic3RvcmVQaWN0dXJlIGlzIG5vdCBzdXBwb3J0ZWQiKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnN1cHBvcnRzID0gZnVuY3Rpb24gKGZlYXR1cmUpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5zdXBwb3J0cyAiICsgZmVhdHVyZSArICIgIiArIHN1cHBvcnRlZEZlYXR1cmVzW2ZlYXR1cmVdKTsKICAgICAgICAgICAgICAgIHZhciByZXR2YWwgPSBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXTsKICAgICAgICAgICAgICAgIGlmICh0eXBlb2YgcmV0dmFsID09PSAidW5kZWZpbmVkIikgewogICAgICAgICAgICAgICAgICAgIHJldHZhbCA9IGZhbHNlOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgcmV0dXJuIHJldHZhbDsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnVzZUN1c3RvbUNsb3NlID0gZnVuY3Rpb24gKGlzQ3VzdG9tQ2xvc2UpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC51c2VDdXN0b21DbG9zZSAiICsgaXNDdXN0b21DbG9zZSk7CiAgICAgICAgICAgICAgICBpZiAoZXhwYW5kUHJvcGVydGllcy51c2VDdXN0b21DbG9zZSAhPT0gaXNDdXN0b21DbG9zZSkgewogICAgICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMudXNlQ3VzdG9tQ2xvc2UgPSBpc0N1c3RvbUNsb3NlOwogICAgICAgICAgICAgICAgICAgIGNhbGxOYXRpdmUoInVzZUN1c3RvbUNsb3NlP3VzZUN1c3RvbUNsb3NlPSIKICAgICAgICAgICAgICAgICAgICAgICAgKyBleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAgICAgICAgICAgICogaGVscGVyIG1ldGhvZHMgY2FsbGVkIGJ5IFNESwogICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogICAgICAgICAgICAvLyBzZXR0ZXJzIHRvIGNoYW5nZSBzdGF0ZQogICAgICAgICAgICBtcmFpZC5zZXRDdXJyZW50UG9zaXRpb24gPSBmdW5jdGlvbiAoeCwgeSwgd2lkdGgsIGhlaWdodCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnNldEN1cnJlbnRQb3NpdGlvbiAiICsgeCArICIsIiArIHkgKyAiLCIgKyB3aWR0aCArICIsIiArIGhlaWdodCk7CgogICAgICAgICAgICAgICAgdmFyIHByZXZpb3VzU2l6ZSA9IHt9OwogICAgICAgICAgICAgICAgcHJldmlvdXNTaXplLndpZHRoID0gY3VycmVudFBvc2l0aW9uLndpZHRoOwogICAgICAgICAgICAgICAgcHJldmlvdXNTaXplLmhlaWdodCA9IGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQ7CiAgICAgICAgICAgICAgICBsb2cuaSgicHJldmlvdXNTaXplICIgKyBwcmV2aW91c1NpemUud2lkdGggKyAiLCIgKyBwcmV2aW91c1NpemUuaGVpZ2h0KTsKCiAgICAgICAgICAgICAgICBjdXJyZW50UG9zaXRpb24ueCA9IHg7CiAgICAgICAgICAgICAgICBjdXJyZW50UG9zaXRpb24ueSA9IHk7CiAgICAgICAgICAgICAgICBjdXJyZW50UG9zaXRpb24ud2lkdGggPSB3aWR0aDsKICAgICAgICAgICAgICAgIGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQgPSBoZWlnaHQ7CgogICAgICAgICAgICAgICAgaWYgKHdpZHRoICE9PSBwcmV2aW91c1NpemUud2lkdGggfHwgaGVpZ2h0ICE9PSBwcmV2aW91c1NpemUuaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICAgICAgbXJhaWQuZmlyZVNpemVDaGFuZ2VFdmVudCh3aWR0aCwgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldERlZmF1bHRQb3NpdGlvbiA9IGZ1bmN0aW9uICh4LCB5LCB3aWR0aCwgaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0RGVmYXVsdFBvc2l0aW9uICIgKyB4ICsgIiwiICsgeSArICIsIiArIHdpZHRoICsgIiwiICsgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIGRlZmF1bHRQb3NpdGlvbi54ID0geDsKICAgICAgICAgICAgICAgIGRlZmF1bHRQb3NpdGlvbi55ID0geTsKICAgICAgICAgICAgICAgIGRlZmF1bHRQb3NpdGlvbi53aWR0aCA9IHdpZHRoOwogICAgICAgICAgICAgICAgZGVmYXVsdFBvc2l0aW9uLmhlaWdodCA9IGhlaWdodDsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLnNldEV4cGFuZFNpemUgPSBmdW5jdGlvbiAod2lkdGgsIGhlaWdodCkgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLnNldEV4cGFuZFNpemUgIiArIHdpZHRoICsgIngiICsgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMud2lkdGggPSB3aWR0aDsKICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMuaGVpZ2h0ID0gaGVpZ2h0OwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuc2V0TWF4U2l6ZSA9IGZ1bmN0aW9uICh3aWR0aCwgaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0TWF4U2l6ZSAiICsgd2lkdGggKyAieCIgKyBoZWlnaHQpOwogICAgICAgICAgICAgICAgbWF4U2l6ZS53aWR0aCA9IHdpZHRoOwogICAgICAgICAgICAgICAgbWF4U2l6ZS5oZWlnaHQgPSBoZWlnaHQ7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zZXRQbGFjZW1lbnRUeXBlID0gZnVuY3Rpb24gKHB0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0UGxhY2VtZW50VHlwZSAiICsgcHQpOwogICAgICAgICAgICAgICAgcGxhY2VtZW50VHlwZSA9IHB0OwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgbXJhaWQuc2V0U2NyZWVuU2l6ZSA9IGZ1bmN0aW9uICh3aWR0aCwgaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuc2V0U2NyZWVuU2l6ZSAiICsgd2lkdGggKyAieCIgKyBoZWlnaHQpOwogICAgICAgICAgICAgICAgc2NyZWVuU2l6ZS53aWR0aCA9IHdpZHRoOwogICAgICAgICAgICAgICAgc2NyZWVuU2l6ZS5oZWlnaHQgPSBoZWlnaHQ7CiAgICAgICAgICAgICAgICB1cGRhdGVDcmVhdGl2ZVNpemUod2lkdGgsIGhlaWdodCk7CiAgICAgICAgICAgICAgICBpZiAoIWlzRXhwYW5kUHJvcGVydGllc1NldCkgewogICAgICAgICAgICAgICAgICAgIGV4cGFuZFByb3BlcnRpZXMud2lkdGggPSB3aWR0aDsKICAgICAgICAgICAgICAgICAgICBleHBhbmRQcm9wZXJ0aWVzLmhlaWdodCA9IGhlaWdodDsKICAgICAgICAgICAgICAgICAgICA7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5zZXRTdXBwb3J0cyA9IGZ1bmN0aW9uIChmZWF0dXJlLCBzdXBwb3J0ZWQpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5zZXRTdXBwb3J0cyAiICsgZmVhdHVyZSArICIgIiArIHN1cHBvcnRlZCk7CiAgICAgICAgICAgICAgICBzdXBwb3J0ZWRGZWF0dXJlc1tmZWF0dXJlXSA9IHN1cHBvcnRlZDsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIC8vIG1ldGhvZHMgdG8gZmlyZSBldmVudHMKCiAgICAgICAgICAgIG1yYWlkLmZpcmVFcnJvckV2ZW50ID0gZnVuY3Rpb24gKG1lc3NhZ2UsIGFjdGlvbikgewogICAgICAgICAgICAgICAgbG9nLmkoIm1yYWlkLmZpcmVFcnJvckV2ZW50ICIgKyBtZXNzYWdlICsgIiAiICsgYWN0aW9uKTsKICAgICAgICAgICAgICAgIGZpcmVFdmVudChtcmFpZC5FVkVOVFMuRVJST1IsIG1lc3NhZ2UsIGFjdGlvbik7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5maXJlUmVhZHlFdmVudCA9IGZ1bmN0aW9uICgpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5maXJlUmVhZHlFdmVudCIpOwogICAgICAgICAgICAgICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5SRUFEWSk7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKHdpZHRoLCBoZWlnaHQpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ICIgKyB3aWR0aCArICJ4IiArIGhlaWdodCk7CiAgICAgICAgICAgICAgICBpZiAoc3RhdGUgIT09IG1yYWlkLlNUQVRFUy5MT0FESU5HKSB7CiAgICAgICAgICAgICAgICAgICAgZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5TSVpFQ0hBTkdFLCB3aWR0aCwgaGVpZ2h0KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmZpcmVTdGF0ZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKG5ld1N0YXRlKSB7CiAgICAgICAgICAgICAgICBsb2cuaSgibXJhaWQuZmlyZVN0YXRlQ2hhbmdlRXZlbnQgIiArIG5ld1N0YXRlKTsKICAgICAgICAgICAgICAgIGlmIChzdGF0ZSAhPT0gbmV3U3RhdGUpIHsKICAgICAgICAgICAgICAgICAgICBzdGF0ZSA9IG5ld1N0YXRlOwogICAgICAgICAgICAgICAgICAgIGZpcmVFdmVudChtcmFpZC5FVkVOVFMuU1RBVEVDSEFOR0UsIHN0YXRlKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIG1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ID0gZnVuY3Rpb24gKG5ld0lzVmlld2FibGUpIHsKICAgICAgICAgICAgICAgIGxvZy5pKCJtcmFpZC5maXJlVmlld2FibGVDaGFuZ2VFdmVudCAiICsgbmV3SXNWaWV3YWJsZSk7CiAgICAgICAgICAgICAgICBpZiAoaXNWaWV3YWJsZSAhPT0gbmV3SXNWaWV3YWJsZSkgewogICAgICAgICAgICAgICAgICAgIGlzVmlld2FibGUgPSBuZXdJc1ZpZXdhYmxlOwogICAgICAgICAgICAgICAgICAgIGZpcmVFdmVudChtcmFpZC5FVkVOVFMuVklFV0FCTEVDSEFOR0UsIGlzVmlld2FibGUpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICAgICAgICAgICAgKiBpbnRlcm5hbCBoZWxwZXIgbWV0aG9kcwogICAgICAgICAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgogICAgICAgICAgICBmdW5jdGlvbiBjYWxsTmF0aXZlKGNvbW1hbmQpIHsKICAgICAgICAgICAgICAgIHZhciBpZnJhbWUgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCJJRlJBTUUiKTsKICAgICAgICAgICAgICAgIGlmcmFtZS5zZXRBdHRyaWJ1dGUoInNyYyIsICJtcmFpZDovLyIgKyBjb21tYW5kKTsKICAgICAgICAgICAgICAgIGRvY3VtZW50LmRvY3VtZW50RWxlbWVudC5hcHBlbmRDaGlsZChpZnJhbWUpOwogICAgICAgICAgICAgICAgaWZyYW1lLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoaWZyYW1lKTsKICAgICAgICAgICAgICAgIGlmcmFtZSA9IG51bGw7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBmdW5jdGlvbiBmaXJlRXZlbnQoZXZlbnQpIHsKICAgICAgICAgICAgICAgIHZhciBhcmdzID0gQXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYXJndW1lbnRzKTsKICAgICAgICAgICAgICAgIGFyZ3Muc2hpZnQoKTsKICAgICAgICAgICAgICAgIGxvZy5pKCJmaXJlRXZlbnQgIiArIGV2ZW50ICsgIiBbIiArIGFyZ3MudG9TdHJpbmcoKSArICJdIik7CiAgICAgICAgICAgICAgICB2YXIgZXZlbnRMaXN0ZW5lcnMgPSAobGlzdGVuZXJzW2V2ZW50XSB8fCBbXSkuc2xpY2UoMCk7CiAgICAgICAgICAgICAgICBpZiAoZXZlbnRMaXN0ZW5lcnMpIHsKICAgICAgICAgICAgICAgICAgICBsb2cuaShldmVudExpc3RlbmVycy5sZW5ndGggKyAiIGxpc3RlbmVyKHMpIGZvdW5kIGZvciAiICsgZXZlbnQpOwogICAgICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgZXZlbnRMaXN0ZW5lcnMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICAgICAgbG9nLmkoImZpcmluZyBsaXN0ZW5lciAiICsgaSArICIgZm9yICIgKyBldmVudCArICI6ICIgKyBldmVudExpc3RlbmVyc1tpXSk7CiAgICAgICAgICAgICAgICAgICAgICAgIGV2ZW50TGlzdGVuZXJzW2ldLmFwcGx5KG51bGwsIGFyZ3MpOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmkoIm5vIGxpc3RlbmVycyBmb3VuZCIpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICB9OwoKICAgICAgICAgICAgZnVuY3Rpb24gY29udGFpbnModmFsdWUsIGFycmF5KSB7CiAgICAgICAgICAgICAgICBmb3IgKHZhciBpIGluIGFycmF5KSB7CiAgICAgICAgICAgICAgICAgICAgaWYgKGFycmF5W2ldID09PSB2YWx1ZSkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgICAgIH07CgogICAgICAgICAgICAvLyBUaGUgYWN0aW9uIHBhcmFtZXRlciBpcyBhIHN0cmluZyB3aGljaCBpcyB0aGUgbmFtZSBvZiB0aGUgc2V0dGVyIGZ1bmN0aW9uCiAgICAgICAgICAgIC8vIHdoaWNoIGNhbGxlZCB0aGlzIGZ1bmN0aW9uCiAgICAgICAgICAgIC8vIChpbiBvdGhlciB3b3Jkcywgc2V0RXhwYW5kUHJvcGV0aWVzLCBzZXRPcmllbnRhdGlvblByb3BlcnRpZXMsIG9yCiAgICAgICAgICAgIC8vIHNldFJlc2l6ZVByb3BlcnRpZXMpLgogICAgICAgICAgICAvLyBJdCBzZXJ2ZXMgYm90aCBhcyB0aGUga2V5IHRvIGdldCB0aGUgdGhlIGFwcHJvcHJpYXRlIHNldCBvZiB2YWxpZGF0aW5nCiAgICAgICAgICAgIC8vIGZ1bmN0aW9ucyBmcm9tIHRoZSBhbGxWYWxpZGF0b3JzIG9iamVjdAogICAgICAgICAgICAvLyBhcyB3ZWxsIGFzIHRoZSBhY3Rpb24gcGFyYW1ldGVyIG9mIGFueSBlcnJvciBldmVudCB0aGF0IG1heSBiZSB0aHJvd24uCiAgICAgICAgICAgIGZ1bmN0aW9uIHZhbGlkYXRlKHByb3BlcnRpZXMsIGFjdGlvbikgewogICAgICAgICAgICAgICAgdmFyIHJldHZhbCA9IHRydWU7CiAgICAgICAgICAgICAgICB2YXIgdmFsaWRhdG9ycyA9IGFsbFZhbGlkYXRvcnNbYWN0aW9uXTsKICAgICAgICAgICAgICAgIGZvciAodmFyIHByb3AgaW4gcHJvcGVydGllcykgewogICAgICAgICAgICAgICAgICAgIHZhciB2YWxpZGF0b3IgPSB2YWxpZGF0b3JzW3Byb3BdOwogICAgICAgICAgICAgICAgICAgIHZhciB2YWx1ZSA9IHByb3BlcnRpZXNbcHJvcF07CiAgICAgICAgICAgICAgICAgICAgaWYgKHZhbGlkYXRvciAmJiAhdmFsaWRhdG9yKHZhbHVlKSkgewogICAgICAgICAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgiVmFsdWUgb2YgcHJvcGVydHkgIiArIHByb3AgKyAiICgiICsgdmFsdWUgKyAiKSBpcyBpbnZhbGlkIiwgIm1yYWlkLiIgKyBhY3Rpb24pOwogICAgICAgICAgICAgICAgICAgICAgICByZXR2YWwgPSBmYWxzZTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICByZXR1cm4gcmV0dmFsOwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgdmFyIGFsbFZhbGlkYXRvcnMgPSB7CiAgICAgICAgICAgICAgICAic2V0RXhwYW5kUHJvcGVydGllcyI6IHsKICAgICAgICAgICAgICAgICAgICAvLyBJbiBNUkFJRCAyLjAsIHRoZSBvbmx5IHByb3BlcnR5IGluIGV4cGFuZFByb3BlcnRpZXMgd2UgYWN0dWFsbHkgY2FyZSBhYm91dCBpcyB1c2VDdXN0b21DbG9zZS4KICAgICAgICAgICAgICAgICAgICAvLyBTdGlsbCwgd2UnbGwgZG8gYSBiYXNpYyBzYW5pdHkgY2hlY2sgb24gdGhlIHdpZHRoIGFuZCBoZWlnaHQgcHJvcGVydGllcywgdG9vLgogICAgICAgICAgICAgICAgICAgICJ3aWR0aCI6IGZ1bmN0aW9uICh3aWR0aCkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKHdpZHRoKTsKICAgICAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgICAgICJoZWlnaHQiOiBmdW5jdGlvbiAoaGVpZ2h0KSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAhaXNOYU4oaGVpZ2h0KTsKICAgICAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgICAgICJ1c2VDdXN0b21DbG9zZSI6IGZ1bmN0aW9uICh1c2VDdXN0b21DbG9zZSkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gKHR5cGVvZiB1c2VDdXN0b21DbG9zZSA9PT0gImJvb2xlYW4iKTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgInNldE9yaWVudGF0aW9uUHJvcGVydGllcyI6IHsKICAgICAgICAgICAgICAgICAgICAiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSI6IGZ1bmN0aW9uIChhbGxvd09yaWVudGF0aW9uQ2hhbmdlKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAodHlwZW9mIGFsbG93T3JpZW50YXRpb25DaGFuZ2UgPT09ICJib29sZWFuIik7CiAgICAgICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgICAgICAiZm9yY2VPcmllbnRhdGlvbiI6IGZ1bmN0aW9uIChmb3JjZU9yaWVudGF0aW9uKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIHZhciB2YWxpZFZhbHVlcyA9IFsicG9ydHJhaXQiLCAibGFuZHNjYXBlIiwgIm5vbmUiXTsKICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuICh0eXBlb2YgZm9yY2VPcmllbnRhdGlvbiA9PT0gInN0cmluZyIgJiYgdmFsaWRWYWx1ZXMuaW5kZXhPZihmb3JjZU9yaWVudGF0aW9uKSAhPT0gLTEpOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAic2V0UmVzaXplUHJvcGVydGllcyI6IHsKICAgICAgICAgICAgICAgICAgICAid2lkdGgiOiBmdW5jdGlvbiAod2lkdGgpIHsKICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuICFpc05hTih3aWR0aCkgJiYgNTAgPD0gd2lkdGg7CiAgICAgICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgICAgICAiaGVpZ2h0IjogZnVuY3Rpb24gKGhlaWdodCkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKGhlaWdodCkgJiYgNTAgPD0gaGVpZ2h0OwogICAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICAgIm9mZnNldFgiOiBmdW5jdGlvbiAob2Zmc2V0WCkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKG9mZnNldFgpOwogICAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICAgIm9mZnNldFkiOiBmdW5jdGlvbiAob2Zmc2V0WSkgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gIWlzTmFOKG9mZnNldFkpOwogICAgICAgICAgICAgICAgICAgIH0sCiAgICAgICAgICAgICAgICAgICAgImN1c3RvbUNsb3NlUG9zaXRpb24iOiBmdW5jdGlvbiAoY3VzdG9tQ2xvc2VQb3NpdGlvbikgewogICAgICAgICAgICAgICAgICAgICAgICB2YXIgdmFsaWRQb3NpdGlvbnMgPSBbInRvcC1sZWZ0IiwgInRvcC1jZW50ZXIiLCAidG9wLXJpZ2h0IiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjZW50ZXIiLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgImJvdHRvbS1sZWZ0IiwgImJvdHRvbS1jZW50ZXIiLCAiYm90dG9tLXJpZ2h0Il07CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAodHlwZW9mIGN1c3RvbUNsb3NlUG9zaXRpb24gPT09ICJzdHJpbmciICYmIHZhbGlkUG9zaXRpb25zLmluZGV4T2YoY3VzdG9tQ2xvc2VQb3NpdGlvbikgIT09IC0xKTsKICAgICAgICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAgICAgICJhbGxvd09mZnNjcmVlbiI6IGZ1bmN0aW9uIChhbGxvd09mZnNjcmVlbikgewogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gKHR5cGVvZiBhbGxvd09mZnNjcmVlbiA9PT0gImJvb2xlYW4iKTsKICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH07CgogICAgICAgICAgICBmdW5jdGlvbiBpc0Nsb3NlUmVnaW9uT25TY3JlZW4ocHJvcGVydGllcykgewogICAgICAgICAgICAgICAgbG9nLmQoImlzQ2xvc2VSZWdpb25PblNjcmVlbiIpOwogICAgICAgICAgICAgICAgbG9nLmQoImRlZmF1bHRQb3NpdGlvbiAiICsgZGVmYXVsdFBvc2l0aW9uLnggKyAiICIgKyBkZWZhdWx0UG9zaXRpb24ueSk7CiAgICAgICAgICAgICAgICBsb2cuZCgib2Zmc2V0ICIgKyBwcm9wZXJ0aWVzLm9mZnNldFggKyAiICIgKyBwcm9wZXJ0aWVzLm9mZnNldFkpOwoKICAgICAgICAgICAgICAgIHZhciByZXNpemVSZWN0ID0ge307CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LnggPSBkZWZhdWx0UG9zaXRpb24ueCArIHByb3BlcnRpZXMub2Zmc2V0WDsKICAgICAgICAgICAgICAgIHJlc2l6ZVJlY3QueSA9IGRlZmF1bHRQb3NpdGlvbi55ICsgcHJvcGVydGllcy5vZmZzZXRZOwogICAgICAgICAgICAgICAgcmVzaXplUmVjdC53aWR0aCA9IHByb3BlcnRpZXMud2lkdGg7CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LmhlaWdodCA9IHByb3BlcnRpZXMuaGVpZ2h0OwogICAgICAgICAgICAgICAgcHJpbnRSZWN0KCJyZXNpemVSZWN0IiwgcmVzaXplUmVjdCk7CgogICAgICAgICAgICAgICAgdmFyIGN1c3RvbUNsb3NlUG9zaXRpb24gPSBwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KCJjdXN0b21DbG9zZVBvc2l0aW9uIikgPwogICAgICAgICAgICAgICAgICAgIHByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlvbiA6IHJlc2l6ZVByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlvbjsKICAgICAgICAgICAgICAgIGxvZy5kKCJjdXN0b21DbG9zZVBvc2l0aW9uICIgKyBjdXN0b21DbG9zZVBvc2l0aW9uKTsKCiAgICAgICAgICAgICAgICB2YXIgY2xvc2VSZWN0ID0geyJ3aWR0aCI6IDUwLCAiaGVpZ2h0IjogNTB9OwoKICAgICAgICAgICAgICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgibGVmdCIpICE9PSAtMSkgewogICAgICAgICAgICAgICAgICAgIGNsb3NlUmVjdC54ID0gcmVzaXplUmVjdC54OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgiY2VudGVyIikgIT09IC0xKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnggPSByZXNpemVSZWN0LnggKyAocmVzaXplUmVjdC53aWR0aCAvIDIpIC0gMjU7CiAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKGN1c3RvbUNsb3NlUG9zaXRpb24uc2VhcmNoKCJyaWdodCIpICE9PSAtMSkgewogICAgICAgICAgICAgICAgICAgIGNsb3NlUmVjdC54ID0gcmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCAtIDUwOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgidG9wIikgIT09IC0xKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0Lnk7CiAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKGN1c3RvbUNsb3NlUG9zaXRpb24gPT09ICJjZW50ZXIiKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0LnkgKyAocmVzaXplUmVjdC5oZWlnaHQgLyAyKSAtIDI1OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgiYm90dG9tIikgIT09IC0xKSB7CiAgICAgICAgICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCAtIDUwOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIHZhciBtYXhSZWN0ID0geyJ4IjogMCwgInkiOiAwfTsKICAgICAgICAgICAgICAgIG1heFJlY3Qud2lkdGggPSBtYXhTaXplLndpZHRoOwogICAgICAgICAgICAgICAgbWF4UmVjdC5oZWlnaHQgPSBtYXhTaXplLmhlaWdodDsKCiAgICAgICAgICAgICAgICByZXR1cm4gaXNSZWN0Q29udGFpbmVkKG1heFJlY3QsIGNsb3NlUmVjdCk7CiAgICAgICAgICAgIH0KCiAgICAgICAgICAgIGZ1bmN0aW9uIGZpdFJlc2l6ZVZpZXdPblNjcmVlbihwcm9wZXJ0aWVzKSB7CiAgICAgICAgICAgICAgICBsb2cuZCgiZml0UmVzaXplVmlld09uU2NyZWVuIik7CiAgICAgICAgICAgICAgICBsb2cuZCgiZGVmYXVsdFBvc2l0aW9uICIgKyBkZWZhdWx0UG9zaXRpb24ueCArICIgIiArIGRlZmF1bHRQb3NpdGlvbi55KTsKICAgICAgICAgICAgICAgIGxvZy5kKCJvZmZzZXQgIiArIHByb3BlcnRpZXMub2Zmc2V0WCArICIgIiArIHByb3BlcnRpZXMub2Zmc2V0WSk7CgogICAgICAgICAgICAgICAgdmFyIHJlc2l6ZVJlY3QgPSB7fTsKICAgICAgICAgICAgICAgIHJlc2l6ZVJlY3QueCA9IGRlZmF1bHRQb3NpdGlvbi54ICsgcHJvcGVydGllcy5vZmZzZXRYOwogICAgICAgICAgICAgICAgcmVzaXplUmVjdC55ID0gZGVmYXVsdFBvc2l0aW9uLnkgKyBwcm9wZXJ0aWVzLm9mZnNldFk7CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LndpZHRoID0gcHJvcGVydGllcy53aWR0aDsKICAgICAgICAgICAgICAgIHJlc2l6ZVJlY3QuaGVpZ2h0ID0gcHJvcGVydGllcy5oZWlnaHQ7CiAgICAgICAgICAgICAgICBwcmludFJlY3QoInJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsKCiAgICAgICAgICAgICAgICB2YXIgbWF4UmVjdCA9IHsieCI6IDAsICJ5IjogMH07CiAgICAgICAgICAgICAgICBtYXhSZWN0LndpZHRoID0gbWF4U2l6ZS53aWR0aDsKICAgICAgICAgICAgICAgIG1heFJlY3QuaGVpZ2h0ID0gbWF4U2l6ZS5oZWlnaHQ7CgogICAgICAgICAgICAgICAgdmFyIGFkanVzdG1lbnRzID0geyJ4IjogMCwgInkiOiAwfTsKCiAgICAgICAgICAgICAgICBpZiAoaXNSZWN0Q29udGFpbmVkKG1heFJlY3QsIHJlc2l6ZVJlY3QpKSB7CiAgICAgICAgICAgICAgICAgICAgbG9nLmQoIm5vIGFkanVzdG1lbnQgbmVjZXNzYXJ5Iik7CiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGFkanVzdG1lbnRzOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGlmIChyZXNpemVSZWN0LnggPCBtYXhSZWN0LngpIHsKICAgICAgICAgICAgICAgICAgICBhZGp1c3RtZW50cy54ID0gbWF4UmVjdC54IC0gcmVzaXplUmVjdC54OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmICgocmVzaXplUmVjdC54ICsgcmVzaXplUmVjdC53aWR0aCkgPiAobWF4UmVjdC54ICsgbWF4UmVjdC53aWR0aCkpIHsKICAgICAgICAgICAgICAgICAgICBhZGp1c3RtZW50cy54ID0gKG1heFJlY3QueCArIG1heFJlY3Qud2lkdGgpIC0gKHJlc2l6ZVJlY3QueCArIHJlc2l6ZVJlY3Qud2lkdGgpOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgbG9nLmQoImFkanVzdG1lbnRzLnggIiArIGFkanVzdG1lbnRzLngpOwoKICAgICAgICAgICAgICAgIGlmIChyZXNpemVSZWN0LnkgPCBtYXhSZWN0LnkpIHsKICAgICAgICAgICAgICAgICAgICBhZGp1c3RtZW50cy55ID0gbWF4UmVjdC55IC0gcmVzaXplUmVjdC55OwogICAgICAgICAgICAgICAgfSBlbHNlIGlmICgocmVzaXplUmVjdC55ICsgcmVzaXplUmVjdC5oZWlnaHQpID4gKG1heFJlY3QueSArIG1heFJlY3QuaGVpZ2h0KSkgewogICAgICAgICAgICAgICAgICAgIGFkanVzdG1lbnRzLnkgPSAobWF4UmVjdC55ICsgbWF4UmVjdC5oZWlnaHQpIC0gKHJlc2l6ZVJlY3QueSArIHJlc2l6ZVJlY3QuaGVpZ2h0KTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGxvZy5kKCJhZGp1c3RtZW50cy55ICIgKyBhZGp1c3RtZW50cy55KTsKCiAgICAgICAgICAgICAgICByZXNpemVSZWN0LnggPSBkZWZhdWx0UG9zaXRpb24ueCArIHByb3BlcnRpZXMub2Zmc2V0WCArIGFkanVzdG1lbnRzLng7CiAgICAgICAgICAgICAgICByZXNpemVSZWN0LnkgPSBkZWZhdWx0UG9zaXRpb24ueSArIHByb3BlcnRpZXMub2Zmc2V0WSArIGFkanVzdG1lbnRzLnk7CiAgICAgICAgICAgICAgICBwcmludFJlY3QoImFkanVzdGVkIHJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsKCiAgICAgICAgICAgICAgICByZXR1cm4gYWRqdXN0bWVudHM7CiAgICAgICAgICAgIH0KCiAgICAgICAgICAgIGZ1bmN0aW9uIGlzUmVjdENvbnRhaW5lZChjb250YWluaW5nUmVjdCwgY29udGFpbmVkUmVjdCkgewogICAgICAgICAgICAgICAgbG9nLmQoImlzUmVjdENvbnRhaW5lZCIpOwogICAgICAgICAgICAgICAgcHJpbnRSZWN0KCJjb250YWluaW5nUmVjdCIsIGNvbnRhaW5pbmdSZWN0KTsKICAgICAgICAgICAgICAgIHByaW50UmVjdCgiY29udGFpbmVkUmVjdCIsIGNvbnRhaW5lZFJlY3QpOwogICAgICAgICAgICAgICAgcmV0dXJuIChjb250YWluZWRSZWN0LnggPj0gY29udGFpbmluZ1JlY3QueCAmJgogICAgICAgICAgICAgICAgICAgIChjb250YWluZWRSZWN0LnggKyBjb250YWluZWRSZWN0LndpZHRoKSA8PSAoY29udGFpbmluZ1JlY3QueCArIGNvbnRhaW5pbmdSZWN0LndpZHRoKSAmJgogICAgICAgICAgICAgICAgICAgIGNvbnRhaW5lZFJlY3QueSA+PSBjb250YWluaW5nUmVjdC55ICYmCiAgICAgICAgICAgICAgICAgICAgKGNvbnRhaW5lZFJlY3QueSArIGNvbnRhaW5lZFJlY3QuaGVpZ2h0KSA8PSAoY29udGFpbmluZ1JlY3QueSArIGNvbnRhaW5pbmdSZWN0LmhlaWdodCkpOwogICAgICAgICAgICB9CgogICAgICAgICAgICBmdW5jdGlvbiBwcmludFJlY3QobGFiZWwsIHJlY3QpIHsKICAgICAgICAgICAgICAgIGxvZy5kKGxhYmVsICsKICAgICAgICAgICAgICAgICAgICAiIFsiICsgcmVjdC54ICsgIiwiICsgcmVjdC55ICsgIl0iICsKICAgICAgICAgICAgICAgICAgICAiLFsiICsgKHJlY3QueCArIHJlY3Qud2lkdGgpICsgIiwiICsgKHJlY3QueSArIHJlY3QuaGVpZ2h0KSArICJdIiArCiAgICAgICAgICAgICAgICAgICAgIiAoIiArIHJlY3Qud2lkdGggKyAieCIgKyByZWN0LmhlaWdodCArICIpIik7CiAgICAgICAgICAgIH0KCiAgICAgICAgICAgIG1yYWlkLmR1bXBMaXN0ZW5lcnMgPSBmdW5jdGlvbiAoKSB7CiAgICAgICAgICAgICAgICB2YXIgbkV2ZW50cyA9IE9iamVjdC5rZXlzKGxpc3RlbmVycykubGVuZ3RoOwogICAgICAgICAgICAgICAgbG9nLmkoImR1bXBpbmcgbGlzdGVuZXJzICgiICsgbkV2ZW50cyArICIgZXZlbnRzKSIpOwogICAgICAgICAgICAgICAgZm9yICh2YXIgZXZlbnQgaW4gbGlzdGVuZXJzKSB7CiAgICAgICAgICAgICAgICAgICAgdmFyIGV2ZW50TGlzdGVuZXJzID0gbGlzdGVuZXJzW2V2ZW50XTsKICAgICAgICAgICAgICAgICAgICBsb2cuaSgiICAiICsgZXZlbnQgKyAiIGNvbnRhaW5zICIgKyBldmVudExpc3RlbmVycy5sZW5ndGggKyAiIGxpc3RlbmVycyIpOwogICAgICAgICAgICAgICAgICAgIGZvciAodmFyIGkgPSAwOyBpIDwgZXZlbnRMaXN0ZW5lcnMubGVuZ3RoOyBpKyspIHsKICAgICAgICAgICAgICAgICAgICAgICAgbG9nLmkoIiAgICAiICsgZXZlbnRMaXN0ZW5lcnNbaV0pOwogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIGNvbnNvbGUubG9nKCJNUkFJRCBvYmplY3QgbG9hZGVkIik7CgogICAgICAgIH0pKCk7"

    .line 1254
    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1255
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    .line 1257
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private isVerveCustomExpand(Ljava/lang/String;)Z
    .locals 2

    .line 1642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "tags-prod.vrvm.com"

    .line 1646
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type=expandable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private onLayoutWebView(Landroid/webkit/WebView;ZIIII)V
    .locals 6

    .line 1743
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1744
    :goto_0
    sget-object v3, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLayoutWebView "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-ne p1, v5, :cond_1

    const-string p1, "1 "

    goto :goto_1

    :cond_1
    const-string p1, "2 "

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string p1, "onLayoutWebView ignored, not current"

    .line 1747
    invoke-static {v3, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1751
    :cond_2
    iget p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_4

    .line 1752
    :cond_3
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->calculateScreenSize()V

    .line 1753
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->calculateMaxSize()V

    .line 1757
    :cond_4
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isClosing:Z

    if-nez p1, :cond_5

    .line 1758
    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->calculatePosition(Z)V

    .line 1759
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isInterstitial:Z

    if-eqz p1, :cond_5

    .line 1761
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1762
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 1763
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setDefaultPosition()V

    .line 1768
    :cond_5
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpandingFromDefault:Z

    if-eqz p1, :cond_9

    .line 1769
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpandingFromDefault:Z

    .line 1770
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isInterstitial:Z

    if-eqz p1, :cond_6

    .line 1771
    iput v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    .line 1772
    iput-boolean v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isLaidOut:Z

    .line 1774
    :cond_6
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpandingPart2:Z

    if-nez p1, :cond_7

    const-string p1, "calling fireStateChangeEvent 1"

    .line 1775
    invoke-static {v3, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1778
    :cond_7
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isInterstitial:Z

    if-eqz p1, :cond_8

    .line 1779
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireReadyEvent()V

    .line 1780
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    if-eqz p1, :cond_8

    .line 1781
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireViewableChangeEvent()V

    .line 1784
    :cond_8
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    if-eqz p1, :cond_9

    .line 1785
    invoke-interface {p1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;->mraidViewExpand(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    :cond_9
    return-void
.end method

.method private open(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    .line 697
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-JS callback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " touched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->wasTouched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->wasTouched:Z

    if-nez v0, :cond_0

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- JS callback"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "open called, but no touch recorded, aborting"

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_3

    const-string v0, "sms"

    .line 704
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "tel"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Ljava/lang/String;)V

    return-void

    .line 709
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 713
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-void
.end method

.method private parseCommandUrl(Ljava/lang/String;)V
    .locals 7

    .line 501
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseCommandUrl "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDParser;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDParser;-><init>()V

    .line 504
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDParser;->parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "command"

    .line 506
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    :try_start_0
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->COMMANDS_WITH_NO_PARAM:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 512
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    .line 514
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 516
    :cond_0
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->COMMANDS_WITH_STRING:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const v5, -0x2bba19a0

    const-string v6, "useCustomClose"

    if-eq v4, v5, :cond_2

    const v5, 0x6037d900

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "createCalendarEvent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_5

    const-string v6, "url"

    goto :goto_1

    :cond_4
    const-string v6, "eventJSON"

    .line 529
    :cond_5
    :goto_1
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 531
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    .line 533
    :catch_1
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 535
    :cond_6
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->COMMANDS_WITH_MAP:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v1, :cond_7

    .line 537
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    .line 539
    :catch_2
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    return-void

    :catch_3
    move-exception p1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private pauseWebView(Landroid/webkit/WebView;)V
    .locals 3

    .line 1365
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseWebView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 720
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playVideo "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    .line 723
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;->mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 726
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-void
.end method

.method private px2dip(I)I
    .locals 1

    .line 1313
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    mul-int/lit16 p1, p1, 0xa0

    .line 1314
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private removeDefaultCloseButton()V
    .locals 2

    .line 1186
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1187
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private removeResizeView()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1054
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1055
    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1056
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1057
    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    .line 1058
    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    :cond_0
    return-void
.end method

.method private resize()V
    .locals 8

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resize"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    if-nez v2, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v4, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v5, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v6, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v7, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->offsetY:I

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;->mraidViewResize(Lnet/pubnative/lite/sdk/mraid/MRAIDView;IIII)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 744
    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    .line 746
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 747
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    .line 748
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->removeAllViews()V

    .line 749
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 750
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    .line 751
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 752
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 754
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    .line 755
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setResizedViewSize()V

    .line 756
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setResizedViewPosition()V

    .line 758
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$6;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$6;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restoreOriginalOrientation()V
    .locals 3

    .line 1929
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1930
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "restoreOriginalOrientation"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1932
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1933
    iget v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->originalRequestedOrientation:I

    if-eq v1, v2, :cond_0

    .line 1934
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private restoreOriginalScreenState()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 1114
    check-cast v0, Landroid/app/Activity;

    .line 1115
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isFullScreen:Z

    if-nez v1, :cond_0

    .line 1116
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1118
    :cond_0
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isForceNotFullScreen:Z

    if-eqz v1, :cond_1

    .line 1119
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1121
    :cond_1
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isActionBarShowing:Z

    if-eqz v1, :cond_2

    .line 1122
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    return-void

    .line 1124
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1125
    iget v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private setCloseRegionPosition(Landroid/view/View;)V
    .locals 4

    .line 1192
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/high16 v2, 0x42480000    # 50.0f

    .line 1195
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1196
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1201
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    const/16 v2, 0xb

    const/16 v3, 0xa

    if-ne p1, v0, :cond_0

    .line 1202
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1203
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1204
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 1206
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget p1, p1, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1218
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xe

    .line 1214
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x9

    .line 1209
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1222
    :goto_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget p1, p1, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const/16 p1, 0xc

    .line 1234
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_4
    const/16 p1, 0xf

    .line 1229
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1226
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1239
    :cond_1
    :goto_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrentPosition()V
    .locals 8

    .line 1322
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1323
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1324
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1325
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1326
    sget-object v4, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setCurrentPosition ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mraid.setCurrentPosition("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setDefaultPosition()V
    .locals 8

    .line 1331
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1332
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1333
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1334
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1335
    sget-object v4, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setDefaultPosition ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mraid.setDefaultPosition("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setMaxSize()V
    .locals 5

    .line 1340
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "setMaxSize"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->width:I

    .line 1342
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->maxSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v2, v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setMaxSize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mraid.setMaxSize("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setResizeProperties(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "width"

    .line 785
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 786
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "offsetX"

    .line 787
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "offsetY"

    .line 788
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "customClosePosition"

    .line 789
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "allowOffscreen"

    .line 790
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-JS callback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setResizeProperties "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v5, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iput v0, v5, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->width:I

    .line 796
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iput v1, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->height:I

    .line 797
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iput v2, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 798
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iput v3, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->offsetY:I

    .line 799
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    .line 800
    invoke-static {v4}, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->customClosePositionFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    .line 801
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iput-boolean p1, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->allowOffscreen:Z

    return-void
.end method

.method private setResizedViewPosition()V
    .locals 6

    .line 957
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_2

    .line 958
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "setResizedViewPosition"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->width:I

    .line 964
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->height:I

    .line 965
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 966
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v3, v3, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->offsetY:I

    int-to-float v0, v0

    .line 967
    iget-object v4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 v5, 0x1

    invoke-static {v5, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v1

    .line 968
    iget-object v4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v2

    .line 969
    iget-object v4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v3

    .line 970
    iget-object v4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 971
    iget-object v4, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    .line 972
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 973
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 974
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 975
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 976
    iget-object v5, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v4, v3, :cond_1

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 978
    :cond_1
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 979
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 980
    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 981
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 982
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setCurrentPosition()V

    :cond_2
    return-void
.end method

.method private setResizedViewSize()V
    .locals 5

    .line 944
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 945
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "setResizedViewSize"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->width:I

    .line 947
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizeProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDResizeProperties;->height:I

    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setResizedViewSize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, v1

    .line 949
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v2

    .line 950
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 951
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 952
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setScreenSize()V
    .locals 5

    .line 1348
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "setScreenSize"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v1, v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->width:I

    .line 1350
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->screenSize:Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;

    iget v2, v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$Size;->height:I

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setScreenSize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mraid.setScreenSize("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setSupportedServices()V
    .locals 3

    .line 1356
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "setSupportedServices"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->isCalendarSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->isInlineVideoSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->isStorePictureSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureManager:Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private setViewable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1698
    :goto_0
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    if-eq p1, v0, :cond_1

    .line 1699
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    .line 1700
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isPageFinished:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isLaidOut:Z

    if-eqz p1, :cond_1

    .line 1701
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireViewableChangeEvent()V

    :cond_1
    return-void
.end method

.method private showDefaultCloseButton()V
    .locals 7

    .line 1172
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI WXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goHFBQe/AkWfQAADBBJREFUeNrtXUFIW1kUPT9VqyKM 0qqYQS2tuIwwCwOl0NW46SI44PJvymxaaIesxqXdSGVWA0JdTMCFSDaxCK4cswiB0NWM3XSVStQ2 4wiDCplYnJg7C38kDZr/3v/v/f/eNxcuZKHJ/++cd9999917n4EAChG1A+gFEAZwD8B9AA+sz98C GATwDYBO61++ADgB8DeAzwAKAD4C2LE+FwEcG4bxX9DGyggA2LcsoL8D8D2AHwAMSfq5vwCsAfgd wB8AioZhnKMlnoN+h4hiRJQi/yVlPcudFjJyQe8noqdEtEPqyo71jP0txMSA3kFEU0T0jvSTd9az d7R8AAcmHsCPAF4HhMuzAH4zDOOf1rRuDnyYiBYpuLJIROEW0lev70EG/ioiKOEnGD4D3wngJxmm /vT0FIeHh9jd3UU+n7/Uvb09FItFHB0doVwuAwC6u7vR19eHcDiMkZERjI2NXero6CgGBgbQ1dUl a2n41TCMLzdx1k+Jmk6VSoUKhQIlk0kyTZPa2toIgFBta2sj0zQpmUxSoVCgSqUi0iJM3TRzv+F2 xEqlEqXTaTJNUzjYrGqaJqXTaSqVSiJIsBH47aMVMHEsZ2dnlMlkKBaL+Qb6dRqLxSiTydDZ2Zlb IsSCCHw3ES07HZGDgwOan59XDvTrdH5+ng4ODtyQYJmIuoMC/jgRnTsZhXw+76uJF7FE5PN5pyQ4 J6Jx3cF/4uTNC4UCzczMaAt8o87MzFChUHBKhCe6gh/nfdPj42OKx+OBAb5R4/E4HR8fOyFBXCfg Q7xBnWq1SslkMrDAN2oymaRqteokeBRSHfx23iPa/f19ikajNwb8mkajUdrf33dy9Nyu8sndJs/b 3KRZ38wacMqmcieM1sxnBr9cLmvt3cvYLZTLZV4StKu05qd4PPyenp4W8A3a09PDu1NIKeET8Dh8 uVyuBbaN5nI5LsdQm63e2tpaC2BGXVtbU3+LyBPkSSQSLWA5NZFIqBssssK7TLK0tNQC1KEuLS3x kGDcK/C7WWP7rZnvqSU49+QAifVUr7Xm++ITLCtxni/C23/9+jWFQiHtwYtEIhSPx2l8fNyr3UFM Fvj9rPt8Ny86Pj5Oq6url1YkEoloDX5t9q6urromAUecoF8GATZYInxugzzr6+tffWc2m9XSEhiG Qdls9qt3WV9fdx0sYowYbogGnymB0214txF8XUlQP/Mbxa0lME3T20RTIur04mDnOvB1I8FVM79R 3FoCjgOkThEE+JnlSFcm+LqQoNnMF20JGI+Sf5bu+FWrVVfn+azgq04CHvBFkCAajbImlfS7IcCi LNNf7+3zimokYDH7MkjAuBQsOgU/zJLD5zX49YEmFbaITma+SBIw5hiGpcx+JwmcIsBXhQRuZr4o EsTjcfFWwGrBIiXgs7m5SSLFr+VAxMwXRQLGANEdoZ6/k7z9jo4OevHihZNkSKVIIAP8eqt6+/Zt 7roDYTsCK7nTtmLH6eB1dXVpTQKRZv+qJW1iYsLRczFWIHWwEMA26uc24ieLBLJ9Apkz3w34HBHC KRYCvLMr1BQxmLpZAlVnfr0yFKS+cx34EV2l++zZMykDKtISqDzz0VCV7CowRBc97prW54ueWaov B7qAX1OG/gRPmxGgaRPGTCYjZW1VdTnQwew3aiaTsfvpHcd7f5mdOVSzBLrNfNR1KnEUE7BL9yqV StK3WDUSiBZeS6DjzK9Xhp5FsasI0LS8K51OexZo8dMx1HXm12s6nbZ7lFQj+Ldk7/11IEEQwOeI CdyqJ8Bws7+sVCqex9q99gmCAn5NGfoYDjOv/24zfVXfHchc87PZLBmG4fnYMRwQxZiPfv1u5CBj Ochms5ffr7PD5yJZZLGeAEWV1n+vSLC1tUVbW1uBA5/RDyjWd/doKjJ676pCgiCCD6u3MYO028b/ y+WyMrl3snyCoIFfU4Yikn4Q0YSKDqCOJPDL4XPhCE7Y7gBkxf+DthyoNPM5zgViIVxcqnit5PN5 qChv3rzB8+fPlXiWt2/f4tWrV3j//r1SY8SA3f0QLm7U1I4AqpBAVfAZsXsQwsV1qloSAACWl5fx 8uVLfPr0qQU+P3b3QER/NlskdGjj6odjqJrDd135mI38aRsEGh4e1qYs2yvHUEWH7yodHh62DwYR 0b/N/kKnrp41S+Dyto5AgF9rKGEj/4JsOn7p1p1jcnKStre3pYCfTqe1AR8AhUIhu1c6V7v/PKdE IhHMzs5iYmJCyvcTEYgIgZKgLAEyz/O9qDvwcwnQ3gmUeZ7vRd2B306g1ttAr8HXiQQs28AQgM/N loiRkRGl1/xUKoVHjx55/tvT09OYm5tDJBJRdnwYsPscAlBo9hdjY2PKgj83N4fp6WnfnkF1EjBg V2gD8FE3AqgAfj0J+vv78fjxY1SrVd0I8FG742C/1nwdfQKW42CtEkJUBV9VErAmhGiREqY6+CqS gDUlTPmkUJlBnu3tbeFnByqQgDkp1IoGKpsWLrtiZ3JyUst2NXbKnBZuEUDJwhCvqnR17VkEgYUh ypWGeV2rFzQS8JaGKVUc6metnqwyNK8PkHiLQ5UpD/e7Slf3PoaM6z9RfXm4RQLfG0SoUqKtOwm4 G0Sw+AGyW8SoWKKt63LgtEWMb02iVG3OoKNj6LhJlEUCz9vEyQRfVOq2TpbAcZs4iwCeNorUpS2L Tj6B20aRnrWK1a0njw4kcN0q1iKB9GbROph9HZcD182iLQJIbRevezcuVR1Dke3ipV0YITu272Wt nmqWQNiFERYJhF8ZE7Q+fCr5BEKvjGGNCfAcEA0NDdHKykpgwJdNgu3tbS5rJvzSKJYjYiL2a+N6 e3tpYWGBTk5OAgO+LBKcnJzQwsIC9fb2+ndtnEUAoRdHDg4OCiWBSlW6okhQA39wcND/iyNZrQBP sogoEqhYou2WBE7Al3p1LGtgiPfyaLckULk+3w0JfvnlF/Uuj2bdEfBeH++UBDo0Z3BCAl7w4dX1 8RYBOll+iTdvkJcEOnXmYCWBE7PPYfqJiDpF9RCYYvk13gghKwl0Ap+VBE7BZ4z4sUX9OEmwYfeL 5XKZu6GEHQl0BN+OBE7B7+npYSn2ICLaEF5oyOIQ8gaI7EigM/jXkcAp+BwBH/eOXxMSMKWb5HI5 1yQIAviNJPjw4YNj8HO5HCv4Maklx0S0zOq0OSXByspKYMCvaWdnJz18+JDu3r3L/b8cZyjL0mvO iaibbFrL1SSRSHC/bG9vLw0NDQUKfDeaSCRYwT8nom5PGg8Q0TjrUy0tLbWAdKhLS0s8YZJxT7tP ENET1idzYglaMz/BA/4TX1qQEFGcJ4rXAlb4mk9EFPe1Dw3LgZGb3cFNUw5v391Bj0AChMimrKwx TqBTA2qvtKenh2efT9aYq9Hqly66jGyyPnm5XFbiLkJV1DRN1ghfTTap1t1DFbGSSTd53sLvG0lV UI6DnXrwO6CiWJYgxfM2+/v7WtxKIlqj0aiTvIGUcjP/Gp9gkeetqtXqjbIGyWSSNZnjK4dPmTVf 9BaxPseQNdFUR43H46w5fGpt9bwIFjXuFHjrDlTWmZkZXg/f/yCP4LDxuZM3z+fzWu8WTNNkrdi5 LrY/jiCIdYC07HQkDg4OhFUle6Hz8/Num08ue3aw4zERYm5G5ezsjDKZjLROJW40FotRJpNhqc/3 9zxfARL0s6SX2UmpVKJ0Ou3rEmGaJqXTaZaePExpXNIyeRQlwhQJkkqlQoVCgZLJJJmmKaW3cVtb G5mmSclkkgqFAksfPh6Z8gsHw2cSdAL4CcBr0d99enqKw8ND7O7uIp/PX+re3h6KxSKOjo5QLpcB AN3d3ejr60M4HMbIyAjGxsYudXR0FAMDA+jq6pIxBLMAfjUM4wtusljLwiLdHFm8UeaegwjhgBNh 0XGhZhCXgCZEuAPgRxlLg08yC+A3wzD+aU1z/hPGKbJpXKWovLOevaOFpDg/4SnZNLP0WXasZ2yt 77KXCCuolFIA9JT1LHd0HEsjAGS4BSAM4DsA3wP4AcCQpJ/7C8AagN8B/AGgaBjGuc7jZwTUQrQD 6LWIcQ/AfQAPrM/fAhgE8A2AWvn0FwAnAP7GxVW6BVxcqLljfS4CODYM47+gjdX/V+LYxXLzNfgA AAAASUVORK5CYII="

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/Assets;->getDrawableFromBase64(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1174
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI WXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goHFBQxV9grJAAAEwRJREFUeNrtnXtsVVW+xz89fdBC y6mUcqA9oFIeJbWUqjg0YLoTLBpbg5HeopMMkwYSE+ZexfnLa7y65Bpn5p8ZNJeaeCcxPpLxcpEM AurQEHcvaG1AWkJLKUQh9iGlWPu0j9PH/aOnnQrt3mvvs/fp3qf9JU0OZa11dvf3u36P9fj9oohA EULEAslAGnAPsBLICH5OB3yAF4gPdukHOoFWoBm4DnwLfBf83AJ0CCECkfauoiIA7Ogg0PcDBcBT wDKbvu4H4AhQDpwHWoQQw3MECD/oKcAWYFcQ8JmUI8D7wBkhxI9zBLAP9FTgCeBl4F6HPuY14HXg mBCibY4AoYMeByjAfuBXLptcVcArgCqEGJwjgHEVvwf4Y4T4Wi8Cf3WiiYhyGPBpwEvA74hMOQi8 IYRomSPAnfb91QgGfioivOYEPyFqhoGPB563Q9UHAgF6e3vp7Oykvb194qezs5Pu7m76+voIBMbC +tjYWBISEkhKSsLr9bJo0aKJH6/Xy4IFC4iNjbXLNLwphOifdQQQQmwD/mHFWCMjI3R1ddHU1MTV q1e5ePEiIyMjlj6vx+MhOzub1atX4/f7WbhwIR6Px6rhHxVCnJwVBAiq+3eBwlDGGRwcpLm5mZqa Gi5cuDAjJM7JyWHDhg2kp6cTFxcX6nAngNJwm4WoMIO/Hfi72f7Dw8M0NTVRWVnJ5cuXHWXUMzMz ycvLw+/3Ex0dHcpQTwohjkYUAYQQ84Ey4Ldm+vf09FBdXc2pU6dc4eFt3bqV3NxcEhMTzQ7xHrBX CPGz6wkghFgD1AOGDWZ7ezsVFRUzpuKtMBH5+fksWrTIlGsDrBNCXHEtAYQQhcBxo/06OjooLy+n rq4uImK+rKwsCgoKSE5ONtO9SAhxwnUEEEK8APzZSJ/+/n4qKiqorKyMyOA/Ly+P/Px84uPjjXb9 vRDiL64ggBDCA7xlZFFndHSUuro6Dh8+PCtWgYqLi8nKyiIqytDrPwg8J4QYcSwBggcxPsLAFm1X VxeHDh2iqamJ2SR+v5+SkhIWLlxopNsR4GkrD6ZEWQh+XNDeF8j2qa2tnTWzXksb3HfffUa6lAf9 gkHHECA480/Igh8IBDh+/LhrvXs7ooWioiIjy83lQKEVmiDKAvA9wP/Kqv2Ojg7KysoYHBycQ36S xMXFsXfvXiORwhHgX0L1CaxYzH5LFvzGxkYOHDgwB/4UMjg4yIEDB2hsbJTt8lTw3Yck0SHO/heA /5BpW19fzwcffDCHtI5UV1fj8/lITU2Vaf6Qoihdqqp+HXYCBBd53pP9oz7++OM5dCWlrq4Or9fL smVSh5sfVRTlnKqqV8NGgODyrtRqzblz5zh27NgcqgaloaGBxMRE0tLSZJr/WlGUv6mqavjIWZQJ 8OcD3TL+Q3V1NUePHp1DMwTZvn07ubm5Mk1HgCSjG0hmnMAymX719fVz4FsgR48epb6+XhbLMltN QHA/X/f4VmNjY8gO3yOPPMK1a9dcD6DP52P9+vX09fXR19dn2ifIyMjA6/XqNd2gKEqNqqoNlhMg eJLnG5k4/+233zb9wlJSUnj88cfZuHEjPp+PW7du0dvb61rwFUVh06ZNzJ8/n5s3b5omQXV1NRs2 bJDZSHpaUZQyVVV/llUbsvKuXoNAIEBZWVlIL23btm1kZ2cDsG7dOgoLC41umjhCoqKiKCwsZN26 dQBkZ2ezbdu2kMYsKyubOMgaKlaGNEDwAOd+vXaffPIJLS3mj7w/88wzrF279he/83q9rFy5kpqa GlfN/MLCQlatWvWL3y9evJiUlBTTmmB4eJiurq4JUmnIGkVRKlVV/TZkAgSPbusewKutreWLL76w FHw3kiAqKoqSkpI7wJ9MjuTkZGpra02N39rayuLFi1myZIle098oivInVVWHQjUBz+s16OrqCmlX Twv8cVmxYgWlpaWONgc+n4+SkhJWrFih2W7t2rXs2LGDlJQUU99z+PBhurq6sAK7aAnHT/Ps/ujo KB9++KHsA5kC3w2aYNzhk1DPE+1DcQwbGxvJzc3VmxCP6DmEehrgVZkQxcxhjpSUFHbs2CENvpM1 we0On6xkZ2ejKIopTdDU1CR7ZvJVUxogeFHzI63O/f39vPPOO6bAVxRlwts3Kl6v1zEh4nQOn5H+ ZjXBpUuX2LRpEzExMVrNHlIU5b9VVe02qgFe0nuAioqKsIM/LuvWrUNRFHw+n+tmvpWaQBKDlwxp gOD9/MN6Cz5mHL/i4mIyMzMtASA1NRWfzzcjPkGoM98qTdDU1CSzQPSQoij/papqn6wG2KP3xeXl 5Yb/yOjoaK5cuWLaYXSKT2DU4TOiCdasWaOn0s1isUdKAwQPd2rqlfb2do4fN3zfg9HRUW7evMnQ 0BA+n4958+ZZ8uLCGR3oxfmhSH19PTU1NYYnSFtbG+vXrychIUEvIviDqqrDehpAscP2j0sgEOD8 +fN8+eWXlmuCkpISW30C2TjfLPgVFRXcuHHDVH9JTBQZE6C55NvT0xPyaV67SGDn3oFVDp8d4ANc uHCBnp4evWb7NU1AcOHnTa0RqqqqLNmmHRkZobm5maGhIdasWWPZy7QjRLTa4bMa/HFJSEjg7rvv 1mriv31h6HYN8IRW7+HhYcuvaNfU1PDZZ59ZrgmsChHtcvisBh/g1KlTDA/rJi59QssEvKwXclgt TjYHTlf7JjF6eUoTEIz9/6DV8/PPP+fWrVuWv4yRkRHbogOz5sAtav926e/v17tqdtfkNYHJGmCL Vq/BwUFb07JM1gRWihlN4MaZPy6XL1+WuXizZSoTsEurR3Nzs+0xdiAQoKqqihMnrM2HYCREdHKo JysSWO36hQkIplz/m1YPVVVpbW0lHNLS0kJvb6+l0UFqaiqJiYma5sBNDp+M5tP6b0VRXldVdXRc A6Tp2ehw3+QNd3QQSeBfuHBBJk9i2mQTcL9WSytBcGJ0YKfN//777zl06FDYwDeA2f2TCVAQ7vDP iE9w+vRpy32C0tLSiX+XlpbaZvM//fRTRkdHw/7uJDArABjfdtK83n316lVmUs6ePQtAYWGhpSTY tWvXxGe3q/2pMNMJB58C/jUqmN1DM27Yv3+/5bl3zcjGjRstJYFdMtPgw1hu41deeUWvWVwMY9W1 NNWwE8Afdww9Hg+bN282mlxpVoE/7rgHAgG9tDPJMXoRgJOuZY07hoAjSTDu8M2EzZ8OO52UM2ke xmrpTSudnZ2Oesl2OYZudvhCwO4eD2NFFaeV9vZ2R6ras2fPWr5i6Ha1bwK7lR7GKmq6jgBOIYFT wZfELiNGzwQ4mQAz7Rg6GXxJ7O6JYayWrmt8AKc4hk5z+Exil+5hrJDytNLd3e34uDvcjqETHT6T 2PliGKuiPa2YzWgxk+bg4YcfDqVah6vVvkHsvB7+WUJ92tnlFgkEAjQ1NcmcjjUl165dcw34ktjF e4gg8fl8bNmyhaVLl9oy/ujoqOPVvlHxAJpFC20qmGgL+Hbt508EzStXuipnkQR2/R5A01XUuW7k CLFzP/92CccNJKtEArtOD6B5zispKcnx4Nu1nz+dOOFquoxIYNfqATRPEEokJ5xRtW/XAc5IIIEE ds0e4LpWC5M17yLC5rudBBLYXfcA37qNAE4AfzIJnOoYSmD3rQf4zk0ECKfD53bHUAK773RNgJN8 gJlw+NxsDiSwu+4BNHO7LliwYA58l5JAAruWGKBDbzHB4/HM6LnAcZtvB/g3btwgMTHRsr2DcdMU zptUU4nH45FZCOrwBGvP/aDVKtSUbk51+Orr6zl27BinT592bH4CsyKB2Q9CiMD4XsARrZarV6+O OIdvfFevubnZthtIM0kCCcyOwD9vBmnmGfP7/TMy88N1S9fOa2gzRQIJzMonE+C8VstwH7Waibt6 dh0qmal1AgnMzk8mQIueQ5GTkxMRM1/vJI8dt5LDncwyJycHj0d3p78FgvkBVFUdVRRlPTDtlIuP j7f9irgTrmjbma4mXMksH3vsMe666y5N+y+E+GiyBgB4X6tHenp6xKn96cTuW8l2awIJrCawnkyA M1o94uLiLEvy7DS1H25zYOeycWZmJnFxcXrNztxBACHEj4BmBsi8vDxXqf1QkzO40TGUwOhaEOs7 NADA6+EMB+22+VYd3XaTYyiB0S8wvp0AmlWeo6Oj2bp1a8Q4fEY0gV0Jrq0kwdatW4mO1i0Ed2xa Aggh2oAqrd6ShYxdq/bd7BhKYFMVxHhaDQCgmVYiMTExpDUBt6h9tzmGOTk5Mhtad2A7FQFUvVHy 8/MdF+rV19eHJRuXUx1DSUzuwPYOg6Gq6rCiKP3AI9ONkpCQQFtbG21tbYZmvt25d+26ETSVtLW1 0dvb64jFoqysLB588EG9Zi8KIf5PRgMA/FVvtIKCAukHTEpKYvPmzRGRhDEcjuGzzz5rSBNIYjEl plO6jKqq9imKkgo8NN1o8fHxDAwMSOUQ9Hg8LF26FJ/PZ7ggkhPBHxc7lo0HBgaoq6ubKKYhE/fr pIMDOCiE+HhKbDQ6vWGVL9Df309lZSXnzp1jYGAgIsC3QxMMDAxw7tw5Kisr6e/vt9L2T4vltEGj qqrdelogJiaGxYsXc+nSJd0nGBwc5ObNm0RHR4esCZx2RdsKTTAZfFlfpri4mLS0NJnZ/z/Tamed zq/JOCCyK4Q9PT0hawKn3s8PVRN88803lJeXS4Pv9/vJysqSaaqJoeaykaqqP+tFBFFRUaxatYrK ykqpBw9FEzg9OYNZTfDVV19x8uRJQ9+1Z88evWqh457/SdMEAFAU5Rt0agnNmzdP2hSYJYFbMnMY IcHAwABVVVVUVlbKVPn4hepfvny5TNMnVFUdCokAqqoOKYpSCfxGq92SJUv46aefpI9CGyGBm9Ky yJLAjM2HsRU/ScfvUSFEg16jaJmRVFX9VlGUjYBmCY9Vq1ZRVVUlU7pMmgRuA1+GBGbBj4uLo7S0 VGbD54QQ4j9lxjSSIqZUr0FsbCx79+419KK0HEO3gq/lGJoFH2Dv3r2yGVtKZceMlm0YdAhrgKe1 2sXHx5ORkUF1dbX0HzaVJnA7+FNpguTkZC5evGgK/N27d8tuFj0phDhvOQGCJGhQFOVeYINWu/F6 fXV1daZI0NHRwZkzZ1wP/mQStLa20tLSQkNDg+EM7Dt37iQjI0Om6XtCiD8ZGTva6B+jKMpJ4N8B zcXq1NRUvF4vDQ0NhkjQ0tLC9evXHZ+i1gwJurq6DKfd2759u+zVvBFgi6qqAVsJoKpqQFGUj4B/ 02u7bNkyEhMTuXLlivT4Q0NDhkKiSJaioiIeeOAB2eaZQgjDKjPazIOpqvqjoijngF/rtU1LSzOs CeZkbOYbAL9ICPG1me+JNvuAqqpeVRSlC3hURhMY9Qlms+zcudPIjezfCyHeN/td0aE8qKqqX+tt GE32CYxGB7NRdu/eLevwwdhGzyuhfJ8VqWKfQ+d6+bgsX76cffv2yVxcmHUSFxfHvn37ZJd4Cb7z 50L9XkvOIwdLz51ApwDl5AWS48ePh70crVMlJyeHoqIiI2l5y4HCYHKPmSdAkARxwHFZEgDU1tZy +PDhWQ1+cXGxzIme28EvEkJYEipZei0lqAk+QqcS6WTp6uri0KFDM1aedqbE7/dTUlJiNPfCEeBp K2a+LQQIksADvAX8TrbP6OgodXV1s0YbFBcXk5WVZfQI+EHgOSGEpdm6bLunLIR4AfizkT79/f1U VFRIHy5xm+Tl5ZGfny9zkGOqUO8vdjyTrRfVhRCFQb/AkHR0dFBeXh4x6wZZWVkUFBToVfGcToqE ELbVxrM9Z4kQYg1QbybkbG9vp6KiwrXRwvjhDZPpdkeAdUKIK3Y+Y1iS1ggh5gNlwG/N9O/p6aG6 uppTp065AvitW7eSm5sbSvLJ94C9Qoif7X7WsKauEkJsB/5utv/w8DBNTU1UVlZy+fJlR4GemZlJ Xl4efr9f5sSOljwphDgarucOe45zIUQq8C5QGMo4g4ODNDc3U1NTM2MmIicnhw0bNpCenm7F6uYJ oPT269sRR4BJRNgG/MOKscb32puamrh69SoXL160PLexx+MhOzub1atX4/f7WbhwoUwqNll5VO/4 dsQRIEiCeOB54I9Wjx0IBOjt7aWzs5P29vaJn87OTrq7u+nr65s4nBEbG0tCQgJJSUl4vV4WLVo0 8eP1elmwYIFd1dNeBN4UQvTPFAaOKHMRNAuvYmDxyOVyEHgt3OresQSYRIQ04KUIJsJB4A0hRItT HsiRFRCFECnAHjtMwwzJi8BfJ6dnmyOAHBHiAAXYD/zKZaBXMZaTR7Vq527WEWAKP+EJxu4p3uvQ x7zGWB6+Y06w7xFFgClMxBZgFwa2nm2SI4zl3j3jRBUfkQS4jQzRQBpwP2OHUZ4Cltn0dT8EAS9n LN9+ixBi2M3vz/UEmIYUsUBykBj3ACuBjODndMAHeIHxfdl+xopotzJWSvc6YwU1vwt+bgE6rDyI 4RT5f02O5nnLDJUQAAAAAElFTkSuQmCC"

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/Assets;->getDrawableFromBase64(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1176
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 1177
    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v3, [I

    const v3, 0x10100a7

    aput v3, v0, v6

    .line 1178
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private startSkipTimer()V
    .locals 4

    .line 1957
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mSkipTimeMillis:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1958
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mSkipTimeMillis:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lnet/pubnative/lite/sdk/mraid/MRAIDView$13;

    invoke-direct {v3, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$13;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;-><init>(JLnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mExpirationTimer:Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;

    .line 1964
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/SimpleTimer;->start()Landroid/os/CountDownTimer;

    return-void

    .line 1966
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;->mraidShowCloseButton()V

    return-void
.end method

.method private storePicture(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 807
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storePicture "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->nativeFeatureListener:Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 813
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-void
.end method

.method private useCustomClose(Ljava/lang/String;)V
    .locals 3

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "useCustomClose "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 821
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->useCustomClose:Z

    if-eq v0, p1, :cond_3

    .line 822
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->useCustomClose:Z

    if-eqz p1, :cond_1

    .line 824
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeLayoutListener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

    if-eqz p1, :cond_0

    .line 825
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;->onRemoveCloseLayout()V

    return-void

    .line 827
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->removeDefaultCloseButton()V

    return-void

    .line 830
    :cond_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeLayoutListener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

    if-eqz p1, :cond_2

    .line 831
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;->onShowCloseLayout()V

    return-void

    .line 833
    :cond_2
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showDefaultCloseButton()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addViewabilityFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1940
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mViewabilityFriendlyObstructions:Ljava/util/List;

    new-instance v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;

    invoke-direct {v1, p1, p2, p3}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;-><init>(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected applyOrientationProperties()V
    .locals 7

    .line 1899
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 1900
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyOrientationProperties "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v2, v2, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    .line 1901
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1900
    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 1905
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1907
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentOrientation "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v6, "portrait"

    goto :goto_1

    :cond_1
    const-string v6, "landscape"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-nez v0, :cond_2

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 1912
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-eq v0, v4, :cond_4

    .line 1916
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v0, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-eqz v0, :cond_3

    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    .line 1924
    :cond_4
    :goto_3
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_5
    return-void
.end method

.method public clearView()V
    .locals 2

    .line 458
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 460
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 461
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected close()V
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-JS callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hz-m closing wv: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected closeFromExpanded()V
    .locals 4

    .line 988
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 989
    :cond_0
    iput v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    .line 992
    :cond_1
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isClosing:Z

    const/4 v0, 0x0

    .line 993
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpanded:Z

    .line 995
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 997
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 999
    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1000
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1001
    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 1002
    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 1004
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$7;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$7;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1011
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_2

    .line 1013
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1016
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1017
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidWebChromeClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1018
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mraidWebViewClient:Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "hz-m MRAIDView - closeFromExpanded - setting currentwebview to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    .line 1021
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$8;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected closeFromResized()V
    .locals 2

    const/4 v0, 0x1

    .line 1037
    iput v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    .line 1038
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isClosing:Z

    .line 1039
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->removeResizeView()V

    .line 1040
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 1041
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$9;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$9;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 470
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v0, "Destroying Main WebView"

    .line 471
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 475
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const-string v0, "Destroying Secondary WebView"

    .line 476
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 480
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 483
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 485
    :cond_2
    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 488
    :cond_3
    iput-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->contentInfoAdded:Z

    return-void
.end method

.method protected expand(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 595
    invoke-direct {p0, p1, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandCreative(Ljava/lang/String;Z)V

    return-void
.end method

.method protected expandHelper(Landroid/webkit/WebView;)V
    .locals 3

    .line 923
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->applyOrientationProperties()V

    .line 924
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->forceFullScreen()V

    .line 926
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 927
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    iget-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isInterstitial:Z

    if-eqz p1, :cond_0

    .line 930
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addContentInfo(Landroid/view/View;)V

    .line 933
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    .line 934
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hz-m MRAIDView - expandHelper - adding contentview to activity "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 937
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showActivity:Landroid/app/Activity;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 939
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpandingFromDefault:Z

    .line 940
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpanded:Z

    return-void
.end method

.method protected fireReadyEvent()V
    .locals 2

    .line 1293
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "fireReadyEvent"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mraid.fireReadyEvent();"

    .line 1294
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected fireStateChangeEvent()V
    .locals 5

    .line 1302
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "fireStateChangeEvent"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loading"

    const-string v1, "default"

    const-string v2, "expanded"

    const-string v3, "resized"

    const-string v4, "hidden"

    .line 1303
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mraid.fireStateChangeEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\');"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected fireViewableChangeEvent()V
    .locals 2

    .line 1308
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "fireViewableChangeEvent"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public getState()I
    .locals 1

    .line 205
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isExpanded:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1638
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isPageFinished:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1669
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    const-string v0, "hz-m MRAIDView - onBackPressed"

    .line 549
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 550
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->close()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "hz-m MRAIDView - onBackPressed - loading or hidden"

    .line 551
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1659
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1660
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "portrait"

    goto :goto_0

    :cond_0
    const-string p1, "landscape"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->context:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    .line 1663
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1675
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->stopAdSession()V

    .line 1677
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1709
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1710
    sget-object v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLayout ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-boolean p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz p2, :cond_0

    const-string p1, "onLayout ignored"

    .line 1713
    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1716
    :cond_0
    iget p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 p3, 0x2

    const/4 p4, 0x3

    if-eq p2, p3, :cond_1

    if-ne p2, p4, :cond_2

    .line 1717
    :cond_1
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->calculateScreenSize()V

    .line 1718
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->calculateMaxSize()V

    .line 1720
    :cond_2
    iget-boolean p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isClosing:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 1721
    iput-boolean p3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isClosing:Z

    .line 1722
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1723
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setCurrentPosition()V

    goto :goto_0

    .line 1725
    :cond_3
    invoke-direct {p0, p3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->calculatePosition(Z)V

    .line 1727
    :goto_0
    iget p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    if-ne p2, p4, :cond_4

    if-eqz p1, :cond_4

    .line 1728
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$12;

    invoke-direct {p2, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$12;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p1, 0x1

    .line 1735
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isLaidOut:Z

    .line 1736
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->onLayoutCompleted()V

    return-void
.end method

.method protected onLayoutCompleted()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 447
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 450
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1682
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1683
    sget-object p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVisibilityChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .line 1689
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1690
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getVisibility()I

    move-result v0

    .line 1691
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWindowVisibilityChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (actual "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1691
    invoke-static {v1, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method public setCloseLayoutListener(Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeLayoutListener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

    return-void
.end method

.method protected setOrientationProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowOrientationChange"

    .line 768
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "forceOrientation"

    .line 769
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->MRAID_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-JS callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOrientationProperties "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    iput-boolean v0, v1, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    .line 775
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->orientationProperties:Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    .line 778
    instance-of p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDInterstitial;

    if-nez p1, :cond_0

    iget p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 779
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->applyOrientationProperties()V

    :cond_1
    return-void
.end method

.method public setSkipOffset(Ljava/lang/Integer;)V
    .locals 0

    .line 1946
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mSkipTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method protected showAsInterstitial(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "hz-m MRAIDVIEW - showAsInterstitial"

    .line 917
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 918
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 919
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expand(Ljava/lang/String;)V

    return-void
.end method

.method public stopAdSession()V
    .locals 1

    .line 1632
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->mViewabilityAdSession:Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->stopAdSession()V

    :cond_0
    return-void
.end method
