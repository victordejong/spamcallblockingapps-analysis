.class public abstract Lscala/runtime/OrderedProxy$class;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"


# direct methods
.method public static $init$(Lscala/runtime/OrderedProxy;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/runtime/OrderedProxy;Ljava/lang/Object;)I
    .locals 1

    .line 76
    invoke-interface {p0}, Lscala/runtime/OrderedProxy;->ord()Lscala/math/Ordering;

    move-result-object v0

    invoke-interface {p0}, Lscala/runtime/OrderedProxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
