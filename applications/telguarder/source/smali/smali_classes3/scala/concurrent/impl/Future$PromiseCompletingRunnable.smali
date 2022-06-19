.class public Lscala/concurrent/impl/Future$PromiseCompletingRunnable;
.super Ljava/lang/Object;
.source "Future.scala"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromiseCompletingRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final body:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final promise:Lscala/concurrent/impl/Promise$DefaultPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->body:Lscala/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Lscala/concurrent/impl/Promise$DefaultPromise;

    invoke-direct {p1}, Lscala/concurrent/impl/Promise$DefaultPromise;-><init>()V

    iput-object p1, p0, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->promise:Lscala/concurrent/impl/Promise$DefaultPromise;

    return-void
.end method

.method private final liftedTree1$1()Lscala/util/Try;
    .locals 3

    .line 24
    :try_start_0
    new-instance v0, Lscala/util/Success;

    iget-object v1, p0, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->body:Lscala/Function0;

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v1, v0}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lscala/util/Failure;

    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_0
    throw v0
.end method


# virtual methods
.method public promise()Lscala/concurrent/impl/Promise$DefaultPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise$DefaultPromise<",
            "TT;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->promise:Lscala/concurrent/impl/Promise$DefaultPromise;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->promise()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->liftedTree1$1()Lscala/util/Try;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    return-void
.end method
