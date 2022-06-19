.class public abstract Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V
    .locals 1

    .line 888
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->requiresStrictSplitters()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;->scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->isStrictSplitterCollection()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This collection does not provide strict splitters."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
