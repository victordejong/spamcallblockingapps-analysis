.class public abstract Lscala/runtime/ScalaNumberProxy$class;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"


# direct methods
.method public static $init$(Lscala/runtime/ScalaNumberProxy;)V
    .locals 0

    return-void
.end method

.method public static abs(Lscala/runtime/ScalaNumberProxy;)Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/math/Numeric;->abs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static byteValue(Lscala/runtime/ScalaNumberProxy;)B
    .locals 0

    .line 32
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->intValue()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static doubleValue(Lscala/runtime/ScalaNumberProxy;)D
    .locals 2

    .line 28
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/math/Numeric;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static floatValue(Lscala/runtime/ScalaNumberProxy;)F
    .locals 1

    .line 29
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/math/Numeric;->toFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static intValue(Lscala/runtime/ScalaNumberProxy;)I
    .locals 1

    .line 31
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/math/Numeric;->toInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static longValue(Lscala/runtime/ScalaNumberProxy;)J
    .locals 2

    .line 30
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/math/Numeric;->toLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static max(Lscala/runtime/ScalaNumberProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lscala/math/Numeric;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static min(Lscala/runtime/ScalaNumberProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lscala/math/Numeric;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static shortValue(Lscala/runtime/ScalaNumberProxy;)S
    .locals 0

    .line 33
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->intValue()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static signum(Lscala/runtime/ScalaNumberProxy;)I
    .locals 1

    .line 42
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->num()Lscala/math/Numeric;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lscala/math/Numeric;->signum(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static underlying(Lscala/runtime/ScalaNumberProxy;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/runtime/ScalaNumberProxy;->self()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
