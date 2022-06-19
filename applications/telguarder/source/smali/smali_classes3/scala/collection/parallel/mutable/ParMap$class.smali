.class public abstract Lscala/collection/parallel/mutable/ParMap$class;
.super Ljava/lang/Object;
.source "ParMap.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/mutable/ParMap;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/parallel/mutable/ParMap;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 38
    new-instance p0, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>()V

    return-object p0
.end method

.method public static mapCompanion(Lscala/collection/parallel/mutable/ParMap;)Lscala/collection/generic/GenericParMapCompanion;
    .locals 0

    .line 36
    sget-object p0, Lscala/collection/parallel/mutable/ParMap$;->MODULE$:Lscala/collection/parallel/mutable/ParMap$;

    return-object p0
.end method

.method public static newCombiner(Lscala/collection/parallel/mutable/ParMap;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 34
    sget-object p0, Lscala/collection/parallel/mutable/ParMap$;->MODULE$:Lscala/collection/parallel/mutable/ParMap$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static updated(Lscala/collection/parallel/mutable/ParMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 1

    .line 42
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/mutable/ParMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p0

    return-object p0
.end method

.method public static withDefault(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)Lscala/collection/parallel/mutable/ParMap;
    .locals 1

    .line 52
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public static withDefaultValue(Lscala/collection/parallel/mutable/ParMap;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 2

    .line 61
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    new-instance v1, Lscala/collection/parallel/mutable/ParMap$$anonfun$withDefaultValue$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/mutable/ParMap$$anonfun$withDefaultValue$1;-><init>(Lscala/collection/parallel/mutable/ParMap;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method
