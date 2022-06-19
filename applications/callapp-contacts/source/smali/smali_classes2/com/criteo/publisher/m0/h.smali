.class public final Lcom/criteo/publisher/m0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/m0/h$c;,
        Lcom/criteo/publisher/m0/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/criteo/publisher/m0/h$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private final c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/m0/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/criteo/publisher/m0/h;->b:Ljava/util/concurrent/CountDownLatch;

    .line 45
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/criteo/publisher/m0/h$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/criteo/publisher/m0/h$b;-><init>(Lcom/criteo/publisher/m0/h;Lcom/criteo/publisher/m0/h$a;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/criteo/publisher/m0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/criteo/publisher/m0/h<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/criteo/publisher/m0/h;

    invoke-direct {v0}, Lcom/criteo/publisher/m0/h;-><init>()V

    .line 50
    invoke-virtual {v0, p0}, Lcom/criteo/publisher/m0/h;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Lcom/criteo/publisher/m0/h;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/criteo/publisher/m0/h;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic b(Lcom/criteo/publisher/m0/h;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/criteo/publisher/m0/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/criteo/publisher/m0/h$c;

    invoke-direct {v1, p1}, Lcom/criteo/publisher/m0/h$c;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/criteo/publisher/m0/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 82
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 89
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/criteo/publisher/m0/h;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    return v0
.end method
