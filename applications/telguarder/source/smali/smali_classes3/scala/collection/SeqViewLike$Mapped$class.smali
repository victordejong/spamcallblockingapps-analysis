.class public abstract Lscala/collection/SeqViewLike$Mapped$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Mapped;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Mapped;I)Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Mapped;->mapping()Lscala/Function1;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Mapped;->scala$collection$SeqViewLike$Mapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Mapped;)I
    .locals 0

    .line 66
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Mapped;->scala$collection$SeqViewLike$Mapped$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result p0

    return p0
.end method
