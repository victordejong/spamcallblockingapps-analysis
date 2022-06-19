.class public abstract Lscala/Function1$class;
.super Ljava/lang/Object;
.source "Function1.scala"


# direct methods
.method public static $init$(Lscala/Function1;)V
    .locals 0

    return-void
.end method

.method public static andThen(Lscala/Function1;Lscala/Function1;)Lscala/Function1;
    .locals 1

    .line 52
    new-instance v0, Lscala/Function1$$anonfun$andThen$1;

    invoke-direct {v0, p0, p1}, Lscala/Function1$$anonfun$andThen$1;-><init>(Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public static apply$mcDD$sp(Lscala/Function1;D)D
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcDF$sp(Lscala/Function1;F)D
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcDI$sp(Lscala/Function1;I)D
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcDJ$sp(Lscala/Function1;J)D
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcFD$sp(Lscala/Function1;D)F
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static apply$mcFF$sp(Lscala/Function1;F)F
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static apply$mcFI$sp(Lscala/Function1;I)F
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static apply$mcFJ$sp(Lscala/Function1;J)F
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static apply$mcID$sp(Lscala/Function1;D)I
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static apply$mcIF$sp(Lscala/Function1;F)I
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static apply$mcII$sp(Lscala/Function1;I)I
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static apply$mcIJ$sp(Lscala/Function1;J)I
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static apply$mcJD$sp(Lscala/Function1;D)J
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcJF$sp(Lscala/Function1;F)J
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcJI$sp(Lscala/Function1;I)J
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcJJ$sp(Lscala/Function1;J)J
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static apply$mcVD$sp(Lscala/Function1;D)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcVF$sp(Lscala/Function1;F)V
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcVI$sp(Lscala/Function1;I)V
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcVJ$sp(Lscala/Function1;J)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcZD$sp(Lscala/Function1;D)Z
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static apply$mcZF$sp(Lscala/Function1;F)Z
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static apply$mcZI$sp(Lscala/Function1;I)Z
    .locals 0

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static apply$mcZJ$sp(Lscala/Function1;J)Z
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;
    .locals 1

    .line 44
    new-instance v0, Lscala/Function1$$anonfun$compose$1;

    invoke-direct {v0, p0, p1}, Lscala/Function1$$anonfun$compose$1;-><init>(Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public static toString(Lscala/Function1;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function1>"

    return-object p0
.end method
