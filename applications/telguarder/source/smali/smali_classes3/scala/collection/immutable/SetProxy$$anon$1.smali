.class public final Lscala/collection/immutable/SetProxy$$anon$1;
.super Lscala/collection/AbstractSet;
.source "SetProxy.scala"

# interfaces
.implements Lscala/collection/immutable/SetProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/SetProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSet<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/SetProxy<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final self:Lscala/collection/immutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/SetProxy;Lscala/collection/immutable/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/SetProxy$class;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->$init$(Lscala/collection/TraversableProxyLike;)V

    invoke-static {p0}, Lscala/collection/IterableProxyLike$class;->$init$(Lscala/collection/IterableProxyLike;)V

    invoke-static {p0}, Lscala/collection/SetProxyLike$class;->$init$(Lscala/collection/SetProxyLike;)V

    invoke-static {p0}, Lscala/collection/immutable/SetProxy$class;->$init$(Lscala/collection/immutable/SetProxy;)V

    iput-object p2, p0, Lscala/collection/immutable/SetProxy$$anon$1;->self:Lscala/collection/immutable/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic $amp(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$amp(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $amp(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->$amp(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $amp$tilde(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$amp$tilde(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $amp$tilde(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->$amp$tilde(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $bar(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$bar(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $bar(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->$bar(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->$colon$bslash(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->$div$colon(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/SetProxy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/immutable/SetProxy$class;->$minus(Lscala/collection/immutable/SetProxy;Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/SetProxy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/immutable/SetProxy$class;->$plus(Lscala/collection/immutable/SetProxy;Ljava/lang/Object;)Lscala/collection/immutable/SetProxy;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->$plus$plus(Lscala/collection/TraversableProxyLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableProxyLike$class;->addString(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->apply(Lscala/collection/SetProxyLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->collect(Lscala/collection/TraversableProxyLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Set;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->contains(Lscala/collection/SetProxyLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->copyToArray(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;)V"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->copyToBuffer(Lscala/collection/TraversableProxyLike;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->count(Lscala/collection/TraversableProxyLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->diff(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->drop(I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->drop(Lscala/collection/TraversableProxyLike;I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->dropRight(I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/Iterable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->dropRight(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->dropWhile(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->dropWhile(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->empty()Lscala/collection/immutable/SetProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->empty()Lscala/collection/immutable/SetProxy;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/SetProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/SetProxy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/immutable/SetProxy$class;->empty(Lscala/collection/immutable/SetProxy;)Lscala/collection/immutable/SetProxy;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/Proxy$class;->equals(Lscala/Proxy;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->exists(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->filter(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->filter(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->filterNot(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->find(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->flatMap(Lscala/collection/TraversableProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->foldLeft(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->foldRight(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->forall(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TB;>;)V"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->foreach(Lscala/collection/TraversableProxyLike;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TK;>;)",
            "Lscala/collection/immutable/Map<",
            "TK;",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->groupBy(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public grouped(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->grouped(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->hasDefiniteSize(Lscala/collection/TraversableProxyLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->head(Lscala/collection/TraversableProxyLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->headOption(Lscala/collection/TraversableProxyLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->init()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/Traversable;
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->init(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intersect(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->intersect(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->intersect(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/SetProxyLike$class;->isEmpty(Lscala/collection/SetProxyLike;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/IterableProxyLike$class;->iterator(Lscala/collection/IterableProxyLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->last(Lscala/collection/TraversableProxyLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->lastOption(Lscala/collection/TraversableProxyLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->map(Lscala/collection/TraversableProxyLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->max(Lscala/collection/TraversableProxyLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->min(Lscala/collection/TraversableProxyLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->mkString(Lscala/collection/TraversableProxyLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->mkString(Lscala/collection/TraversableProxyLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->mkString(Lscala/collection/TraversableProxyLike;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nonEmpty()Z
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->nonEmpty(Lscala/collection/TraversableProxyLike;)Z

    move-result v0

    return v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Ljava/lang/Object;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->partition(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->product(Lscala/collection/TraversableProxyLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceLeft(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceLeftOption(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceRight(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->reduceRightOption(Lscala/collection/TraversableProxyLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->repr()Lscala/collection/immutable/SetProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->repr()Lscala/collection/immutable/SetProxy;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/immutable/SetProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/SetProxy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/immutable/SetProxy$class;->repr(Lscala/collection/immutable/SetProxy;)Lscala/collection/immutable/SetProxy;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->sameElements(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->scanLeft(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableProxyLike$class;->scanRight(Lscala/collection/TraversableProxyLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->self()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lscala/collection/Traversable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->self()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public self()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lscala/collection/immutable/SetProxy$$anon$1;->self:Lscala/collection/immutable/Set;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->size(Lscala/collection/TraversableProxyLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SetProxy$$anon$1;->slice(II)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableProxyLike$class;->slice(Lscala/collection/TraversableProxyLike;II)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public sliding(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->sliding(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/IterableProxyLike$class;->sliding(Lscala/collection/IterableProxyLike;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->span(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->splitAt(Lscala/collection/TraversableProxyLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->stringPrefix(Lscala/collection/TraversableProxyLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->subsetOf(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->sum(Lscala/collection/TraversableProxyLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->tail()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/Traversable;
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->tail(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->take(I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->take(Lscala/collection/TraversableProxyLike;I)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->takeRight(I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Lscala/collection/Iterable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->takeRight(Lscala/collection/IterableProxyLike;I)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->takeWhile(Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->takeWhile(Lscala/collection/TraversableProxyLike;Lscala/Function1;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->toArray(Lscala/collection/TraversableProxyLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toBuffer(Lscala/collection/TraversableProxyLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toIndexedSeq(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toIterable(Lscala/collection/TraversableProxyLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toIterator(Lscala/collection/TraversableProxyLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toList(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Ljava/lang/Object;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/TraversableProxyLike$class;->toMap(Lscala/collection/TraversableProxyLike;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toSeq(Lscala/collection/TraversableProxyLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toSet(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toStream(Lscala/collection/TraversableProxyLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/TraversableProxyLike$class;->toTraversable(Lscala/collection/TraversableProxyLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lscala/collection/immutable/SetProxy$$anon$1;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public union(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lscala/collection/SetProxyLike$class;->union(Lscala/collection/SetProxyLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lscala/collection/IterableProxyLike$class;->view(Lscala/collection/IterableProxyLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/IterableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/IterableView<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/IterableProxyLike$class;->view(Lscala/collection/IterableProxyLike;II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lscala/collection/immutable/SetProxy$$anon$1;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/SetProxy$$anon$1;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lscala/collection/IterableProxyLike$class;->zip(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/IterableProxyLike$class;->zipAll(Lscala/collection/IterableProxyLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lscala/collection/IterableProxyLike$class;->zipWithIndex(Lscala/collection/IterableProxyLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
