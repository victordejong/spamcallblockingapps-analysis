.class public abstract Lscala/collection/TraversableViewLike$Sliced$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableViewLike$Sliced;)V
    .locals 0

    return-void
.end method

.method public static foreach(Lscala/collection/TraversableViewLike$Sliced;Lscala/Function1;)V
    .locals 4

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .line 154
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Sliced;->scala$collection$TraversableViewLike$Sliced$$$outer()Lscala/collection/TraversableViewLike;

    move-result-object v2

    new-instance v3, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;-><init>(Lscala/collection/TraversableViewLike$Sliced;Lscala/runtime/IntRef;Ljava/lang/Object;Lscala/Function1;)V

    invoke-interface {v2, v3}, Lscala/collection/TraversableViewLike;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value$mcV$sp()V

    :goto_0
    return-void

    :cond_0
    throw p0
.end method

.method public static from(Lscala/collection/TraversableViewLike$Sliced;)I
    .locals 0

    .line 147
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Sliced;->endpoints()Lscala/collection/generic/SliceInterval;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->from()I

    move-result p0

    return p0
.end method

.method public static until(Lscala/collection/TraversableViewLike$Sliced;)I
    .locals 0

    .line 148
    invoke-interface {p0}, Lscala/collection/TraversableViewLike$Sliced;->endpoints()Lscala/collection/generic/SliceInterval;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/SliceInterval;->until()I

    move-result p0

    return p0
.end method

.method public static final viewIdentifier(Lscala/collection/TraversableViewLike$Sliced;)Ljava/lang/String;
    .locals 0

    const-string p0, "S"

    return-object p0
.end method
