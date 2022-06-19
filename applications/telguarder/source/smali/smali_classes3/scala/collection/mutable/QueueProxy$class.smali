.class public abstract Lscala/collection/mutable/QueueProxy$class;
.super Ljava/lang/Object;
.source "QueueProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/QueueProxy;)V
    .locals 0

    return-void
.end method

.method public static $plus$eq(Lscala/collection/mutable/QueueProxy;Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;
    .locals 1

    .line 49
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Queue;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;

    return-object p0
.end method

.method public static $plus$plus$eq(Lscala/collection/mutable/QueueProxy;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/QueueProxy;
    .locals 1

    .line 57
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Queue;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-object p0
.end method

.method public static apply(Lscala/collection/mutable/QueueProxy;I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Queue;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static clear(Lscala/collection/mutable/QueueProxy;)V
    .locals 0

    .line 84
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Queue;->clear()V

    return-void
.end method

.method public static clone(Lscala/collection/mutable/QueueProxy;)Lscala/collection/mutable/Queue;
    .locals 1

    .line 96
    new-instance v0, Lscala/collection/mutable/QueueProxy$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/QueueProxy$$anon$1;-><init>(Lscala/collection/mutable/QueueProxy;)V

    return-object v0
.end method

.method public static dequeue(Lscala/collection/mutable/QueueProxy;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Queue;->dequeue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static enqueue(Lscala/collection/mutable/QueueProxy;Lscala/collection/Seq;)V
    .locals 0

    .line 65
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Queue;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public static front(Lscala/collection/mutable/QueueProxy;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Queue;->front()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isEmpty(Lscala/collection/mutable/QueueProxy;)Z
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Queue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static iterator(Lscala/collection/mutable/QueueProxy;)Lscala/collection/Iterator;
    .locals 0

    .line 90
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Queue;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/mutable/QueueProxy;)I
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Queue;->length()I

    move-result p0

    return p0
.end method
