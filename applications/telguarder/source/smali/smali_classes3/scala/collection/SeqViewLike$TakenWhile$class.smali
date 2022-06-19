.class public abstract Lscala/collection/SeqViewLike$TakenWhile$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$TakenWhile;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$TakenWhile;I)Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-interface {p0}, Lscala/collection/SeqViewLike$TakenWhile;->len()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$TakenWhile;->scala$collection$SeqViewLike$TakenWhile$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static len(Lscala/collection/SeqViewLike$TakenWhile;)I
    .locals 1

    .line 115
    invoke-interface {p0}, Lscala/collection/SeqViewLike$TakenWhile;->scala$collection$SeqViewLike$TakenWhile$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$TakenWhile;->pred()Lscala/Function1;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/SeqViewLike;->prefixLength(Lscala/Function1;)I

    move-result p0

    return p0
.end method

.method public static length(Lscala/collection/SeqViewLike$TakenWhile;)I
    .locals 0

    .line 116
    invoke-interface {p0}, Lscala/collection/SeqViewLike$TakenWhile;->len()I

    move-result p0

    return p0
.end method
