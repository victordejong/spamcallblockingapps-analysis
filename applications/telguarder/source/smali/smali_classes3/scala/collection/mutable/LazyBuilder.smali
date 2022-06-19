.class public abstract Lscala/collection/mutable/LazyBuilder;
.super Ljava/lang/Object;
.source "LazyBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TElem;TTo;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001)3Q!\u0001\u0002\u0002\u0002%\u00111\u0002T1{s\n+\u0018\u000e\u001c3fe*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rQQcH\n\u0004\u0001-y\u0001C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\u0008\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t!Q\t\\3n#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0005QyBA\u0002\u0011\u0001\t\u000b\u0007qC\u0001\u0002U_\")!\u0005\u0001C\u0001G\u00051A(\u001b8jiz\"\u0012\u0001\n\t\u0005!\u0001\u0019b\u0004C\u0004\'\u0001\u0001\u0007I\u0011C\u0014\u0002\u000bA\u000c\'\u000f^:\u0016\u0003!\u00022\u0001E\u0015,\u0013\tQ#A\u0001\u0006MSN$()\u001e4gKJ\u00042\u0001L\u0017\u0014\u001b\u0005!\u0011B\u0001\u0018\u0005\u0005=!&/\u0019<feN\u000c\'\r\\3P]\u000e,\u0007b\u0002\u0019\u0001\u0001\u0004%\t\"M\u0001\na\u0006\u0014Ho]0%KF$\"AM\u001b\u0011\u00051\u0019\u0014B\u0001\u001b\u0007\u0005\u0011)f.\u001b;\t\u000fYz\u0013\u0011!a\u0001Q\u0005\u0019\u0001\u0010J\u0019\t\ra\u0002\u0001\u0015)\u0003)\u0003\u0019\u0001\u0018M\u001d;tA!)!\u0008\u0001C\u0001w\u0005AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002={5\t\u0001\u0001C\u0003?s\u0001\u00071#A\u0001y\u0011\u0015\u0001\u0005\u0001\"\u0011B\u00035!\u0003\u000f\\;tIAdWo\u001d\u0013fcR\u0011AH\u0011\u0005\u0006\u0007~\u0002\raK\u0001\u0003qNDQ!\u0012\u0001\u0007\u0002\u0019\u000baA]3tk2$H#\u0001\u0010\t\u000b!\u0003A\u0011A%\u0002\u000b\rdW-\u0019:\u0015\u0003I\u0002"
.end annotation


# instance fields
.field private parts:Lscala/collection/mutable/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ListBuffer<",
            "Lscala/collection/TraversableOnce<",
            "TElem;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 23
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/LazyBuilder;->parts:Lscala/collection/mutable/ListBuffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LazyBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LazyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;TElem;",
            "Lscala/collection/Seq<",
            "TElem;>;)",
            "Lscala/collection/generic/Growable<",
            "TElem;>;"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LazyBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LazyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LazyBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/mutable/LazyBuilder<",
            "TElem;TTo;>;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lscala/collection/mutable/LazyBuilder;->parts()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    return-object p0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LazyBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/LazyBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/LazyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TElem;>;)",
            "Lscala/collection/mutable/LazyBuilder<",
            "TElem;TTo;>;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lscala/collection/mutable/LazyBuilder;->parts()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LazyBuilder;->parts()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->clear()V

    return-void
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TTo;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TElem;TNewTo;>;"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public parts()Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ListBuffer<",
            "Lscala/collection/TraversableOnce<",
            "TElem;>;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lscala/collection/mutable/LazyBuilder;->parts:Lscala/collection/mutable/ListBuffer;

    return-object v0
.end method

.method public parts_$eq(Lscala/collection/mutable/ListBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ListBuffer<",
            "Lscala/collection/TraversableOnce<",
            "TElem;>;>;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lscala/collection/mutable/LazyBuilder;->parts:Lscala/collection/mutable/ListBuffer;

    return-void
.end method

.method public abstract result()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation
.end method

.method public sizeHint(I)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
