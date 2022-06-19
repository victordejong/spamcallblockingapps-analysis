.class public abstract Lscala/ref/ReferenceWrapper$class;
.super Ljava/lang/Object;
.source "ReferenceWrapper.scala"


# direct methods
.method public static $init$(Lscala/ref/ReferenceWrapper;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/ref/ReferenceWrapper;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-interface {p0}, Lscala/ref/ReferenceWrapper;->underlying()Ljava/lang/ref/Reference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static clear(Lscala/ref/ReferenceWrapper;)V
    .locals 0

    .line 23
    invoke-interface {p0}, Lscala/ref/ReferenceWrapper;->underlying()Ljava/lang/ref/Reference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public static enqueue(Lscala/ref/ReferenceWrapper;)Z
    .locals 0

    .line 24
    invoke-interface {p0}, Lscala/ref/ReferenceWrapper;->underlying()Ljava/lang/ref/Reference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->enqueue()Z

    move-result p0

    return p0
.end method

.method public static get(Lscala/ref/ReferenceWrapper;)Lscala/Option;
    .locals 1

    .line 17
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-interface {p0}, Lscala/ref/ReferenceWrapper;->underlying()Ljava/lang/ref/Reference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static isEnqueued(Lscala/ref/ReferenceWrapper;)Z
    .locals 0

    .line 25
    invoke-interface {p0}, Lscala/ref/ReferenceWrapper;->underlying()Ljava/lang/ref/Reference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->isEnqueued()Z

    move-result p0

    return p0
.end method

.method public static self(Lscala/ref/ReferenceWrapper;)Ljava/lang/ref/Reference;
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/ref/ReferenceWrapper;->underlying()Ljava/lang/ref/Reference;

    move-result-object p0

    return-object p0
.end method
