.class public abstract Lscala/collection/immutable/Seq$class;
.super Ljava/lang/Object;
.source "Seq.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/Seq;)V
    .locals 0

    return-void
.end method

.method public static companion(Lscala/collection/immutable/Seq;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 33
    sget-object p0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    return-object p0
.end method

.method public static parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 36
    sget-object p0, Lscala/collection/parallel/immutable/ParSeq$;->MODULE$:Lscala/collection/parallel/immutable/ParSeq$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParSeq$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static seq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;
    .locals 0

    return-object p0
.end method

.method public static toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;
    .locals 0

    return-object p0
.end method
