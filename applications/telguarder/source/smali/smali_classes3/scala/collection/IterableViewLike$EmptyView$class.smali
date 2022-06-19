.class public abstract Lscala/collection/IterableViewLike$EmptyView$class;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableViewLike$EmptyView;)V
    .locals 0

    return-void
.end method

.method public static final iterator(Lscala/collection/IterableViewLike$EmptyView;)Lscala/collection/Iterator;
    .locals 0

    .line 50
    sget-object p0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {p0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method
