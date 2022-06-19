.class public abstract Lscala/ref/Reference$class;
.super Ljava/lang/Object;
.source "Reference.scala"


# direct methods
.method public static $init$(Lscala/ref/Reference;)V
    .locals 0

    return-void
.end method

.method public static toString(Lscala/ref/Reference;)Ljava/lang/String;
    .locals 1

    .line 20
    invoke-interface {p0}, Lscala/ref/Reference;->get()Lscala/Option;

    move-result-object p0

    invoke-virtual {p0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "<deleted>"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
