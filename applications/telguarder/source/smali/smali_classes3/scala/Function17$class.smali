.class public abstract Lscala/Function17$class;
.super Ljava/lang/Object;
.source "Function17.scala"


# direct methods
.method public static $init$(Lscala/Function17;)V
    .locals 0

    return-void
.end method

.method public static curried(Lscala/Function17;)Lscala/Function1;
    .locals 1

    .line 26
    new-instance v0, Lscala/Function17$$anonfun$curried$1;

    invoke-direct {v0, p0}, Lscala/Function17$$anonfun$curried$1;-><init>(Lscala/Function17;)V

    return-object v0
.end method

.method public static toString(Lscala/Function17;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function17>"

    return-object p0
.end method

.method public static tupled(Lscala/Function17;)Lscala/Function1;
    .locals 1

    .line 34
    new-instance v0, Lscala/Function17$$anonfun$tupled$1;

    invoke-direct {v0, p0}, Lscala/Function17$$anonfun$tupled$1;-><init>(Lscala/Function17;)V

    return-object v0
.end method
