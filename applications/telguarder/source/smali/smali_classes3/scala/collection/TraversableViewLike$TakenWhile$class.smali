.class public abstract Lscala/collection/TraversableViewLike$TakenWhile$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$TakenWhile;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$TakenWhile;Lscala/Function1;)V
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 205
    :try_start_0
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$TakenWhile;->scala$collection$TraversableViewLike$TakenWhile$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;-><init>(Lscala/collection/TraversableViewLike$TakenWhile;Ljava/lang/Object;Lscala/Function1;)V

    invoke-interface {v1, v2}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value$mcV$sp()V

    :goto_0
    return-void

    :cond_0
    throw p0
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$TakenWhile;)Ljava/lang/String;
    .locals 0

    const-string p0, "T"

    return-object p0
.end method
