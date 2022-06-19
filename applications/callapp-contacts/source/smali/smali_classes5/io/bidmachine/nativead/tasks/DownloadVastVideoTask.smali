.class public Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "native_video"

.field private static final RESULT_FAIL:I = 0x0

.field private static final RESULT_SUCCESS:I = 0x1

.field private static final SERVER_TIME_OUT:I = 0x4e20

.field private static final SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String; = "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"


# instance fields
.field private cacheDir:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private initialized:Z

.field private listener:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

.field private videoTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 64
    invoke-static {p1}, Lio/bidmachine/core/Utils;->canUseExternalFilesDir(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->listener:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    .line 70
    iput-object p3, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->videoTag:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lio/bidmachine/core/Utils;->canUseExternalFilesDir(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "native_video"

    .line 72
    invoke-static {p1, p2}, Lio/bidmachine/core/Utils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->cacheDir:Ljava/io/File;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->initialized:Z

    return-void

    .line 74
    :cond_1
    invoke-interface {p2, p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V

    return-void

    .line 65
    :cond_2
    :goto_0
    invoke-interface {p2, p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->listener:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    return-object p0
.end method

.method private sendFail()V
    .locals 2

    .line 121
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendSuccess(Ljava/io/File;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 114
    new-instance v2, Landroid/util/Pair;

    .line 115
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-boolean v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->initialized:Z

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendFail()V

    return-void

    .line 87
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/explorestack/iab/vast/VastRequest;->newBuilder()Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setPreCache(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest$Builder;->build()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->videoTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    .line 91
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getText()Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->cacheDir:Ljava/io/File;

    const/16 v3, 0x4e20

    invoke-static {v1, v2, v3}, Lio/bidmachine/nativead/tasks/a;->cacheVideoFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    invoke-direct {p0, v1, v0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendSuccess(Ljava/io/File;Lcom/explorestack/iab/vast/VastRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 109
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendFail()V

    return-void
.end method
