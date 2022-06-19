.class public Lscala/collection/convert/Wrappers$JPropertiesWrapper;
.super Lscala/collection/mutable/AbstractMap;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JPropertiesWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V
    .locals 0

    .line 408
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying:Ljava/util/Properties;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/String;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus$eq(Ljava/lang/String;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus$eq(Ljava/lang/String;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/convert/Wrappers$JPropertiesWrapper;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 408
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 408
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 443
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljava/util/Properties;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 2

    .line 408
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->scala$collection$convert$Wrappers$JPropertiesWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/util/Properties;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->empty()Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 3

    .line 445
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->scala$collection$convert$Wrappers$JPropertiesWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->empty()Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->get(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 416
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;-><init>(Lscala/collection/convert/Wrappers$JPropertiesWrapper;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->mapValues(Lscala/Function1;)Lscala/collection/Map;

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

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

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

    .line 408
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "JPropertiesWrapper"

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->put(Ljava/lang/String;Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 424
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance p2, Lscala/Some;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->remove(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 431
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JPropertiesWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 408
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 412
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/util/Properties;
    .locals 1

    .line 408
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying:Ljava/util/Properties;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 427
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
