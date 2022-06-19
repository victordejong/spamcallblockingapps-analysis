.class public abstract Lscala/Product16$class;
.super Ljava/lang/Object;
.source "Product16.scala"


# direct methods
.method public static $init$(Lscala/Product16;)V
    .locals 0

    return-void
.end method

.method public static productArity(Lscala/Product16;)I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public static productElement(Lscala/Product16;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :pswitch_0
    invoke-interface {p0}, Lscala/Product16;->_16()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-interface {p0}, Lscala/Product16;->_15()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-interface {p0}, Lscala/Product16;->_14()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-interface {p0}, Lscala/Product16;->_13()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 48
    :pswitch_4
    invoke-interface {p0}, Lscala/Product16;->_12()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 47
    :pswitch_5
    invoke-interface {p0}, Lscala/Product16;->_11()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 46
    :pswitch_6
    invoke-interface {p0}, Lscala/Product16;->_10()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_7
    invoke-interface {p0}, Lscala/Product16;->_9()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 44
    :pswitch_8
    invoke-interface {p0}, Lscala/Product16;->_8()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_9
    invoke-interface {p0}, Lscala/Product16;->_7()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_a
    invoke-interface {p0}, Lscala/Product16;->_6()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 41
    :pswitch_b
    invoke-interface {p0}, Lscala/Product16;->_5()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_c
    invoke-interface {p0}, Lscala/Product16;->_4()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_d
    invoke-interface {p0}, Lscala/Product16;->_3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 38
    :pswitch_e
    invoke-interface {p0}, Lscala/Product16;->_2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 37
    :pswitch_f
    invoke-interface {p0}, Lscala/Product16;->_1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
