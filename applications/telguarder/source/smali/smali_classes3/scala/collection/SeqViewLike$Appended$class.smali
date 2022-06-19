.class public abstract Lscala/collection/SeqViewLike$Appended$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Appended;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Appended;I)Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->scala$collection$SeqViewLike$Appended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->scala$collection$SeqViewLike$Appended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->restSeq()Lscala/collection/GenSeq;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->scala$collection$SeqViewLike$Appended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Lscala/collection/GenSeq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Appended;)I
    .locals 1

    .line 94
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->scala$collection$SeqViewLike$Appended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->length()I

    move-result v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->restSeq()Lscala/collection/GenSeq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenSeq;->length()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static restSeq(Lscala/collection/SeqViewLike$Appended;)Lscala/collection/GenSeq;
    .locals 0

    .line 93
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Appended;->rest()Lscala/collection/GenTraversable;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenTraversable;->toSeq()Lscala/collection/GenSeq;

    move-result-object p0

    return-object p0
.end method
