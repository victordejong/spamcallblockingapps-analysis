.class public abstract Lscala/collection/SeqViewLike$ZippedAll$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$ZippedAll;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$ZippedAll;I)Lscala/Tuple2;
    .locals 3

    .line 141
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->scala$collection$SeqViewLike$ZippedAll$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqViewLike;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->scala$collection$SeqViewLike$ZippedAll$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->thisElem()Ljava/lang/Object;

    move-result-object v1

    .line 142
    :goto_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->thatSeq()Lscala/collection/Seq;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/Seq;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->thatSeq()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->thatElem()Ljava/lang/Object;

    move-result-object p0

    .line 141
    :goto_1
    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static length(Lscala/collection/SeqViewLike$ZippedAll;)I
    .locals 2

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 139
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->scala$collection$SeqViewLike$ZippedAll$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqViewLike;->length()I

    move-result v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->thatSeq()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->length()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p0

    return p0
.end method

.method public static thatSeq(Lscala/collection/SeqViewLike$ZippedAll;)Lscala/collection/Seq;
    .locals 0

    .line 138
    invoke-interface {p0}, Lscala/collection/SeqViewLike$ZippedAll;->other()Lscala/collection/GenIterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenIterable;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->toSeq()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method
