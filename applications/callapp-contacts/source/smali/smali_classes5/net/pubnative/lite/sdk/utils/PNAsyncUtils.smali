.class public Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PNAsyncUtils"

.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static sUiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->sExecutor:Ljava/util/concurrent/Executor;

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->sUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .line 9
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static varargs safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TP;**>;[TP;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 22
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 24
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->TAG:Ljava/lang/String;

    const-string v1, "Posting task for execution on main thread."

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->sUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils$1;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils$1;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 33
    :cond_1
    sget-object p0, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->TAG:Ljava/lang/String;

    const-string p1, "Error executing an AsyncTask that is null."

    invoke-static {p0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
