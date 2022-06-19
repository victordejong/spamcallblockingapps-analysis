.class public Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;
.super Lscala/collection/mutable/AbstractMap;
.source "Wrappers.scala"

# interfaces
.implements Lscala/collection/convert/Wrappers$JMapWrapperLike;
.implements Lscala/collection/concurrent/Map;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JConcurrentMapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "TA;TB;>;",
        "Lscala/collection/convert/Wrappers$JMapWrapperLike<",
        "TA;TB;",
        "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
        "TA;TB;>;>;",
        "Lscala/collection/concurrent/Map<",
        "TA;TB;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 328
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->$init$(Lscala/collection/convert/Wrappers$JMapWrapperLike;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/convert/Wrappers$JMapWrapperLike<",
            "TA;TB;",
            "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 328
    invoke-static {p0, p1}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->$minus$eq(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$JMapWrapperLike<",
            "TA;TB;",
            "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 328
    invoke-static {p0, p1}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->$plus$eq(Lscala/collection/convert/Wrappers$JMapWrapperLike;Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 328
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 328
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 328
    invoke-static {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->clear(Lscala/collection/convert/Wrappers$JMapWrapperLike;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 328
    new-instance v0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->scala$collection$convert$Wrappers$JConcurrentMapWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->empty()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 335
    new-instance v0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->scala$collection$convert$Wrappers$JConcurrentMapWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->empty()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 332
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 328
    invoke-static {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->iterator(Lscala/collection/convert/Wrappers$JMapWrapperLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 328
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "JConcurrentMapWrapper"

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 328
    invoke-static {p0, p1, p2}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->put(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 339
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance p2, Lscala/Some;

    invoke-direct {p2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 328
    invoke-static {p0, p1}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->remove(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)Z"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 346
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance p2, Lscala/Some;

    invoke-direct {p2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TB;)Z"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JConcurrentMapWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 328
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JMapWrapperLike$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->scala$collection$convert$Wrappers$JConcurrentMapWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 328
    invoke-static {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->size(Lscala/collection/convert/Wrappers$JMapWrapperLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Ljava/util/Map;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 328
    invoke-static {p0, p1, p2}, Lscala/collection/convert/Wrappers$JMapWrapperLike$class;->update(Lscala/collection/convert/Wrappers$JMapWrapperLike;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
