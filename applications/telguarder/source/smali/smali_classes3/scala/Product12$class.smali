.class public abstract Lscala/Product12$class;
.super Ljava/lang/Object;
.source "Product12.scala"


# direct methods
.method public static $init$(Lscala/Product12;)V
    .locals 0

    return-void
.end method

.method public static productArity(Lscala/Product12;)I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public static productElement(Lscala/Product12;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :pswitch_0
    invoke-interface {p0}, Lscala/Product12;->_12()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-interface {p0}, Lscala/Product12;->_11()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-interface {p0}, Lscala/Product12;->_10()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-interface {p0}, Lscala/Product12;->_9()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 44
    :pswitch_4
    invoke-interface {p0}, Lscala/Product12;->_8()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_5
    invoke-interface {p0}, Lscala/Product12;->_7()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_6
    invoke-interface {p0}, Lscala/Product12;->_6()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 41
    :pswitch_7
    invoke-interface {p0}, Lscala/Product12;->_5()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_8
    invoke-interface {p0}, Lscala/Product12;->_4()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_9
    invoke-interface {p0}, Lscala/Product12;->_3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 38
    :pswitch_a
    invoke-interface {p0}, Lscala/Product12;->_2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 37
    :pswitch_b
    invoke-interface {p0}, Lscala/Product12;->_1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
