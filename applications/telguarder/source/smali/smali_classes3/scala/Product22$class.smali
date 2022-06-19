.class public abstract Lscala/Product22$class;
.super Ljava/lang/Object;
.source "Product22.scala"


# direct methods
.method public static $init$(Lscala/Product22;)V
    .locals 0

    return-void
.end method

.method public static productArity(Lscala/Product22;)I
    .locals 0

    const/16 p0, 0x16

    return p0
.end method

.method public static productElement(Lscala/Product22;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 59
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :pswitch_0
    invoke-interface {p0}, Lscala/Product22;->_22()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 57
    :pswitch_1
    invoke-interface {p0}, Lscala/Product22;->_21()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 56
    :pswitch_2
    invoke-interface {p0}, Lscala/Product22;->_20()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 55
    :pswitch_3
    invoke-interface {p0}, Lscala/Product22;->_19()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 54
    :pswitch_4
    invoke-interface {p0}, Lscala/Product22;->_18()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 53
    :pswitch_5
    invoke-interface {p0}, Lscala/Product22;->_17()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 52
    :pswitch_6
    invoke-interface {p0}, Lscala/Product22;->_16()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 51
    :pswitch_7
    invoke-interface {p0}, Lscala/Product22;->_15()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 50
    :pswitch_8
    invoke-interface {p0}, Lscala/Product22;->_14()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 49
    :pswitch_9
    invoke-interface {p0}, Lscala/Product22;->_13()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 48
    :pswitch_a
    invoke-interface {p0}, Lscala/Product22;->_12()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 47
    :pswitch_b
    invoke-interface {p0}, Lscala/Product22;->_11()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 46
    :pswitch_c
    invoke-interface {p0}, Lscala/Product22;->_10()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_d
    invoke-interface {p0}, Lscala/Product22;->_9()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 44
    :pswitch_e
    invoke-interface {p0}, Lscala/Product22;->_8()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_f
    invoke-interface {p0}, Lscala/Product22;->_7()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_10
    invoke-interface {p0}, Lscala/Product22;->_6()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 41
    :pswitch_11
    invoke-interface {p0}, Lscala/Product22;->_5()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_12
    invoke-interface {p0}, Lscala/Product22;->_4()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_13
    invoke-interface {p0}, Lscala/Product22;->_3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 38
    :pswitch_14
    invoke-interface {p0}, Lscala/Product22;->_2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 37
    :pswitch_15
    invoke-interface {p0}, Lscala/Product22;->_1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
