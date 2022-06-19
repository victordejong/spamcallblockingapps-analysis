.class public Lio/bidmachine/nativead/tasks/DownloadVideoTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "native_video"

.field private static final RESULT_FAIL:I = 0x0

.field private static final RESULT_SUCCESS:I = 0x1

.field private static final SERVER_TIME_OUT:I = 0x4e20


# instance fields
.field private cacheDir:Ljava/io/File;

.field private final handler:Landroid/os/Handler;

.field private initialized:Z

.field private listener:Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;-><init>(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 52
    invoke-static {p1}, Lio/bidmachine/core/Utils;->canUseExternalFilesDir(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->listener:Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;

    .line 58
    iput-object p3, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->videoUrl:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lio/bidmachine/core/Utils;->canUseExternalFilesDir(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "native_video"

    .line 60
    invoke-static {p1, p2}, Lio/bidmachine/core/Utils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->cacheDir:Ljava/io/File;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->initialized:Z

    return-void

    .line 62
    :cond_1
    invoke-interface {p2, p0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V

    return-void

    .line 53
    :cond_2
    :goto_0
    invoke-interface {p2, p0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->listener:Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;

    return-object p0
.end method

.method private sendFail()V
    .locals 2

    .line 90
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendSuccess(Ljava/io/File;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 84
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-boolean v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->initialized:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->sendFail()V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->cacheDir:Ljava/io/File;

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lio/bidmachine/nativead/tasks/a;->cacheVideoFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->sendSuccess(Ljava/io/File;)V

    return-void

    .line 78
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->sendFail()V

    return-void
.end method
