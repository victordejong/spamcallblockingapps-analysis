.class public abstract Lscala/collection/mutable/AbstractIterable;
.super Lscala/collection/AbstractIterable;
.source "Iterable.scala"

# interfaces
.implements Lscala/collection/mutable/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable<",
        "TA;>;",
        "Lscala/collection/mutable/Iterable<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u0011\u0001#\u00112tiJ\u000c7\r^%uKJ\u000c\'\r\\3\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0015A\u00192\u0001A\u0006\u001b!\raQBD\u0007\u0002\t%\u0011\u0011\u0001\u0002\t\u0003\u001fAa\u0001\u0001B\u0003\u0012\u0001\t\u0007!CA\u0001B#\t\u0019r\u0003\u0005\u0002\u0015+5\ta!\u0003\u0002\u0017\r\t9aj\u001c;iS:<\u0007C\u0001\u000b\u0019\u0013\tIbAA\u0002B]f\u00042a\u0007\u000f\u000f\u001b\u0005\u0011\u0011BA\u000f\u0003\u0005!IE/\u001a:bE2,\u0007\"B\u0010\u0001\t\u0003\u0001\u0013A\u0002\u001fj]&$h\u0008F\u0001\"!\rY\u0002A\u0004"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    return-void
.end method


# virtual methods
.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/Iterable;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->companion(Lscala/collection/mutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractIterable;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->parCombiner(Lscala/collection/mutable/Iterable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->seq(Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractIterable;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractIterable;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
