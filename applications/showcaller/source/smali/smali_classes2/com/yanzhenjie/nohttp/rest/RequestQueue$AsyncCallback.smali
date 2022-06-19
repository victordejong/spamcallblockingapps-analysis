.class Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/rest/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/rest/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;>;"
        }
    .end annotation
.end field

.field private mWork:Lcom/yanzhenjie/nohttp/rest/Work;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yanzhenjie/nohttp/rest/OnResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    return-void
.end method

.method static synthetic access$100(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;)Lcom/yanzhenjie/nohttp/rest/OnResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    return-object p0
.end method


# virtual methods
.method public onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$3;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;ILcom/yanzhenjie/nohttp/rest/Response;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinish(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mWork:Lcom/yanzhenjie/nohttp/rest/Work;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mWork:Lcom/yanzhenjie/nohttp/rest/Work;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$4;

    invoke-direct {v1, p0, p1}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$4;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$1;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSucceed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yanzhenjie/nohttp/rest/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback$2;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;ILcom/yanzhenjie/nohttp/rest/Response;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setQueue(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public setWork(Lcom/yanzhenjie/nohttp/rest/Work;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->mWork:Lcom/yanzhenjie/nohttp/rest/Work;

    return-void
.end method
