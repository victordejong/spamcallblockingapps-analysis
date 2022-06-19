.class public abstract Lscala/collection/parallel/ParMap$class;
.super Ljava/lang/Object;
.source "ParMap.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParMap;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/parallel/ParMap;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 42
    new-instance p0, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>()V

    return-object p0
.end method

.method public static mapCompanion(Lscala/collection/parallel/ParMap;)Lscala/collection/generic/GenericParMapCompanion;
    .locals 0

    .line 38
    sget-object p0, Lscala/collection/parallel/ParMap$;->MODULE$:Lscala/collection/parallel/ParMap$;

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/parallel/ParMap;)Ljava/lang/String;
    .locals 0

    const-string p0, "ParMap"

    return-object p0
.end method

.method public static updated(Lscala/collection/parallel/ParMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/ParMap;
    .locals 1

    .line 46
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/ParMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/ParMap;

    move-result-object p0

    return-object p0
.end method
