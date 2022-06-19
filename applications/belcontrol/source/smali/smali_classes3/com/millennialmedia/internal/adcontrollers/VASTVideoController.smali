.class public Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;,
        Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;
    }
.end annotation


# static fields
.field private static final MAX_WRAPPERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VASTVideoController"


# instance fields
.field private inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

.field private listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

.field private vastDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoView:Landroid/view/ViewGroup;

.field private wrapperAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->fireErrorUrls()V

    return-void
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->videoView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->videoView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastDocuments:Ljava/util/List;

    return-object p0
.end method

.method private fireErrorUrls()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    const-string v2, "error"

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Ad;->error:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/millennialmedia/internal/utils/TrackingEvent;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Ad;->error:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/millennialmedia/internal/utils/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v4, v3, Lcom/millennialmedia/internal/video/VASTParser$Ad;->error:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/millennialmedia/internal/utils/TrackingEvent;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Ad;->error:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/millennialmedia/internal/utils/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    return-void
.end method

.method private static isJavascript(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isVPAID(Lcom/millennialmedia/internal/video/VASTParser$InLineAd;)Z
    .locals 4

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    iget-object v2, v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->apiFramework:Ljava/lang/String;

    const-string v3, "VPAID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->contentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->isJavascript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    const-string v0, "Detected VPAID video content"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private loadAd(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastDocuments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTParser;->parse(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$Ad;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->fireErrorUrls()V

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting VAST tag URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    iget-object p1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->loadAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received HTTP status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when processing ad tag URI = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    const-string v0, "VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachFailed()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachFailed()V

    return-void

    :cond_1
    new-instance v1, Lcom/millennialmedia/internal/AdContainer;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/millennialmedia/internal/AdContainer;-><init>(Landroid/app/Activity;Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$4;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$5;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Lcom/millennialmedia/internal/AdContainer;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {p1, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public canHandleContent(Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<VAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "<AD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "</VAST>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz v0, :cond_1

    if-ge v0, v2, :cond_1

    if-ge v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public close()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$7;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createVASTVideoView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createVPAIDWebView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVideoView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->videoView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastDocuments:Ljava/util/List;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    const-string p2, "External storage is not writeable.  Unable to load VAST video interstitial."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    return-void

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->videoView:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;->onBackPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
