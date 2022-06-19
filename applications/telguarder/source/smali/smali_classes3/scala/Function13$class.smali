.class public abstract Lscala/Function13$class;
.super Ljava/lang/Object;
.source "Function13.scala"


# direct methods
.method public static $init$(Lscala/Function13;)V
    .locals 0

    return-void
.end method

.method public static curried(Lscala/Function13;)Lscala/Function1;
    .locals 1

    .line 26
    new-instance v0, Lscala/Function13$$anonfun$curried$1;

    invoke-direct {v0, p0}, Lscala/Function13$$anonfun$curried$1;-><init>(Lscala/Function13;)V

    return-object v0
.end method

.method public static toString(Lscala/Function13;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function13>"

    return-object p0
.end method

.method public static tupled(Lscala/Function13;)Lscala/Function1;
    .locals 1

    .line 34
    new-instance v0, Lscala/Function13$$anonfun$tupled$1;

    invoke-direct {v0, p0}, Lscala/Function13$$anonfun$tupled$1;-><init>(Lscala/Function13;)V

    return-object v0
.end method
