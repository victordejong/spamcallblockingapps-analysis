.class public abstract Lscala/collection/convert/Wrappers$JMapWrapperLike$class;
.super Ljava/lang/Object;
.source "Wrappers.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/Wrappers$JMapWrapperLike;)V
    .locals 0

    return-void
.end method

.method public static $minus$eq(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;
    .locals 1

    .line 266
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static $plus$eq(Lscala/collection/convert/Wrappers$JMapWrapperLike;Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;
    .locals 2

    .line 265
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static clear(Lscala/collection/convert/Wrappers$JMapWrapperLike;)V
    .locals 0

    .line 286
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static empty(Lscala/collection/convert/Wrappers$JMapWrapperLike;)Lscala/collection/mutable/Map;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;)Lscala/Option;
    .locals 1

    .line 256
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 260
    new-instance p0, Lscala/Some;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_0
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 258
    :cond_1
    new-instance p0, Lscala/Some;

    invoke-direct {p0, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static iterator(Lscala/collection/convert/Wrappers$JMapWrapperLike;)Lscala/collection/Iterator;
    .locals 1

    .line 280
    new-instance v0, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;-><init>(Lscala/collection/convert/Wrappers$JMapWrapperLike;)V

    return-object v0
.end method

.method public static put(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 269
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 270
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance p1, Lscala/Some;

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static remove(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 276
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 277
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance p1, Lscala/Some;

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static size(Lscala/collection/convert/Wrappers$JMapWrapperLike;)I
    .locals 0

    .line 253
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public static update(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 273
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
