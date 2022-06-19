.class public abstract Lscala/collection/immutable/Map$class;
.super Ljava/lang/Object;
.source "Map.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/Map;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;
    .locals 0

    .line 34
    sget-object p0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {p0}, Lscala/collection/immutable/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;
    .locals 0

    return-object p0
.end method

.method public static toMap(Lscala/collection/immutable/Map;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0

    return-object p0
.end method

.method public static withDefault(Lscala/collection/immutable/Map;Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 1

    .line 54
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method

.method public static withDefaultValue(Lscala/collection/immutable/Map;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 2

    .line 64
    new-instance v0, Lscala/collection/immutable/Map$WithDefault;

    new-instance v1, Lscala/collection/immutable/Map$$anonfun$withDefaultValue$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/Map$$anonfun$withDefaultValue$1;-><init>(Lscala/collection/immutable/Map;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lscala/collection/immutable/Map$WithDefault;-><init>(Lscala/collection/immutable/Map;Lscala/Function1;)V

    return-object v0
.end method
