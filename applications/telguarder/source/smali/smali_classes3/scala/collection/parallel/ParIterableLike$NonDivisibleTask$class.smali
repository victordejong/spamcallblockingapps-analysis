.class public abstract Lscala/collection/parallel/ParIterableLike$NonDivisibleTask$class;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)V
    .locals 0

    return-void
.end method

.method public static shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static split(Lscala/collection/parallel/ParIterableLike$NonDivisibleTask;)Lscala/runtime/Nothing$;
    .locals 1

    .line 909
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Does not split."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
