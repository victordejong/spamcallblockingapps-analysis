.class public abstract Lscala/collection/mutable/StackProxy$class;
.super Ljava/lang/Object;
.source "StackProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/StackProxy;)V
    .locals 0

    return-void
.end method

.method public static $plus$eq(Lscala/collection/mutable/StackProxy;Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;
    .locals 1

    .line 48
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    return-object p0
.end method

.method public static apply(Lscala/collection/mutable/StackProxy;I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static clear(Lscala/collection/mutable/StackProxy;)V
    .locals 0

    .line 80
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->clear()V

    return-void
.end method

.method public static clone(Lscala/collection/mutable/StackProxy;)Lscala/collection/mutable/Stack;
    .locals 1

    .line 102
    new-instance v0, Lscala/collection/mutable/StackProxy$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/StackProxy$$anon$1;-><init>(Lscala/collection/mutable/StackProxy;)V

    return-object v0
.end method

.method public static isEmpty(Lscala/collection/mutable/StackProxy;)Z
    .locals 0

    .line 41
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static iterator(Lscala/collection/mutable/StackProxy;)Lscala/collection/Iterator;
    .locals 0

    .line 90
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/mutable/StackProxy;)I
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->length()I

    move-result p0

    return p0
.end method

.method public static pop(Lscala/collection/mutable/StackProxy;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static push(Lscala/collection/mutable/StackProxy;Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;
    .locals 1

    .line 60
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    return-object p0
.end method

.method public static push(Lscala/collection/mutable/StackProxy;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/StackProxy;
    .locals 1

    .line 55
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    move-result-object p1

    invoke-virtual {p1, p3}, Lscala/collection/mutable/Stack;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Stack;

    return-object p0
.end method

.method public static pushAll(Lscala/collection/mutable/StackProxy;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/StackProxy;
    .locals 1

    .line 52
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Stack;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Stack;

    return-object p0
.end method

.method public static toList(Lscala/collection/mutable/StackProxy;)Lscala/collection/immutable/List;
    .locals 0

    .line 96
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->toList()Lscala/collection/immutable/List;

    move-result-object p0

    return-object p0
.end method

.method public static top(Lscala/collection/mutable/StackProxy;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-interface {p0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->top()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
