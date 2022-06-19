.class public abstract Lscala/collection/parallel/ParSeq$class;
.super Ljava/lang/Object;
.source "ParSeq.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParSeq;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/parallel/ParSeq;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 35
    sget-object p0, Lscala/collection/parallel/ParSeq$;->MODULE$:Lscala/collection/parallel/ParSeq$;

    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/parallel/ParSeq;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/parallel/ParSeq;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
