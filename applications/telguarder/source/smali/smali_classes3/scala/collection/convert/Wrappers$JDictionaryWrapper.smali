.class public Lscala/collection/convert/Wrappers$JDictionaryWrapper;
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
    name = "JDictionaryWrapper"
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
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/Dictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Ljava/util/Dictionary<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 380
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying:Ljava/util/Dictionary;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/convert/Wrappers$JDictionaryWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$JDictionaryWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 380
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 380
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 405
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->dictionaryAsScalaMap(Ljava/util/Dictionary;)Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Map;->clear()V

    return-void
.end method

.method public copy(Ljava/util/Dictionary;)Lscala/collection/convert/Wrappers$JDictionaryWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Dictionary<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$JDictionaryWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 380
    new-instance v0, Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->scala$collection$convert$Wrappers$JDictionaryWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Dictionary;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/util/Dictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Dictionary<",
            "TA;TB;>;"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    return-object v0
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

    .line 384
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 385
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 403
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->enumerationAsScalaIterator(Ljava/util/Enumeration;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1;-><init>(Lscala/collection/convert/Wrappers$JDictionaryWrapper;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 380
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

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

    .line 380
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "JDictionaryWrapper"

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 393
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 400
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public synthetic scala$collection$convert$Wrappers$JDictionaryWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 380
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 381
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Dictionary;->size()I

    move-result v0

    return v0
.end method

.method public underlying()Ljava/util/Dictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Dictionary<",
            "TA;TB;>;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying:Ljava/util/Dictionary;

    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
