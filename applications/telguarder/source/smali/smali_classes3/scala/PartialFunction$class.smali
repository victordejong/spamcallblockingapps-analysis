.class public abstract Lscala/PartialFunction$class;
.super Ljava/lang/Object;
.source "PartialFunction.scala"


# direct methods
.method public static $init$(Lscala/PartialFunction;)V
    .locals 0

    return-void
.end method

.method public static andThen(Lscala/PartialFunction;Lscala/Function1;)Lscala/PartialFunction;
    .locals 1

    .line 87
    new-instance v0, Lscala/PartialFunction$AndThen;

    invoke-direct {v0, p0, p1}, Lscala/PartialFunction$AndThen;-><init>(Lscala/PartialFunction;Lscala/Function1;)V

    return-object v0
.end method

.method public static applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-interface {p0, p1}, Lscala/PartialFunction;->isDefinedAt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static lift(Lscala/PartialFunction;)Lscala/Function1;
    .locals 1

    .line 94
    new-instance v0, Lscala/PartialFunction$Lifted;

    invoke-direct {v0, p0}, Lscala/PartialFunction$Lifted;-><init>(Lscala/PartialFunction;)V

    return-object v0
.end method

.method public static orElse(Lscala/PartialFunction;Lscala/PartialFunction;)Lscala/PartialFunction;
    .locals 1

    .line 76
    new-instance v0, Lscala/PartialFunction$OrElse;

    invoke-direct {v0, p0, p1}, Lscala/PartialFunction$OrElse;-><init>(Lscala/PartialFunction;Lscala/PartialFunction;)V

    return-object v0
.end method

.method public static runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;
    .locals 1

    .line 140
    new-instance v0, Lscala/PartialFunction$$anonfun$runWith$1;

    invoke-direct {v0, p0, p1}, Lscala/PartialFunction$$anonfun$runWith$1;-><init>(Lscala/PartialFunction;Lscala/Function1;)V

    return-object v0
.end method
