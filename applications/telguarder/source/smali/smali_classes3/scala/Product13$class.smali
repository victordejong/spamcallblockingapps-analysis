.class public abstract Lscala/Product13$class;
.super Ljava/lang/Object;
.source "Product13.scala"


# direct methods
.method public static $init$(Lscala/Product13;)V
    .locals 0

    return-void
.end method

.method public static productArity(Lscala/Product13;)I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public static productElement(Lscala/Product13;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 50
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :pswitch_0
    invoke-interface {p0}, Lscala/Product13;->_13()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-interface {p0}, Lscala/Product13;->_12()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-interface {p0}, Lscala/Product13;->_11()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-interface {p0}, Lscala/Product13;->_10()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_4
    invoke-interface {p0}, Lscala/Product13;->_9()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 44
    :pswitch_5
    invoke-interface {p0}, Lscala/Product13;->_8()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_6
    invoke-interface {p0}, Lscala/Product13;->_7()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_7
    invoke-interface {p0}, Lscala/Product13;->_6()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 41
    :pswitch_8
    invoke-interface {p0}, Lscala/Product13;->_5()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_9
    invoke-interface {p0}, Lscala/Product13;->_4()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_a
    invoke-interface {p0}, Lscala/Product13;->_3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 38
    :pswitch_b
    invoke-interface {p0}, Lscala/Product13;->_2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 37
    :pswitch_c
    invoke-interface {p0}, Lscala/Product13;->_1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
