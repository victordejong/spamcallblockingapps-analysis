.class public abstract Lscala/collection/mutable/DefaultMapModel$class;
.super Ljava/lang/Object;
.source "DefaultMapModel.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/DefaultMapModel;)V
    .locals 0

    return-void
.end method

.method public static $plus$eq(Lscala/collection/mutable/DefaultMapModel;Lscala/Tuple2;)Lscala/collection/mutable/DefaultMapModel;
    .locals 1

    .line 43
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lscala/collection/mutable/DefaultMapModel;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    return-object p0
.end method

.method public static get(Lscala/collection/mutable/DefaultMapModel;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 32
    invoke-interface {p0, p1}, Lscala/collection/mutable/DefaultMapModel;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 33
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static iterator(Lscala/collection/mutable/DefaultMapModel;)Lscala/collection/Iterator;
    .locals 2

    .line 45
    invoke-interface {p0}, Lscala/collection/mutable/DefaultMapModel;->entries()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/DefaultMapModel$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/DefaultMapModel$$anonfun$iterator$1;-><init>(Lscala/collection/mutable/DefaultMapModel;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static put(Lscala/collection/mutable/DefaultMapModel;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1

    .line 38
    invoke-interface {p0, p1}, Lscala/collection/mutable/DefaultMapModel;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lscala/collection/mutable/DefaultEntry;

    invoke-direct {v0, p1, p2}, Lscala/collection/mutable/DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/DefaultMapModel;->addEntry(Lscala/collection/mutable/DefaultEntry;)V

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p2}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    new-instance p1, Lscala/Some;

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
