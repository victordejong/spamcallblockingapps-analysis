.class public abstract Lscala/collection/SeqViewLike$Zipped$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Zipped;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Zipped;I)Lscala/Tuple2;
    .locals 2

    .line 134
    new-instance v0, Lscala/Tuple2;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->scala$collection$SeqViewLike$Zipped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->thatSeq()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static length(Lscala/collection/SeqViewLike$Zipped;)I
    .locals 2

    .line 133
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->thatSeq()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->scala$collection$SeqViewLike$Zipped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqViewLike;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/Seq;->lengthCompare(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->thatSeq()Lscala/collection/Seq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Seq;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->scala$collection$SeqViewLike$Zipped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static thatSeq(Lscala/collection/SeqViewLike$Zipped;)Lscala/collection/Seq;
    .locals 0

    .line 131
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Zipped;->other()Lscala/collection/GenIterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenIterable;->seq()Lscala/collection/Iterable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/Iterable;->toSeq()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method
