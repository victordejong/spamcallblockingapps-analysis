.class public abstract Lscala/Product8$class;
.super Ljava/lang/Object;
.source "Product8.scala"


# direct methods
.method public static $init$(Lscala/Product8;)V
    .locals 0

    return-void
.end method

.method public static productArity(Lscala/Product8;)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static productElement(Lscala/Product8;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :pswitch_0
    invoke-interface {p0}, Lscala/Product8;->_8()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-interface {p0}, Lscala/Product8;->_7()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-interface {p0}, Lscala/Product8;->_6()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-interface {p0}, Lscala/Product8;->_5()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_4
    invoke-interface {p0}, Lscala/Product8;->_4()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_5
    invoke-interface {p0}, Lscala/Product8;->_3()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 38
    :pswitch_6
    invoke-interface {p0}, Lscala/Product8;->_2()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 37
    :pswitch_7
    invoke-interface {p0}, Lscala/Product8;->_1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
