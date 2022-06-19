.class public abstract Lscala/Function12$class;
.super Ljava/lang/Object;
.source "Function12.scala"


# direct methods
.method public static $init$(Lscala/Function12;)V
    .locals 0

    return-void
.end method

.method public static curried(Lscala/Function12;)Lscala/Function1;
    .locals 1

    .line 26
    new-instance v0, Lscala/Function12$$anonfun$curried$1;

    invoke-direct {v0, p0}, Lscala/Function12$$anonfun$curried$1;-><init>(Lscala/Function12;)V

    return-object v0
.end method

.method public static toString(Lscala/Function12;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function12>"

    return-object p0
.end method

.method public static tupled(Lscala/Function12;)Lscala/Function1;
    .locals 1

    .line 34
    new-instance v0, Lscala/Function12$$anonfun$tupled$1;

    invoke-direct {v0, p0}, Lscala/Function12$$anonfun$tupled$1;-><init>(Lscala/Function12;)V

    return-object v0
.end method
