.class public abstract Lscala/collection/Map$class;
.super Ljava/lang/Object;
.source "Map.scala"


# direct methods
.method public static $init$(Lscala/collection/Map;)V
    .locals 0

    return-void
.end method

.method public static empty(Lscala/collection/Map;)Lscala/collection/Map;
    .locals 0

    .line 31
    sget-object p0, Lscala/collection/Map$;->MODULE$:Lscala/collection/Map$;

    invoke-virtual {p0}, Lscala/collection/Map$;->empty()Lscala/collection/immutable/Map;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/Map;)Lscala/collection/Map;
    .locals 0

    return-object p0
.end method
