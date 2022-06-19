.class public abstract Lscala/collection/SeqViewLike$DroppedWhile$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$DroppedWhile;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$DroppedWhile;I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 126
    invoke-interface {p0}, Lscala/collection/SeqViewLike$DroppedWhile;->scala$collection$SeqViewLike$DroppedWhile$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$DroppedWhile;->start()I

    move-result p0

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static length(Lscala/collection/SeqViewLike$DroppedWhile;)I
    .locals 1

    .line 124
    invoke-interface {p0}, Lscala/collection/SeqViewLike$DroppedWhile;->scala$collection$SeqViewLike$DroppedWhile$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$DroppedWhile;->start()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static start(Lscala/collection/SeqViewLike$DroppedWhile;)I
    .locals 1

    .line 123
    invoke-interface {p0}, Lscala/collection/SeqViewLike$DroppedWhile;->scala$collection$SeqViewLike$DroppedWhile$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$DroppedWhile;->pred()Lscala/Function1;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/SeqViewLike;->prefixLength(Lscala/Function1;)I

    move-result p0

    return p0
.end method
