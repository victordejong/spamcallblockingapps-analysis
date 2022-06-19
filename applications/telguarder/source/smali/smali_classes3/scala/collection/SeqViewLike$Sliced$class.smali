.class public abstract Lscala/collection/SeqViewLike$Sliced$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Sliced;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Sliced;I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    .line 58
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->from()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->until()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->scala$collection$SeqViewLike$Sliced$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->from()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static foreach(Lscala/collection/SeqViewLike$Sliced;Lscala/Function1;)V
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static iterator(Lscala/collection/SeqViewLike$Sliced;)Lscala/collection/Iterator;
    .locals 2

    .line 62
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->scala$collection$SeqViewLike$Sliced$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->from()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->endpoints()Lscala/collection/generic/SliceInterval;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->width()I

    move-result p0

    invoke-interface {v0, p0}, Lscala/collection/Iterator;->take(I)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Sliced;)I
    .locals 0

    .line 56
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Sliced;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterator;->size()I

    move-result p0

    return p0
.end method
