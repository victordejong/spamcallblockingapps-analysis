.class public abstract Lscala/collection/SeqViewLike$Forced$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Forced;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Forced;I)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Forced;->forced()Lscala/collection/GenSeq;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/GenSeq;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Forced;)I
    .locals 0

    .line 51
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Forced;->forced()Lscala/collection/GenSeq;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/GenSeq;->length()I

    move-result p0

    return p0
.end method
