.class public abstract Lscala/math/Ordering$OptionOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$OptionOrdering;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/math/Ordering$OptionOrdering;Lscala/Option;Lscala/Option;)I
    .locals 1

    .line 338
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 340
    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 341
    :cond_1
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/Some;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Some;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lscala/Some;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Some;

    invoke-interface {p0}, Lscala/math/Ordering$OptionOrdering;->optionOrdering()Lscala/math/Ordering;

    move-result-object p0

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0

    .line 338
    :cond_3
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
