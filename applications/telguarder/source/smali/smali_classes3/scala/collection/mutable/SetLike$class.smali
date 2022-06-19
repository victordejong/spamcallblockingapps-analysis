.class public abstract Lscala/collection/mutable/SetLike$class;
.super Ljava/lang/Object;
.source "SetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SetLike;)V
    .locals 0

    return-void
.end method

.method public static $less$less(Lscala/collection/mutable/SetLike;Lscala/collection/script/Message;)V
    .locals 2

    .line 215
    instance-of v0, p1, Lscala/collection/script/Include;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/script/Include;

    .line 216
    invoke-virtual {p1}, Lscala/collection/script/Include;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 217
    :cond_0
    instance-of v0, p1, Lscala/collection/script/Remove;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/script/Remove;

    invoke-virtual {p1}, Lscala/collection/script/Remove;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 218
    :cond_1
    instance-of v0, p1, Lscala/collection/script/Reset;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clear()V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 219
    :cond_2
    instance-of v0, p1, Lscala/collection/script/Script;

    if-eqz v0, :cond_3

    check-cast p1, Lscala/collection/script/Script;

    invoke-virtual {p1}, Lscala/collection/script/Script;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/mutable/SetLike$$anonfun$$less$less$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/SetLike$$anonfun$$less$less$1;-><init>(Lscala/collection/mutable/SetLike;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-void

    .line 220
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "message "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, " not understood"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $minus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .locals 0

    .line 183
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Set;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static $minus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;
    .locals 0

    .line 196
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Set;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/mutable/SetLike;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static $minus$minus(Lscala/collection/mutable/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .locals 0

    .line 206
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Set;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .locals 0

    .line 149
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Set;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static $plus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;
    .locals 0

    .line 164
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Set;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/mutable/SetLike;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/mutable/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .locals 0

    .line 175
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Set;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static add(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Z
    .locals 1

    .line 81
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static clear(Lscala/collection/mutable/SetLike;)V
    .locals 1

    .line 132
    new-instance v0, Lscala/collection/mutable/SetLike$$anonfun$clear$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/SetLike$$anonfun$clear$1;-><init>(Lscala/collection/mutable/SetLike;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/SetLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static clone(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Set;
    .locals 1

    .line 134
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->empty()Lscala/collection/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Growable;

    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    invoke-interface {p0}, Lscala/collection/mutable/Set;->seq()Lscala/collection/mutable/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/collection/generic/Growable;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static newBuilder(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 71
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->empty()Lscala/collection/Set;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Builder;

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/mutable/SetLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 73
    sget-object p0, Lscala/collection/parallel/mutable/ParSet$;->MODULE$:Lscala/collection/parallel/mutable/ParSet$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParSet$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Z
    .locals 1

    .line 92
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    return v0
.end method

.method public static result(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Set;
    .locals 0

    .line 139
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Set;

    return-object p0
.end method

.method public static retain(Lscala/collection/mutable/SetLike;Lscala/Function1;)V
    .locals 3

    .line 126
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    :goto_1
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0
.end method

.method public static update(Lscala/collection/mutable/SetLike;Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 111
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    :goto_0
    return-void
.end method
