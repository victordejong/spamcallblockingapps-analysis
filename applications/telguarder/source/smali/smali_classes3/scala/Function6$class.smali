.class public abstract Lscala/Function6$class;
.super Ljava/lang/Object;
.source "Function6.scala"


# direct methods
.method public static $init$(Lscala/Function6;)V
    .locals 0

    return-void
.end method

.method public static curried(Lscala/Function6;)Lscala/Function1;
    .locals 1

    .line 26
    new-instance v0, Lscala/Function6$$anonfun$curried$1;

    invoke-direct {v0, p0}, Lscala/Function6$$anonfun$curried$1;-><init>(Lscala/Function6;)V

    return-object v0
.end method

.method public static toString(Lscala/Function6;)Ljava/lang/String;
    .locals 0

    const-string p0, "<function6>"

    return-object p0
.end method

.method public static tupled(Lscala/Function6;)Lscala/Function1;
    .locals 1

    .line 34
    new-instance v0, Lscala/Function6$$anonfun$tupled$1;

    invoke-direct {v0, p0}, Lscala/Function6$$anonfun$tupled$1;-><init>(Lscala/Function6;)V

    return-object v0
.end method
