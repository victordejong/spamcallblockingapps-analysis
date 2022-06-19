.class public abstract Lscala/collection/mutable/BufferLike$class;
.super Ljava/lang/Object;
.source "BufferLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Buffer;)V
    .locals 0

    return-void
.end method

.method public static $less$less(Lscala/collection/mutable/Buffer;Lscala/collection/script/Message;)V
    .locals 7

    .line 188
    instance-of v0, p1, Lscala/collection/script/Include;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lscala/collection/script/Include;

    sget-object v4, Lscala/collection/script/Start$;->MODULE$:Lscala/collection/script/Start$;

    .line 189
    invoke-virtual {v0}, Lscala/collection/script/Include;->location()Lscala/collection/script/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lscala/collection/script/Include;->elem()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, v1}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->prepend(Lscala/collection/Seq;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 190
    sget-object v5, Lscala/collection/script/End$;->MODULE$:Lscala/collection/script/End$;

    invoke-virtual {v0}, Lscala/collection/script/Include;->location()Lscala/collection/script/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lscala/collection/script/Include;->elem()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, v1}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->append(Lscala/collection/Seq;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_2
    if-eqz v4, :cond_3

    .line 191
    invoke-virtual {v0}, Lscala/collection/script/Include;->location()Lscala/collection/script/Location;

    move-result-object v5

    instance-of v5, v5, Lscala/collection/script/Index;

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lscala/collection/script/Include;->location()Lscala/collection/script/Location;

    move-result-object p1

    check-cast p1, Lscala/collection/script/Index;

    invoke-virtual {p1}, Lscala/collection/script/Index;->n()I

    move-result p1

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lscala/collection/script/Include;->elem()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lscala/collection/mutable/Buffer;->insert(ILscala/collection/Seq;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_3
    if-eqz v4, :cond_4

    .line 192
    sget-object v4, Lscala/collection/script/NoLo$;->MODULE$:Lscala/collection/script/NoLo$;

    invoke-virtual {v0}, Lscala/collection/script/Include;->location()Lscala/collection/script/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lscala/collection/script/Include;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 194
    :cond_4
    instance-of v0, p1, Lscala/collection/script/Update;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lscala/collection/script/Update;

    sget-object v4, Lscala/collection/script/Start$;->MODULE$:Lscala/collection/script/Start$;

    invoke-virtual {v0}, Lscala/collection/script/Update;->location()Lscala/collection/script/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lscala/collection/script/Update;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v1

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    .line 195
    sget-object v5, Lscala/collection/script/End$;->MODULE$:Lscala/collection/script/End$;

    invoke-virtual {v0}, Lscala/collection/script/Update;->location()Lscala/collection/script/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0}, Lscala/collection/script/Update;->elem()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_7
    if-eqz v4, :cond_8

    .line 196
    invoke-virtual {v0}, Lscala/collection/script/Update;->location()Lscala/collection/script/Location;

    move-result-object v4

    instance-of v4, v4, Lscala/collection/script/Index;

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lscala/collection/script/Update;->location()Lscala/collection/script/Location;

    move-result-object p1

    check-cast p1, Lscala/collection/script/Index;

    invoke-virtual {p1}, Lscala/collection/script/Index;->n()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/script/Update;->elem()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 198
    :cond_8
    instance-of v0, p1, Lscala/collection/script/Remove;

    if-eqz v0, :cond_f

    move-object v1, p1

    check-cast v1, Lscala/collection/script/Remove;

    sget-object v0, Lscala/collection/script/Start$;->MODULE$:Lscala/collection/script/Start$;

    invoke-virtual {v1}, Lscala/collection/script/Remove;->location()Lscala/collection/script/Location;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Lscala/collection/script/Remove;->elem()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_b

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_b
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_c

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_d

    invoke-interface {p0, v3}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    :cond_d
    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_e
    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_15

    .line 199
    sget-object v4, Lscala/collection/script/End$;->MODULE$:Lscala/collection/script/End$;

    invoke-virtual {v1}, Lscala/collection/script/Remove;->location()Lscala/collection/script/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Lscala/collection/script/Remove;->elem()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_10

    const/4 v3, 0x1

    goto :goto_4

    :cond_10
    if-nez p1, :cond_11

    goto :goto_4

    :cond_11
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    :cond_12
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_13

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    :cond_13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_14

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    :cond_14
    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    :cond_15
    if-eqz v0, :cond_1b

    .line 200
    invoke-virtual {v1}, Lscala/collection/script/Remove;->location()Lscala/collection/script/Location;

    move-result-object v4

    instance-of v4, v4, Lscala/collection/script/Index;

    if-eqz v4, :cond_1b

    invoke-virtual {v1}, Lscala/collection/script/Remove;->location()Lscala/collection/script/Location;

    move-result-object p1

    check-cast p1, Lscala/collection/script/Index;

    invoke-virtual {p1}, Lscala/collection/script/Index;->n()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/Buffer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lscala/collection/script/Remove;->elem()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_16

    goto :goto_5

    :cond_16
    if-nez v0, :cond_17

    const/4 v2, 0x0

    goto :goto_5

    :cond_17
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_18

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    :cond_18
    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_19

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    :cond_19
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lscala/collection/script/Index;->n()I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    :cond_1a
    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_6

    :cond_1b
    if-eqz v0, :cond_1c

    .line 201
    sget-object v0, Lscala/collection/script/NoLo$;->MODULE$:Lscala/collection/script/NoLo$;

    invoke-virtual {v1}, Lscala/collection/script/Remove;->location()Lscala/collection/script/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Lscala/collection/script/Remove;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_6

    .line 203
    :cond_1c
    instance-of v0, p1, Lscala/collection/script/Reset;

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clear()V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_6

    .line 204
    :cond_1d
    instance-of v0, p1, Lscala/collection/script/Script;

    if-eqz v0, :cond_1e

    check-cast p1, Lscala/collection/script/Script;

    invoke-virtual {p1}, Lscala/collection/script/Script;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/mutable/BufferLike$$anonfun$$less$less$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/BufferLike$$anonfun$$less$less$1;-><init>(Lscala/collection/mutable/Buffer;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_6
    return-void

    .line 205
    :cond_1e
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

.method public static $minus(Lscala/collection/mutable/Buffer;Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 236
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static $minus(Lscala/collection/mutable/Buffer;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 248
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p2}, Lscala/collection/mutable/Buffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p0, p3}, Lscala/collection/mutable/Buffer;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static $minus$eq(Lscala/collection/mutable/Buffer;Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 127
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 128
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p0
.end method

.method public static $minus$minus(Lscala/collection/mutable/Buffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 258
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static $plus$plus(Lscala/collection/mutable/Buffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 228
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static $plus$plus$eq$colon(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 137
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toTraversable()Lscala/collection/Traversable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-object p0
.end method

.method public static append(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V
    .locals 0

    .line 143
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->appendAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static appendAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V
    .locals 0

    .line 148
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public static clone(Lscala/collection/mutable/Buffer;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 265
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 266
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 267
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Buffer;

    return-object p0
.end method

.method public static insert(Lscala/collection/mutable/Buffer;ILscala/collection/Seq;)V
    .locals 0

    .line 167
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-void
.end method

.method public static prepend(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V
    .locals 0

    .line 153
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->prependAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static prependAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V
    .locals 0

    .line 158
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    return-void
.end method

.method public static readOnly(Lscala/collection/mutable/Buffer;)Lscala/collection/Seq;
    .locals 0

    .line 219
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->toSeq()Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lscala/collection/mutable/Buffer;II)V
    .locals 8

    .line 117
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v0, Lscala/collection/immutable/Range;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->start()I

    move-result p2

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->end()I

    move-result p2

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {v0}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v4

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->step()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-eqz p2, :cond_2

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v7

    if-ge v6, v7, :cond_3

    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_4

    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v5

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static stringPrefix(Lscala/collection/mutable/Buffer;)Ljava/lang/String;
    .locals 0

    const-string p0, "Buffer"

    return-object p0
.end method

.method public static trimEnd(Lscala/collection/mutable/Buffer;I)V
    .locals 3

    .line 181
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    invoke-interface {p0, v0, p1}, Lscala/collection/mutable/Buffer;->remove(II)V

    return-void
.end method

.method public static trimStart(Lscala/collection/mutable/Buffer;I)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-interface {p0, v0, p1}, Lscala/collection/mutable/Buffer;->remove(II)V

    return-void
.end method
