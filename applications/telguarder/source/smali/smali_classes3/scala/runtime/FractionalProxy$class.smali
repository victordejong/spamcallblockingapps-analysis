.class public abstract Lscala/runtime/FractionalProxy$class;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"


# direct methods
.method public static $init$(Lscala/runtime/FractionalProxy;)V
    .locals 0

    return-void
.end method

.method public static isWhole(Lscala/runtime/FractionalProxy;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static to(Lscala/runtime/FractionalProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 2

    .line 70
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-interface {p0}, Lscala/runtime/FractionalProxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/runtime/FractionalProxy;->integralNum()Lscala/math/Integral;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p2, p0}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lscala/runtime/FractionalProxy;Ljava/lang/Object;)Lscala/collection/immutable/Range$Partial;
    .locals 2

    .line 69
    new-instance v0, Lscala/collection/immutable/Range$Partial;

    new-instance v1, Lscala/runtime/FractionalProxy$$anonfun$to$1;

    invoke-direct {v1, p0, p1}, Lscala/runtime/FractionalProxy$$anonfun$to$1;-><init>(Lscala/runtime/FractionalProxy;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/collection/immutable/Range$Partial;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public static until(Lscala/runtime/FractionalProxy;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2

    .line 68
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-interface {p0}, Lscala/runtime/FractionalProxy;->self()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/runtime/FractionalProxy;->integralNum()Lscala/math/Integral;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p2, p0}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p0

    return-object p0
.end method

.method public static until(Lscala/runtime/FractionalProxy;Ljava/lang/Object;)Lscala/collection/immutable/Range$Partial;
    .locals 2

    .line 67
    new-instance v0, Lscala/collection/immutable/Range$Partial;

    new-instance v1, Lscala/runtime/FractionalProxy$$anonfun$until$1;

    invoke-direct {v1, p0, p1}, Lscala/runtime/FractionalProxy$$anonfun$until$1;-><init>(Lscala/runtime/FractionalProxy;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/collection/immutable/Range$Partial;-><init>(Lscala/Function1;)V

    return-object v0
.end method
