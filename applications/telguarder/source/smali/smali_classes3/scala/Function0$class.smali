.class public abstract Lscala/Function0$class;
.super Ljava/lang/Object;
.source "Function0.scala"


# direct methods
.method public static $init$(Lscala/Function0;)V
    .locals 0

    return-void
.end method

.method public static apply$mcB$sp(Lscala/Function0;)B
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public static apply$mcC$sp(Lscala/Function0;)C
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public static apply$mcD$sp(Lscala/Function0;)D
    .locals 2

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static apply$mcF$sp(Lscala/Function0;)F
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static apply$mcI$sp(Lscala/Function0;)I
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static apply$mcJ$sp(Lscala/Function0;)J
    .locals 2

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static apply$mcS$sp(Lscala/Function0;)S
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public static apply$mcV$sp(Lscala/Function0;)V
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcZ$sp(Lscala/Function0;)Z
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toString(Lscala/Function0;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function0>"

    return-object p0
.end method
