.class public Lcom/mopub/mobileads/VastManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/VastXmlManagerAggregator$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastManager$VastManagerListener;
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

.field private b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context cannot be null"

    .line 1165
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "window"

    .line 1166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1168
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 1176
    iput-wide v2, p0, Lcom/mopub/mobileads/VastManager;->d:D

    int-to-float v0, v1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 1177
    iput p1, p0, Lcom/mopub/mobileads/VastManager;->e:I

    .line 61
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastManager;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/mopub/mobileads/VastManager;->b(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 2

    const-string/jumbo v0, "vastVideoConfig cannot be null"

    .line 153
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/mopub/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {v0}, Lcom/mopub/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setDiskMediaFileUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->cancel(Z)Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    :cond_0
    return-void
.end method

.method public onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 114
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setDspCreativeId(Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastManager;->f:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/mopub/mobileads/VastManager;->b(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lcom/mopub/mobileads/VastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/VastManager$1;-><init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 140
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VideoDownloader;->cache(Ljava/lang/String;Lcom/mopub/mobileads/VideoDownloader$a;)V

    return-void

    .line 124
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const-string/jumbo v0, "vastManagerListener cannot be null"

    .line 75
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context cannot be null"

    .line 76
    invoke-static {p4, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-nez v0, :cond_0

    .line 79
    iput-object p2, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    .line 80
    new-instance p2, Lcom/mopub/mobileads/VastXmlManagerAggregator;

    iget-wide v3, p0, Lcom/mopub/mobileads/VastManager;->d:D

    iget v5, p0, Lcom/mopub/mobileads/VastManager;->e:I

    .line 83
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;-><init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$a;DILandroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/VastManager;->b:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 84
    iput-object p3, p0, Lcom/mopub/mobileads/VastManager;->c:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 p4, 0x1

    :try_start_0
    new-array v0, p4, [Ljava/lang/String;

    aput-object p1, v0, p3

    .line 87
    invoke-static {p2, v0}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 89
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to aggregate vast xml"

    aput-object v1, v0, p3

    aput-object p1, v0, p4

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager;->a:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method
