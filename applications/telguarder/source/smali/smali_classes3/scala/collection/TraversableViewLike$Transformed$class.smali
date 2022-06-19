.class public abstract Lscala/collection/TraversableViewLike$Transformed$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$Transformed;)V
    .locals 0

    return-void
.end method

.method public static headOption(Lscala/collection/TraversableViewLike$Transformed;)Lscala/Option;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    :try_start_0
    new-instance v1, Lscala/collection/TraversableViewLike$Transformed$$anonfun$headOption$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableViewLike$Transformed$$anonfun$headOption$1;-><init>(Lscala/collection/TraversableViewLike$Transformed;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableViewLike$Transformed;->foreach(Lscala/Function1;)V

    .line 113
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/Option;

    :goto_0
    return-object p0

    :cond_0
    throw p0
.end method

.method public static lastOption(Lscala/collection/TraversableViewLike$Transformed;)Lscala/Option;
    .locals 3

    const/4 v0, 0x1

    .line 117
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 119
    new-instance v2, Lscala/collection/TraversableViewLike$Transformed$$anonfun$lastOption$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/collection/TraversableViewLike$Transformed$$anonfun$lastOption$1;-><init>(Lscala/collection/TraversableViewLike$Transformed;Lscala/runtime/BooleanRef;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableViewLike$Transformed;->foreach(Lscala/Function1;)V

    .line 123
    iget-boolean p0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz p0, :cond_0

    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance p0, Lscala/Some;

    iget-object v0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static stringPrefix(Lscala/collection/TraversableViewLike$Transformed;)Ljava/lang/String;
    .locals 0

    .line 127
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Transformed;->scala$collection$TraversableViewLike$Transformed$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->stringPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/collection/TraversableViewLike$Transformed;)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Transformed;->viewToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static underlying(Lscala/collection/TraversableViewLike$Transformed;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Transformed;->scala$collection$TraversableViewLike$Transformed$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/TraversableViewLike;->underlying()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final viewIdString(Lscala/collection/TraversableViewLike$Transformed;)Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Transformed;->scala$collection$TraversableViewLike$Transformed$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/TraversableViewLike;->viewIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Transformed;->viewIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
