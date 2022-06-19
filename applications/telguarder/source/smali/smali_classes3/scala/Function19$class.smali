.class public abstract Lscala/Function19$class;
.super Ljava/lang/Object;
.source "Function19.scala"


# direct methods
.method public static $init$(Lscala/Function19;)V
    .locals 0

    return-void
.end method

.method public static curried(Lscala/Function19;)Lscala/Function1;
    .locals 1

    .line 26
    new-instance v0, Lscala/Function19$$anonfun$curried$1;

    invoke-direct {v0, p0}, Lscala/Function19$$anonfun$curried$1;-><init>(Lscala/Function19;)V

    return-object v0
.end method

.method public static toString(Lscala/Function19;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function19>"

    return-object p0
.end method

.method public static tupled(Lscala/Function19;)Lscala/Function1;
    .locals 1

    .line 34
    new-instance v0, Lscala/Function19$$anonfun$tupled$1;

    invoke-direct {v0, p0}, Lscala/Function19$$anonfun$tupled$1;-><init>(Lscala/Function19;)V

    return-object v0
.end method
