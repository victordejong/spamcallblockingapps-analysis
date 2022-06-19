.class public Lscala/collection/convert/Wrappers$JSetWrapper;
.super Lscala/collection/mutable/AbstractSet;
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
    name = "JSetWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSet<",
        "TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Ljava/util/Set<",
            "TA;>;)V"
        }
    .end annotation

    .line 146
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JSetWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/mutable/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/convert/Wrappers$JSetWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/convert/Wrappers$JSetWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->clone()Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/convert/Wrappers$JSetWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$JSetWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Lscala/collection/convert/Wrappers$JSetWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->scala$collection$convert$Wrappers$JSetWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$JSetWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Set;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->clone()Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copy(Ljava/util/Set;)Lscala/collection/convert/Wrappers$JSetWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TA;>;)",
            "Lscala/collection/convert/Wrappers$JSetWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lscala/collection/convert/Wrappers$JSetWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->scala$collection$convert$Wrappers$JSetWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Set;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TA;>;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->empty()Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->empty()Lscala/collection/convert/Wrappers$JSetWrapper;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/convert/Wrappers$JSetWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$JSetWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 161
    new-instance v0, Lscala/collection/convert/Wrappers$JSetWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->scala$collection$convert$Wrappers$JSetWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$JSetWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 150
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->asScalaIterator(Ljava/util/Iterator;)Lscala/collection/Iterator;

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

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

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

    .line 146
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "JSetWrapper"

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->result()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JSetWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 146
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JSetWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TA;>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JSetWrapper;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JSetWrapper;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
