.class public final Lio/objectbox/b/e;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/b/e$a;
    }
.end annotation


# instance fields
.field private final a:Lio/objectbox/BoxStore;


# direct methods
.method public constructor <init>(Lio/objectbox/BoxStore;)V
    .locals 8

    .line 43
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lio/objectbox/b/e$a;

    invoke-direct {v7}, Lio/objectbox/b/e$a;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x14

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 45
    iput-object p1, p0, Lio/objectbox/b/e;->a:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 51
    iget-object p1, p0, Lio/objectbox/b/e;->a:Lio/objectbox/BoxStore;

    .line 2038
    iget-object p1, p1, Lio/objectbox/BoxStore;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/objectbox/a;

    .line 2157
    iget-object v0, p2, Lio/objectbox/a;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/Cursor;

    if-eqz v0, :cond_0

    .line 2159
    invoke-virtual {v0}, Lio/objectbox/Cursor;->close()V

    .line 2160
    invoke-virtual {v0}, Lio/objectbox/Cursor;->getTx()Lio/objectbox/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/Transaction;->close()V

    .line 2161
    iget-object p2, p2, Lio/objectbox/a;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
