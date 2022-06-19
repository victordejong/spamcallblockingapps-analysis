.class public final Lscala/runtime/Tuple2Zipped$;
.super Ljava/lang/Object;
.source "Tuple2Zipped.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/Tuple2Zipped$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/Tuple2Zipped$;

    invoke-direct {v0}, Lscala/runtime/Tuple2Zipped$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/Tuple2Zipped$;->MODULE$:Lscala/runtime/Tuple2Zipped$;

    return-void
.end method


# virtual methods
.method public final equals$extension(Lscala/Tuple2;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 36
    instance-of v0, p2, Lscala/runtime/Tuple2Zipped;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/runtime/Tuple2Zipped;

    invoke-virtual {p2}, Lscala/runtime/Tuple2Zipped;->colls()Lscala/Tuple2;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public final exists$extension(Lscala/Tuple2;Lscala/Function2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Lscala/Function2<",
            "TEl1;TEl2;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    invoke-interface {v1}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v2, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;

    invoke-direct {v2, v1, p2, v0}, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;-><init>(Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value$mcZ$sp()Z

    move-result p1

    :goto_0
    return p1

    :cond_0
    throw p1
.end method

.method public final filter$extension(Lscala/Tuple2;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;Lscala/collection/generic/CanBuildFrom;)Lscala/Tuple2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<To1:",
            "Ljava/lang/Object;",
            "To2:",
            "Ljava/lang/Object;",
            "El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Lscala/Function2<",
            "TEl1;TEl2;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr1;TEl1;TTo1;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr2;TEl2;TTo2;>;)",
            "Lscala/Tuple2<",
            "TTo1;TTo2;>;"
        }
    .end annotation

    .line 68
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    invoke-interface {v0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    .line 70
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    invoke-interface {v0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p4

    .line 71
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/IterableLike;

    invoke-interface {v0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v7, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;

    move-object v0, v7

    move-object v1, p3

    move-object v2, p4

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;-><init>(Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V

    invoke-interface {p1, v7}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 84
    new-instance p1, Lscala/Tuple2;

    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p4}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_0

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    :goto_0
    return-object p1

    :cond_0
    throw p1
.end method

.method public final flatMap$extension(Lscala/Tuple2;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            "El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Lscala/Function2<",
            "TEl1;TEl2;",
            "Lscala/collection/TraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr1;TB;TTo;>;)TTo;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    invoke-interface {v1}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    .line 56
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    invoke-interface {v1}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v2, Lscala/runtime/Tuple2Zipped$$anonfun$flatMap$extension$1;

    invoke-direct {v2, p3, v1, p2, v0}, Lscala/runtime/Tuple2Zipped$$anonfun$flatMap$extension$1;-><init>(Lscala/collection/mutable/Builder;Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 65
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    throw p1
.end method

.method public final forall$extension(Lscala/Tuple2;Lscala/Function2;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Lscala/Function2<",
            "TEl1;TEl2;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 101
    new-instance v0, Lscala/runtime/Tuple2Zipped$$anonfun$forall$extension$1;

    invoke-direct {v0, p2}, Lscala/runtime/Tuple2Zipped$$anonfun$forall$extension$1;-><init>(Lscala/Function2;)V

    invoke-virtual {p0, p1, v0}, Lscala/runtime/Tuple2Zipped$;->exists$extension(Lscala/Tuple2;Lscala/Function2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final foreach$extension(Lscala/Tuple2;Lscala/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Lscala/Function2<",
            "TEl1;TEl2;TU;>;)V"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    invoke-interface {v1}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v2, Lscala/runtime/Tuple2Zipped$$anonfun$foreach$extension$1;

    invoke-direct {v2, v1, p2, v0}, Lscala/runtime/Tuple2Zipped$$anonfun$foreach$extension$1;-><init>(Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value$mcV$sp()V

    :goto_0
    return-void

    :cond_0
    throw p1
.end method

.method public final hashCode$extension(Lscala/Tuple2;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;)I"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lscala/Tuple2;->hashCode()I

    move-result p1

    return p1
.end method

.method public final map$extension(Lscala/Tuple2;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            "El1:",
            "Ljava/lang/Object;",
            "Repr1:",
            "Ljava/lang/Object;",
            "El2:",
            "Ljava/lang/Object;",
            "Repr2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableLike<",
            "TEl1;TRepr1;>;",
            "Lscala/collection/IterableLike<",
            "TEl2;TRepr2;>;>;",
            "Lscala/Function2<",
            "TEl1;TEl2;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr1;TB;TTo;>;)TTo;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    invoke-interface {v1}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    .line 41
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    invoke-interface {p3, v1}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 42
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    invoke-interface {v1}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v2, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;

    invoke-direct {v2, p3, v1, p2, v0}, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;-><init>(Lscala/collection/mutable/Builder;Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 51
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    throw p1
.end method
