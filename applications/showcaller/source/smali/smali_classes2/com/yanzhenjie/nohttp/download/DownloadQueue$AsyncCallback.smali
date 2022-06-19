.class Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;
.super Ljava/lang/Object;
.source "DownloadQueue.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/download/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/download/DownloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

.field private mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/nohttp/download/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;

.field private mWork:Lcom/yanzhenjie/nohttp/download/Work;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/download/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/download/DownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;)Lcom/yanzhenjie/nohttp/download/DownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    return-object p0
.end method

.method private removeRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/CancelerManager;->removeCancel(Lcom/yanzhenjie/nohttp/BasicRequest;)V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mWork:Lcom/yanzhenjie/nohttp/download/Work;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mWork:Lcom/yanzhenjie/nohttp/download/Work;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->removeRequest()V

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$5;

    invoke-direct {v1, p0, p1}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$5;-><init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadError(ILjava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->removeRequest()V

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$1;-><init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;ILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinish(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->removeRequest()V

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$4;-><init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(IIJJ)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v9, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$3;-><init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;IIJJ)V

    invoke-virtual {v0, v9}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v10, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback$2;-><init>(Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;IZJLcom/yanzhenjie/nohttp/Headers;J)V

    invoke-virtual {v0, v10}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCancelerManager(Lcom/yanzhenjie/nohttp/CancelerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    return-void
.end method

.method public setQueue(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/nohttp/download/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public setRequest(Lcom/yanzhenjie/nohttp/download/DownloadRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mRequest:Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    return-void
.end method

.method public setWork(Lcom/yanzhenjie/nohttp/download/Work;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/download/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/DownloadQueue$AsyncCallback;->mWork:Lcom/yanzhenjie/nohttp/download/Work;

    return-void
.end method
