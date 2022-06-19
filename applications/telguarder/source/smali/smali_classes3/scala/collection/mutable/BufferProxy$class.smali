.class public abstract Lscala/collection/mutable/BufferProxy$class;
.super Ljava/lang/Object;
.source "BufferProxy.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/BufferProxy;)V
    .locals 0

    return-void
.end method

.method public static $less$less(Lscala/collection/mutable/BufferProxy;Lscala/collection/script/Message;)V
    .locals 0

    .line 136
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$less$less(Lscala/collection/script/Message;)V

    return-void
.end method

.method public static $plus$eq(Lscala/collection/mutable/BufferProxy;Ljava/lang/Object;)Lscala/collection/mutable/BufferProxy;
    .locals 1

    .line 44
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static $plus$eq$colon(Lscala/collection/mutable/BufferProxy;Ljava/lang/Object;)Lscala/collection/mutable/BufferProxy;
    .locals 1

    .line 73
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static $plus$plus$eq(Lscala/collection/mutable/BufferProxy;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/BufferProxy;
    .locals 1

    .line 53
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-object p0
.end method

.method public static $plus$plus$eq$colon(Lscala/collection/mutable/BufferProxy;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/BufferProxy;
    .locals 1

    .line 75
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static append(Lscala/collection/mutable/BufferProxy;Lscala/collection/Seq;)V
    .locals 0

    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public static appendAll(Lscala/collection/mutable/BufferProxy;Lscala/collection/TraversableOnce;)V
    .locals 0

    .line 65
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->appendAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static apply(Lscala/collection/mutable/BufferProxy;I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static clear(Lscala/collection/mutable/BufferProxy;)V
    .locals 0

    .line 129
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clear()V

    return-void
.end method

.method public static clone(Lscala/collection/mutable/BufferProxy;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 142
    new-instance v0, Lscala/collection/mutable/BufferProxy$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/BufferProxy$$anon$1;-><init>(Lscala/collection/mutable/BufferProxy;)V

    return-object v0
.end method

.method public static insert(Lscala/collection/mutable/BufferProxy;ILscala/collection/Seq;)V
    .locals 0

    .line 97
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-void
.end method

.method public static insertAll(Lscala/collection/mutable/BufferProxy;ILscala/collection/Iterable;)V
    .locals 0

    .line 107
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-void
.end method

.method public static insertAll(Lscala/collection/mutable/BufferProxy;ILscala/collection/Traversable;)V
    .locals 0

    .line 111
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-void
.end method

.method public static iterator(Lscala/collection/mutable/BufferProxy;)Lscala/collection/Iterator;
    .locals 0

    .line 36
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/mutable/BufferProxy;)I
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->length()I

    move-result p0

    return p0
.end method

.method public static prepend(Lscala/collection/mutable/BufferProxy;Lscala/collection/Seq;)V
    .locals 0

    .line 81
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->prependAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static prependAll(Lscala/collection/mutable/BufferProxy;Lscala/collection/TraversableOnce;)V
    .locals 0

    .line 88
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->prependAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static readOnly(Lscala/collection/mutable/BufferProxy;)Lscala/collection/Seq;
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->readOnly()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lscala/collection/mutable/BufferProxy;I)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static update(Lscala/collection/mutable/BufferProxy;ILjava/lang/Object;)V
    .locals 0

    .line 119
    invoke-interface {p0}, Lscala/collection/mutable/BufferProxy;->self()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    return-void
.end method
