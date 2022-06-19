.class public abstract Lscala/Proxy$class;
.super Ljava/lang/Object;
.source "Proxy.scala"


# direct methods
.method public static $init$(Lscala/Proxy;)V
    .locals 0

    return-void
.end method

.method public static equals(Lscala/Proxy;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p0, :cond_1

    .line 32
    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_1

    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static hashCode(Lscala/Proxy;)I
    .locals 0

    .line 28
    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString(Lscala/Proxy;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-interface {p0}, Lscala/Proxy;->self()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
