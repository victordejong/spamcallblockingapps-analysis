.class public abstract Lscala/collection/SeqViewLike$Reversed$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$Reversed;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/SeqViewLike$Reversed;I)Ljava/lang/Object;
    .locals 1

    .line 148
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Reversed;->scala$collection$SeqViewLike$Reversed$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/SeqViewLike$Reversed;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    invoke-interface {v0, p0}, Lscala/collection/SeqViewLike;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createReversedIterator(Lscala/collection/SeqViewLike$Reversed;)Lscala/collection/Iterator;
    .locals 3

    .line 152
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 153
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Reversed;->scala$collection$SeqViewLike$Reversed$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v1

    new-instance v2, Lscala/collection/SeqViewLike$Reversed$$anonfun$createReversedIterator$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/SeqViewLike$Reversed$$anonfun$createReversedIterator$1;-><init>(Lscala/collection/SeqViewLike$Reversed;Lscala/runtime/ObjectRef;)V

    invoke-interface {v1, v2}, Lscala/collection/SeqViewLike;->foreach(Lscala/Function1;)V

    .line 154
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Lscala/collection/immutable/List;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->iterator()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static iterator(Lscala/collection/SeqViewLike$Reversed;)Lscala/collection/Iterator;
    .locals 0

    .line 146
    invoke-static {p0}, Lscala/collection/SeqViewLike$Reversed$class;->createReversedIterator(Lscala/collection/SeqViewLike$Reversed;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lscala/collection/SeqViewLike$Reversed;)I
    .locals 0

    .line 147
    invoke-interface {p0}, Lscala/collection/SeqViewLike$Reversed;->scala$collection$SeqViewLike$Reversed$$$outer()Lscala/collection/SeqViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/SeqViewLike;->length()I

    move-result p0

    return p0
.end method

.method public static final viewIdentifier(Lscala/collection/SeqViewLike$Reversed;)Ljava/lang/String;
    .locals 0

    const-string p0, "R"

    return-object p0
.end method
