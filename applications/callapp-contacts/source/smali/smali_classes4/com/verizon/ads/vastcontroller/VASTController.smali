.class public Lcom/verizon/ads/vastcontroller/VASTController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;,
        Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;,
        Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;,
        Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;
    }
.end annotation


# static fields
.field private static final c:Lcom/verizon/ads/Logger;

.field private static final d:Ljava/lang/String;

.field private static final e:Landroid/os/HandlerThread;

.field private static final f:Landroid/os/Handler;


# instance fields
.field a:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private volatile h:Ljava/lang/Runnable;

.field private i:Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

.field private j:Landroid/view/ViewGroup;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    .line 69
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    sput-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTController;)Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->i:Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {p1}, Lcom/verizon/ads/vastcontroller/VASTParser;->parse(Ljava/lang/String;)Lcom/verizon/ads/vastcontroller/VASTParser$Ad;

    move-result-object p1

    if-nez p1, :cond_0

    .line 315
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string v0, "No Ad found in VAST content"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_0
    instance-of v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    if-eqz v0, :cond_1

    .line 321
    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->a:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    return-void

    .line 322
    :cond_1
    instance-of v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    if-eqz v0, :cond_5

    .line 323
    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 324
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    iget-object v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    .line 327
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting VAST tag URI = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 333
    :cond_2
    iget-object v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v0

    .line 334
    iget v1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 335
    iget-object p1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTController;->a(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_3
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received HTTP status code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when processing ad tag URI = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_4
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string v0, "VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .line 37
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/verizon/ads/vastcontroller/VASTController;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->g:Z

    return p0
.end method

.method private c()V
    .locals 5

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->a:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    const-string v2, "error"

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->error:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    iget-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTController;->a:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->error:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/verizon/ads/vastcontroller/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 358
    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->error:Ljava/lang/String;

    invoke-static {v4}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 359
    new-instance v4, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->error:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/verizon/ads/vastcontroller/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/verizon/ads/vastcontroller/VASTController;)V
    .locals 2

    .line 1439
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1440
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string v1, "Stopping load timer"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1442
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1443
    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->h:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/vastcontroller/VASTController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTController;->c()V

    return-void
.end method

.method static synthetic e(Lcom/verizon/ads/vastcontroller/VASTController;)Landroid/view/ViewGroup;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic f(Lcom/verizon/ads/vastcontroller/VASTController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->g:Z

    return v0
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;)V
    .locals 3

    const/4 v0, -0x6

    if-nez p1, :cond_0

    .line 264
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v2, "parent view was null."

    invoke-direct {p1, v1, v2, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, p1}, Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 270
    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 271
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v2, "parent view context must be an Activity."

    invoke-direct {p1, v1, v2, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, p1}, Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 277
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string v1, "videoPlayerView instance is null, unable to attach"

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 278
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v2, "videoPlayerView instance was null"

    invoke-direct {p1, v1, v2, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, p1}, Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 283
    :cond_2
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTController$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/VASTController$2;-><init>(Lcom/verizon/ads/vastcontroller/VASTController;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;

    if-eqz v1, :cond_3

    .line 293
    check-cast v0, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;

    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;->updateLayout()V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/verizon/ads/support/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 298
    invoke-interface {p2, p1}, Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->i:Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;->close()V

    :cond_0
    return-void
.end method

.method public load(Landroid/content/Context;ILcom/verizon/ads/vastcontroller/VASTController$LoadListener;)V
    .locals 7

    if-nez p3, :cond_0

    .line 167
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string p2, "loadListener cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 173
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string p2, "context cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 174
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v0, "context cannot be null."

    const/4 v1, -0x7

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p1}, Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 180
    :cond_1
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {v0, p1}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string p2, "External storage is not writable."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v0, "External storage is not writable."

    const/4 v1, -0x5

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p1}, Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_2
    int-to-long v0, p2

    .line 1405
    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTController;->h:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 1407
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string v1, "Timeout timer already running"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1409
    monitor-exit p0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 1414
    monitor-exit p0

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    .line 1418
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1419
    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTController;->c:Lcom/verizon/ads/Logger;

    const-string v3, "Load will timeout in %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1422
    :cond_5
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTController$3;

    invoke-direct {v2, p0}, Lcom/verizon/ads/vastcontroller/VASTController$3;-><init>(Lcom/verizon/ads/vastcontroller/VASTController;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTController;->h:Ljava/lang/Runnable;

    .line 1431
    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTController;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTController;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1432
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :goto_0
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTController$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/verizon/ads/vastcontroller/VASTController$1;-><init>(Lcom/verizon/ads/vastcontroller/VASTController;Landroid/content/Context;Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;I)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1432
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onBackPressed()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;

    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Lcom/verizon/ads/AdSession;Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;
    .locals 2

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->b:Ljava/util/List;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->k:Ljava/util/List;

    .line 124
    :try_start_0
    invoke-direct {p0, p2}, Lcom/verizon/ads/vastcontroller/VASTController;->a(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->a:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    if-nez p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTController;->c()V

    .line 129
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v0, "VAST content did not produce a valid InLineAd instance."

    const/4 v1, -0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->b:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 134
    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->impressions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTController;->c()V

    .line 137
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    const-string v0, "WrapperAd must contain at least one Impression URL."

    const/4 v1, -0x2

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 150
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTController;->c()V

    .line 152
    new-instance p2, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VAST XML I/O error: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x4

    invoke-direct {p2, v0, p1, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    :catch_1
    move-exception p1

    .line 145
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTController;->c()V

    .line 147
    new-instance p2, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTController;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VAST XML Parsing error: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x3

    invoke-direct {p2, v0, p1, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method public release()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;

    if-eqz v1, :cond_0

    .line 375
    check-cast v0, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;

    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;->release()V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController;->j:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController;->i:Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

    return-void
.end method
