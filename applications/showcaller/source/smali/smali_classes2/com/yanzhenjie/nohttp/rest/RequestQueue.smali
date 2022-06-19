.class public Lcom/yanzhenjie/nohttp/rest/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;
    }
.end annotation


# instance fields
.field private final mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

.field private mDispatchers:[Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

.field private mInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
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


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 4
    new-instance v0, Lcom/yanzhenjie/nohttp/CancelerManager;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/CancelerManager;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    .line 5
    new-array p1, p1, [Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mDispatchers:[Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/nohttp/rest/RequestQueue;)Lcom/yanzhenjie/nohttp/CancelerManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    return-object p0
.end method


# virtual methods
.method public add(ILcom/yanzhenjie/nohttp/rest/Request;Lcom/yanzhenjie/nohttp/rest/OnResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "TT;>;",
            "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-direct {v0, p2}, Lcom/yanzhenjie/nohttp/rest/Worker;-><init>(Lcom/yanzhenjie/nohttp/rest/Request;)V

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$1;-><init>(Lcom/yanzhenjie/nohttp/rest/RequestQueue;Lcom/yanzhenjie/nohttp/rest/OnResponseListener;Lcom/yanzhenjie/nohttp/rest/Request;)V

    .line 3
    new-instance p3, Lcom/yanzhenjie/nohttp/rest/Work;

    invoke-direct {p3, v0, p1, v1}, Lcom/yanzhenjie/nohttp/rest/Work;-><init>(Lcom/yanzhenjie/nohttp/rest/Worker;ILcom/yanzhenjie/nohttp/rest/OnResponseListener;)V

    .line 4
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/yanzhenjie/nohttp/rest/Work;->setSequence(I)V

    .line 5
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v1, p1}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->setQueue(Ljava/util/concurrent/BlockingQueue;)V

    .line 6
    invoke-virtual {v1, p3}, Lcom/yanzhenjie/nohttp/rest/RequestQueue$AsyncCallback;->setWork(Lcom/yanzhenjie/nohttp/rest/Work;)V

    .line 7
    invoke-virtual {p2, p3}, Lcom/yanzhenjie/nohttp/BasicRequest;->setCancelable(Lcom/yanzhenjie/nohttp/able/Cancelable;)V

    .line 8
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    invoke-virtual {p1, p2, p3}, Lcom/yanzhenjie/nohttp/CancelerManager;->addCancel(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/able/Cancelable;)V

    .line 9
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/CancelerManager;->cancelAll()V

    return-void
.end method

.method public cancelBySign(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/CancelerManager;->cancel(Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->unFinishSize()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->stop()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mDispatchers:[Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v1, v2}, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 4
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mDispatchers:[Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

    aput-object v1, v2, v0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->cancelAll()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mDispatchers:[Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->quit()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unFinishSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mCancelerManager:Lcom/yanzhenjie/nohttp/CancelerManager;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/CancelerManager;->size()I

    move-result v0

    return v0
.end method

.method public unStartSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method
