.class public abstract Lscala/reflect/ClassTag$class;
.super Ljava/lang/Object;
.source "ClassTag.scala"


# direct methods
.method public static $init$(Lscala/reflect/ClassTag;)V
    .locals 0

    return-void
.end method

.method public static canEqual(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z
    .locals 0

    .line 103
    instance-of p0, p1, Lscala/reflect/ClassTag;

    return p0
.end method

.method public static equals(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z
    .locals 1

    .line 104
    instance-of v0, p1, Lscala/reflect/ClassTag;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    check-cast p1, Lscala/reflect/ClassTag;

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static hashCode(Lscala/reflect/ClassTag;)I
    .locals 1

    .line 105
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;
    .locals 2

    .line 51
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-array p0, p1, [B

    goto/16 :goto_9

    .line 53
    :cond_2
    :goto_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-array p0, p1, [S

    goto/16 :goto_9

    .line 54
    :cond_5
    :goto_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-array p0, p1, [C

    goto/16 :goto_9

    .line 55
    :cond_8
    :goto_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    new-array p0, p1, [I

    goto :goto_9

    .line 56
    :cond_b
    :goto_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_c

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    new-array p0, p1, [J

    goto :goto_9

    .line 57
    :cond_e
    :goto_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_f

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    new-array p0, p1, [F

    goto :goto_9

    .line 58
    :cond_11
    :goto_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_12

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    new-array p0, p1, [D

    goto :goto_9

    .line 59
    :cond_14
    :goto_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_15

    if-eqz v0, :cond_16

    goto :goto_7

    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    new-array p0, p1, [Z

    goto :goto_9

    .line 60
    :cond_17
    :goto_7
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_18

    if-eqz v0, :cond_19

    goto :goto_8

    :cond_18
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    new-array p0, p1, [Lscala/runtime/BoxedUnit;

    goto :goto_9

    .line 61
    :cond_1a
    :goto_8
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private static final prettyprint$1(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/String;
    .locals 5

    .line 108
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/StringContext;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "Array["

    const-string v3, "]"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->prettyprint$1(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;
    .locals 1

    .line 99
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    new-instance p0, Lscala/Some;

    invoke-direct {p0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public static toString(Lscala/reflect/ClassTag;)Ljava/lang/String;
    .locals 1

    .line 110
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/reflect/ClassTag$class;->prettyprint$1(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;B)Lscala/Option;
    .locals 1

    .line 88
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;C)Lscala/Option;
    .locals 1

    .line 90
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;D)Lscala/Option;
    .locals 0

    .line 94
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;F)Lscala/Option;
    .locals 1

    .line 93
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;I)Lscala/Option;
    .locals 1

    .line 91
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;J)Lscala/Option;
    .locals 0

    .line 92
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;Ljava/lang/Object;)Lscala/Option;
    .locals 2

    if-eqz p1, :cond_9

    .line 74
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 75
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 76
    :cond_0
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 77
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 78
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 79
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 80
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 81
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 82
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 83
    :cond_7
    instance-of v0, p1, Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lscala/runtime/BoxedUnit;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 84
    :cond_8
    new-instance p0, Lscala/Some;

    invoke-direct {p0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_9
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;Lscala/runtime/BoxedUnit;)Lscala/Option;
    .locals 1

    .line 96
    sget-object v0, Lscala/runtime/BoxedUnit;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;S)Lscala/Option;
    .locals 1

    .line 89
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/reflect/ClassTag;Z)Lscala/Option;
    .locals 1

    .line 95
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lscala/reflect/ClassTag$class;->scala$reflect$ClassTag$$unapplyImpl(Lscala/reflect/ClassTag;Ljava/lang/Object;Ljava/lang/Class;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;
    .locals 2

    .line 47
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1}, Lscala/reflect/ClassTag;->arrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p0

    return-object p0
.end method
