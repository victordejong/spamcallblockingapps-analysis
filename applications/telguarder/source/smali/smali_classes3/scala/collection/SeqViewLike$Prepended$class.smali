.class public abstract Lscala/collection/SeqViewLike$Prepended$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Prepended;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Prepended;I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 187
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Prepended;->fst()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Prepended;->scala$collection$SeqViewLike$Prepended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static iterator(Lscala/collection/SeqViewLike$Prepended;)Lscala/collection/Iterator;
    .locals 2

    .line 184
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Prepended;->fst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Iterator$;->single(Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/SeqViewLike$Prepended$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/collection/SeqViewLike$Prepended$$anonfun$iterator$1;-><init>(Lscala/collection/SeqViewLike$Prepended;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->$plus$plus(Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Prepended;)I
    .locals 0

    .line 185
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Prepended;->scala$collection$SeqViewLike$Prepended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final viewIdentifier(Lscala/collection/SeqViewLike$Prepended;)Ljava/lang/String;
    .locals 0

    const-string p0, "A"

    return-object p0
.end method
