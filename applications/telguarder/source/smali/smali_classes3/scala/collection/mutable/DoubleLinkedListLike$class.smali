.class public abstract Lscala/collection/mutable/DoubleLinkedListLike$class;
.super Ljava/lang/Object;
.source "DoubleLinkedListLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/DoubleLinkedListLike;)V
    .locals 0

    return-void
.end method

.method public static append(Lscala/collection/mutable/DoubleLinkedListLike;Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;
    .locals 1

    .line 68
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {v0}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike;->next_$eq(Lscala/collection/mutable/Seq;)V

    .line 73
    invoke-interface {p1}, Lscala/collection/mutable/Seq;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/mutable/DoubleLinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Seq;

    invoke-interface {p1, v0}, Lscala/collection/mutable/DoubleLinkedListLike;->prev_$eq(Lscala/collection/mutable/Seq;)V

    .line 71
    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DoubleLinkedListLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/DoubleLinkedListLike;->append(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;

    .line 77
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->repr()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lscala/collection/mutable/Seq;

    :goto_1
    return-object p1
.end method

.method public static apply(Lscala/collection/mutable/DoubleLinkedListLike;I)Ljava/lang/Object;
    .locals 2

    .line 117
    new-instance v0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$1;-><init>(Lscala/collection/mutable/DoubleLinkedListLike;)V

    new-instance v1, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$2;-><init>(Lscala/collection/mutable/DoubleLinkedListLike;I)V

    invoke-static {p0, p1, v0, v1}, Lscala/collection/mutable/DoubleLinkedListLike$class;->atLocation(Lscala/collection/mutable/DoubleLinkedListLike;ILscala/Function1;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static atLocation(Lscala/collection/mutable/DoubleLinkedListLike;ILscala/Function1;Lscala/Function0;)Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 103
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Seq;

    :goto_0
    if-lez p1, :cond_2

    .line 106
    check-cast p0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    .line 108
    move-object v0, p0

    check-cast v0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {v0}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {p2, p0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static drop(Lscala/collection/mutable/DoubleLinkedListLike;I)Lscala/collection/mutable/Seq;
    .locals 0

    .line 115
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->drop(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Seq;

    return-object p0
.end method

.method public static get(Lscala/collection/mutable/DoubleLinkedListLike;I)Lscala/Option;
    .locals 2

    .line 119
    new-instance v0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$1;-><init>(Lscala/collection/mutable/DoubleLinkedListLike;)V

    new-instance v1, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$2;

    invoke-direct {v1, p0}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$2;-><init>(Lscala/collection/mutable/DoubleLinkedListLike;)V

    invoke-static {p0, p1, v0, v1}, Lscala/collection/mutable/DoubleLinkedListLike$class;->atLocation(Lscala/collection/mutable/DoubleLinkedListLike;ILscala/Function1;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Option;

    return-object p0
.end method

.method public static insert(Lscala/collection/mutable/DoubleLinkedListLike;Lscala/collection/mutable/Seq;)V
    .locals 1

    .line 82
    invoke-interface {p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike;->scala$collection$mutable$DoubleLinkedListLike$$super$insert(Lscala/collection/mutable/Seq;)V

    .line 83
    invoke-interface {p1}, Lscala/collection/mutable/Seq;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/DoubleLinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Seq;

    invoke-interface {p1, p0}, Lscala/collection/mutable/DoubleLinkedListLike;->prev_$eq(Lscala/collection/mutable/Seq;)V

    :cond_0
    return-void
.end method

.method public static remove(Lscala/collection/mutable/DoubleLinkedListLike;)V
    .locals 2

    .line 97
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DoubleLinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->prev()Lscala/collection/mutable/Seq;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/DoubleLinkedListLike;->prev_$eq(Lscala/collection/mutable/Seq;)V

    .line 99
    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->prev()Lscala/collection/mutable/Seq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->prev()Lscala/collection/mutable/Seq;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/DoubleLinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/mutable/LinkedListLike;->next_$eq(Lscala/collection/mutable/Seq;)V

    :cond_0
    return-void
.end method

.method public static scala$collection$mutable$DoubleLinkedListLike$$outofbounds(Lscala/collection/mutable/DoubleLinkedListLike;I)Lscala/runtime/Nothing$;
    .locals 0

    .line 113
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tail(Lscala/collection/mutable/DoubleLinkedListLike;)Lscala/collection/mutable/Seq;
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-interface {p0, v0}, Lscala/collection/mutable/DoubleLinkedListLike;->drop(I)Lscala/collection/mutable/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static update(Lscala/collection/mutable/DoubleLinkedListLike;ILjava/lang/Object;)V
    .locals 1

    .line 118
    new-instance v0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1;

    invoke-direct {v0, p0, p2}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1;-><init>(Lscala/collection/mutable/DoubleLinkedListLike;Ljava/lang/Object;)V

    new-instance p2, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$2;

    invoke-direct {p2, p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$2;-><init>(Lscala/collection/mutable/DoubleLinkedListLike;I)V

    invoke-static {p0, p1, v0, p2}, Lscala/collection/mutable/DoubleLinkedListLike$class;->atLocation(Lscala/collection/mutable/DoubleLinkedListLike;ILscala/Function1;Lscala/Function0;)Ljava/lang/Object;

    return-void
.end method
