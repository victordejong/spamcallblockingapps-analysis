.class public Lcom/millennialmedia/internal/adcontrollers/WebController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;,
        Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebController"

.field private static final patternHeadOrBody:Ljava/util/regex/Pattern;

.field private static final patternHtml:Ljava/util/regex/Pattern;

.field private static final patternOtherHtmlTags:Ljava/util/regex/Pattern;


# instance fields
.field private volatile mmWebView:Lcom/millennialmedia/internal/MMWebView;

.field private volatile sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

.field private volatile twoPartWebView:Lcom/millennialmedia/internal/MMWebView;

.field private webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "<HTML"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->patternHtml:Ljava/util/regex/Pattern;

    const-string v0, "<HEAD|<BODY"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->patternHeadOrBody:Ljava/util/regex/Pattern;

    const-string v0, "<SCRIPT|<IMG|<A|<DIV|<SPAN|<P|<H1|<H2|<H3|<H4|<H5|<H6|<IFRAME"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->patternOtherHtmlTags:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/adcontrollers/WebController;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->releaseFromSizableState()V

    return-void
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->twoPartWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->twoPartWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    return-object p0
.end method

.method private getWebView()Lcom/millennialmedia/internal/MMWebView;
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->TAG:Ljava/lang/String;

    const-string v1, "MMWebView has not been created or has been released."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object v0
.end method

.method private releaseFromSizableState()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->twoPartWebView:Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$8;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    return-void
.end method


# virtual methods
.method public attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    return-void

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canHandleContent(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/WebController;->patternHeadOrBody:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/WebController;->patternHtml:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/WebController;->patternOtherHtmlTags:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public close()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$10;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createWebView(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;
    .locals 9

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->interstitial:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v1, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->interstitial:Z

    iget-boolean v2, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableMoat:Z

    iget-boolean v3, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableEnhancedAdControl:Z

    invoke-direct {v7, v1, v0, v2, v3}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;-><init>(ZZZZ)V

    new-instance v0, Lcom/millennialmedia/internal/MMWebView;

    new-instance v8, Lcom/millennialmedia/internal/adcontrollers/WebController$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/millennialmedia/internal/adcontrollers/WebController$6;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;Ljava/lang/ref/WeakReference;Lcom/millennialmedia/internal/AdMetadata;)V

    invoke-direct {v0, p1, v7, v8}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    return-object v0
.end method

.method public getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager;

    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$5;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager$SizableListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V
    .locals 7

    new-instance v6, Lcom/millennialmedia/internal/adcontrollers/WebController$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadTwoPartContentAsync(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$7;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$9;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adcontrollers/WebController$4;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
