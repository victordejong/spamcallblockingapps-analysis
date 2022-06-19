.class final Lio/bidmachine/nativead/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "native_cache_image"


# instance fields
.field private adRequest:Lio/bidmachine/nativead/NativeRequest;

.field private callback:Lio/bidmachine/AdProcessCallback;

.field private nativeData:Lio/bidmachine/nativead/NativeData;

.field private nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

.field private final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    .line 42
    iput-object p2, p0, Lio/bidmachine/nativead/a;->callback:Lio/bidmachine/AdProcessCallback;

    .line 43
    iput-object p3, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    .line 44
    iput-object p4, p0, Lio/bidmachine/nativead/a;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/bidmachine/nativead/a;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/a;->removePendingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeData;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    return-object p0
.end method

.method private checkTasksCount()V
    .locals 1

    .line 193
    iget-object v0, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lio/bidmachine/nativead/a;->notifyNativeCallback()V

    :cond_0
    return-void
.end method

.method private createIconTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lio/bidmachine/nativead/a$1;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/a$1;-><init>(Lio/bidmachine/nativead/a;)V

    .line 99
    iget-object v1, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->setOnCacheImageListener(Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->build()Lio/bidmachine/nativead/tasks/DownloadImageTask;

    move-result-object p1

    .line 99
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createImageTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lio/bidmachine/nativead/a$2;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/a$2;-><init>(Lio/bidmachine/nativead/a;)V

    .line 125
    iget-object v1, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    invoke-static {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 126
    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->setCheckAspectRatio(Z)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->setOnCacheImageListener(Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->build()Lio/bidmachine/nativead/tasks/DownloadImageTask;

    move-result-object p1

    .line 125
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 159
    new-instance v0, Lio/bidmachine/nativead/a$4;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/a$4;-><init>(Lio/bidmachine/nativead/a;Landroid/content/Context;)V

    .line 184
    iget-object v1, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {v2, p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createVideoTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 133
    new-instance v0, Lio/bidmachine/nativead/a$3;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/a$3;-><init>(Lio/bidmachine/nativead/a;Landroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-direct {v2, p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isAssetsValid()Z
    .locals 2

    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/a;->isIconValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/bidmachine/nativead/a;->isImageValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/bidmachine/nativead/a;->isVideoValid()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 211
    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return v0
.end method

.method private isIconValid()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lio/bidmachine/nativead/a;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/a;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 219
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isImageValid()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lio/bidmachine/nativead/a;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/a;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 227
    invoke-interface {v0}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isVideoValid()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->hasVideo()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized notifyNativeCallback()V
    .locals 2

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/nativead/a;->isAssetsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lio/bidmachine/nativead/a;->callback:Lio/bidmachine/AdProcessCallback;

    sget-object v1, Lio/bidmachine/utils/BMError;->IncorrectAdUnit:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    .line 201
    iget-object v0, p0, Lio/bidmachine/nativead/a;->callback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/nativead/a;->callback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removePendingTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-direct {p0}, Lio/bidmachine/nativead/a;->checkTasksCount()V

    return-void
.end method

.method private startDownloadTask(Landroid/content/Context;)V
    .locals 6

    .line 53
    iget-object v0, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v1}, Lio/bidmachine/nativead/NativeData;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v2}, Lio/bidmachine/nativead/NativeData;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lio/bidmachine/nativead/a;->nativeData:Lio/bidmachine/nativead/NativeData;

    invoke-interface {v3}, Lio/bidmachine/nativead/NativeData;->getVideoAdm()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v4, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    sget-object v5, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v4, v5}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-direct {p0, p1, v0}, Lio/bidmachine/nativead/a;->createIconTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    sget-object v4, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v4}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1, v1}, Lio/bidmachine/nativead/a;->createImageTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/a;->adRequest:Lio/bidmachine/nativead/NativeRequest;

    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-direct {p0, p1, v2}, Lio/bidmachine/nativead/a;->createVideoTask(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-direct {p0, p1, v3}, Lio/bidmachine/nativead/a;->createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    invoke-direct {p0}, Lio/bidmachine/nativead/a;->checkTasksCount()V

    return-void

    .line 73
    :cond_4
    iget-object p1, p0, Lio/bidmachine/nativead/a;->pendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method final downloadNativeAdsImages(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/a;->startDownloadTask(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lio/bidmachine/nativead/a;->checkTasksCount()V

    return-void
.end method
