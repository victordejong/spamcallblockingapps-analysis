.class public abstract Lscala/collection/SeqViewLike$EmptyView$class;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SeqViewLike$EmptyView;)V
    .locals 0

    return-void
.end method

.method public static final apply(Lscala/collection/SeqViewLike$EmptyView;I)Lscala/runtime/Nothing$;
    .locals 0

    .line 47
    sget-object p0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Nil$;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/runtime/Nothing$;

    return-object p0
.end method

.method public static final length(Lscala/collection/SeqViewLike$EmptyView;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
