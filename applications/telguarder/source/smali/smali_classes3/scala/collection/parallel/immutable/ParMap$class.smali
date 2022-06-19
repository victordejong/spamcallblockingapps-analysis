.class public abstract Lscala/collection/parallel/immutable/ParMap$class;
.super Ljava/lang/Object;
.source "ParMap.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/immutable/ParMap;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/parallel/immutable/ParMap;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0

    .line 42
    new-instance p0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {p0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>()V

    return-object p0
.end method

.method public static mapCompanion(Lscala/collection/parallel/immutable/ParMap;)Lscala/collection/generic/GenericParMapCompanion;
    .locals 0

    .line 40
    sget-object p0, Lscala/collection/parallel/immutable/ParMap$;->MODULE$:Lscala/collection/parallel/immutable/ParMap$;

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/parallel/immutable/ParMap;)Ljava/lang/String;
    .locals 0

    const-string p0, "ParMap"

    return-object p0
.end method

.method public static toMap(Lscala/collection/parallel/immutable/ParMap;Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0

    return-object p0
.end method

.method public static updated(Lscala/collection/parallel/immutable/ParMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;
    .locals 1

    .line 48
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/parallel/immutable/ParMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p0

    return-object p0
.end method

.method public static withDefault(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
    .locals 1

    .line 60
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public static withDefaultValue(Lscala/collection/parallel/immutable/ParMap;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;
    .locals 2

    .line 69
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    new-instance v1, Lscala/collection/parallel/immutable/ParMap$$anonfun$withDefaultValue$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/immutable/ParMap$$anonfun$withDefaultValue$1;-><init>(Lscala/collection/parallel/immutable/ParMap;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method
