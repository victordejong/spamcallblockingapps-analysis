.class public abstract Lscala/collection/mutable/Map$class;
.super Ljava/lang/Object;
.source "Map.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Map;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;
    .locals 0

    .line 29
    sget-object p0, Lscala/collection/mutable/Map$;->MODULE$:Lscala/collection/mutable/Map$;

    invoke-virtual {p0}, Lscala/collection/mutable/Map$;->empty()Lscala/collection/mutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;
    .locals 0

    return-object p0
.end method

.method public static withDefault(Lscala/collection/mutable/Map;Lscala/Function1;)Lscala/collection/mutable/Map;
    .locals 1

    .line 40
    new-instance v0, Lscala/collection/mutable/Map$WithDefault;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/Map$WithDefault;-><init>(Lscala/collection/mutable/Map;Lscala/Function1;)V

    return-object v0
.end method

.method public static withDefaultValue(Lscala/collection/mutable/Map;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 2

    .line 49
    new-instance v0, Lscala/collection/mutable/Map$WithDefault;

    new-instance v1, Lscala/collection/mutable/Map$$anonfun$withDefaultValue$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/Map$$anonfun$withDefaultValue$1;-><init>(Lscala/collection/mutable/Map;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lscala/collection/mutable/Map$WithDefault;-><init>(Lscala/collection/mutable/Map;Lscala/Function1;)V

    return-object v0
.end method
