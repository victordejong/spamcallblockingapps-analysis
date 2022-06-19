.class public abstract Lscala/runtime/IntegralProxy$class;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"


# direct methods
.method public static $init$(Lscala/runtime/IntegralProxy;)V
    .locals 0

    return-void
.end method

.method public static to(Lscala/runtime/IntegralProxy;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 3

    .line 53
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->num()Lscala/math/Integral;

    move-result-object v2

    invoke-interface {v2}, Lscala/math/Integral;->one()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->num()Lscala/math/Integral;

    move-result-object p0

    invoke-virtual {v0, v1, p1, v2, p0}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lscala/runtime/IntegralProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 2

    .line 54
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->num()Lscala/math/Integral;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p2, p0}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p0

    return-object p0
.end method

.method public static until(Lscala/runtime/IntegralProxy;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 3

    .line 51
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->num()Lscala/math/Integral;

    move-result-object v2

    invoke-interface {v2}, Lscala/math/Integral;->one()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->num()Lscala/math/Integral;

    move-result-object p0

    invoke-virtual {v0, v1, p1, v2, p0}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p0

    return-object p0
.end method

.method public static until(Lscala/runtime/IntegralProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2

    .line 52
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/runtime/IntegralProxy;->num()Lscala/math/Integral;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p2, p0}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p0

    return-object p0
.end method
