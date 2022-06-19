.class public Lscala/collection/parallel/mutable/ParTrieMapSplitter;
.super Lscala/collection/concurrent/TrieMapIterator;
.source "ParTrieMap.scala"

# interfaces
.implements Lscala/collection/parallel/IterableSplitter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/TrieMapIterator<",
        "TK;TV;>;",
        "Lscala/collection/parallel/IterableSplitter<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001u4Q!\u0001\u0002\u0001\r)\u0011!\u0003U1s)JLW-T1q\'Bd\u0017\u000e\u001e;fe*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\u000cG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\u000cG.Y\u000b\u0004\u0017Q\u00013c\u0001\u0001\rEA!Q\u0002\u0005\n \u001b\u0005q!BA\u0008\u0007\u0003)\u0019wN\\2veJ,g\u000e^\u0005\u0003#9\u0011q\u0002\u0016:jK6\u000b\u0007/\u0013;fe\u0006$xN\u001d\t\u0003\'Qa\u0001\u0001B\u0003\u0016\u0001\t\u0007qCA\u0001L\u0007\u0001\t\"\u0001\u0007\u000f\u0011\u0005eQR\"\u0001\u0005\n\u0005mA!a\u0002(pi\"Lgn\u001a\t\u00033uI!A\u0008\u0005\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0014A\u0011)\u0011\u0005\u0001b\u0001/\t\ta\u000bE\u0002$I\u0019j\u0011\u0001B\u0005\u0003K\u0011\u0011\u0001#\u0013;fe\u0006\u0014G.Z*qY&$H/\u001a:\u0011\te9#cH\u0005\u0003Q!\u0011a\u0001V;qY\u0016\u0014\u0004\u0002\u0003\u0016\u0001\u0005\u0003\u0005\u000b\u0011B\u0016\u0002\u00071,g\u000f\u0005\u0002\u001aY%\u0011Q\u0006\u0003\u0002\u0004\u0013:$\u0008\u0002C\u0018\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0019\u0002\u0005\r$\u0008\u0003B\u00072%}I!A\r\u0008\u0003\u000fQ\u0013\u0018.Z\'ba\"AA\u0007\u0001B\u0001B\u0003%Q\'\u0001\u0005nkN$\u0018J\\5u!\tIb\'\u0003\u00028\u0011\t9!i\\8mK\u0006t\u0007\"B\u001d\u0001\t\u0003Q\u0014A\u0002\u001fj]&$h\u0008\u0006\u0003<{yz\u0004\u0003\u0002\u001f\u0001%}i\u0011A\u0001\u0005\u0006Ua\u0002\ra\u000b\u0005\u0006_a\u0002\r\u0001\r\u0005\u0006ia\u0002\r!\u000e\u0005\t\u0003\u0002A)\u0019!C\u0001\u0005\u0006IAo\u001c;bYNL\'0Z\u000b\u0002W!AA\t\u0001E\u0001B\u0003&1&\u0001\u0006u_R\u000cGn]5{K\u0002BqA\u0012\u0001A\u0002\u0013\u0005!)\u0001\u0005ji\u0016\u0014\u0018\r^3e\u0011\u001dA\u0005\u00011A\u0005\u0002%\u000bA\"\u001b;fe\u0006$X\rZ0%KF$\"AS\'\u0011\u0005eY\u0015B\u0001\'\t\u0005\u0011)f.\u001b;\t\u000f9;\u0015\u0011!a\u0001W\u0005\u0019\u0001\u0010J\u0019\t\rA\u0003\u0001\u0015)\u0003,\u0003%IG/\u001a:bi\u0016$\u0007\u0005C\u0003S\u0001\u0011E3+A\u0006oK^LE/\u001a:bi>\u0014H\u0003B\u001eU-bCQ!V)A\u0002-\nAa\u00187fm\")q+\u0015a\u0001a\u0005\u0019ql\u0019;\t\u000be\u000b\u0006\u0019A\u001b\u0002\u0013}kWo\u001d;J]&$\u0008\"B.\u0001\t\u0003b\u0016AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!\u00183\u0015\u0007Urf\rC\u0003`5\u0002\u0007\u0001-\u0001\u0003d_2d\u0007cA\u0012bG&\u0011!\r\u0002\u0002\u000c!\u0006\u0014\u0018\n^3sC\ndW\r\u0005\u0002\u0014I\u0012)QM\u0017b\u0001/\t\t1\u000bC\u0003h5\u0002\u00071&\u0001\tqCJ\u000cG\u000e\\3mSNlG*\u001a<fY\")\u0011\u000e\u0001C\u0001U\u0006\u0019A-\u001e9\u0016\u0003mBQ\u0001\u001c\u0001\u0005B5\u000cAA\\3yiR\ta\u0005C\u0003p\u0001\u0011\u0005\u0001/A\u0003ta2LG/F\u0001r!\r\u0011XO\t\u0008\u00033ML!\u0001\u001e\u0005\u0002\u000fA\u000c7m[1hK&\u0011ao\u001e\u0002\u0004\'\u0016\u000c(B\u0001;\t\u0011\u0015I\u0008\u0001\"\u0011{\u0003AI7OU3nC&t\u0017N\\4DQ\u0016\u000c\u0007/F\u00016\u0011\u0015a\u0008\u0001\"\u0001C\u0003%\u0011X-\\1j]&tw\r"
.end annotation


# instance fields
.field private volatile bitmap$0:Z

.field private final ct:Lscala/collection/concurrent/TrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private iterated:I

.field private signalDelegate:Lscala/collection/generic/Signalling;

.field private totalsize:I


# direct methods
.method public constructor <init>(ILscala/collection/concurrent/TrieMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 118
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->ct:Lscala/collection/concurrent/TrieMap;

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/concurrent/TrieMapIterator;-><init>(ILscala/collection/concurrent/TrieMap;Z)V

    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->$init$(Lscala/collection/parallel/RemainsIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedIterableIterator$class;->$init$(Lscala/collection/parallel/AugmentedIterableIterator;)V

    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->$init$(Lscala/collection/generic/DelegatedSignalling;)V

    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->$init$(Lscala/collection/parallel/IterableSplitter;)V

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated:I

    return-void
.end method

.method private totalsize$lzycompute()I
    .locals 1

    .line 123
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->bitmap$0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->ct:Lscala/collection/concurrent/TrieMap;

    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMap;->par()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParTrieMap;->size()I

    move-result v0

    iput v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->totalsize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->totalsize:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort()V
    .locals 0

    .line 118
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->abort(Lscala/collection/generic/DelegatedSignalling;)V

    return-void
.end method

.method public appendParIterable(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->appendParIterable(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public buildString(Lscala/Function1;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->buildString(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public collect2combiner(Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->collect2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public copy2builder(Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "Coll:",
            "Ljava/lang/Object;",
            "Bld::",
            "Lscala/collection/mutable/Builder<",
            "TU;TColl;>;>(TBld;)TBld;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->copy2builder(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->copyToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;II)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->count(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 118
    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->debugInformation(Lscala/collection/parallel/IterableSplitter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public drop2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->drop2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->dup()Lscala/collection/parallel/mutable/ParTrieMapSplitter;

    move-result-object v0

    return-object v0
.end method

.method public dup()Lscala/collection/parallel/mutable/ParTrieMapSplitter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParTrieMapSplitter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->ct:Lscala/collection/concurrent/TrieMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/parallel/mutable/ParTrieMapSplitter;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->dupTo(Lscala/collection/concurrent/TrieMapIterator;)V

    .line 136
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated_$eq(I)V

    return-object v0
.end method

.method public filter2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->filter2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public filterNot2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->filterNot2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public flatmap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->flatmap2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->fold(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexFlag()I
    .locals 1

    .line 118
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->indexFlag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public isAborted()Z
    .locals 1

    .line 118
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->isAborted(Lscala/collection/generic/DelegatedSignalling;)Z

    move-result v0

    return v0
.end method

.method public isRemainingCheap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterated()I
    .locals 1

    .line 124
    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated:I

    return v0
.end method

.method public iterated_$eq(I)V
    .locals 0

    .line 124
    iput p1, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated:I

    return-void
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.Mapped<TS;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->map(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->map2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->max(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->min(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/concurrent/TrieMapIterator;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/parallel/mutable/ParTrieMapSplitter;

    move-result-object p1

    return-object p1
.end method

.method public newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/parallel/mutable/ParTrieMapSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;Z)",
            "Lscala/collection/parallel/mutable/ParTrieMapSplitter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;-><init>(ILscala/collection/concurrent/TrieMap;Z)V

    return-object v0
.end method

.method public newSliceInternal(Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.Taken;>(TU;I)TU;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->newSliceInternal(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.Taken;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->newTaken(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated_$eq(I)V

    .line 142
    invoke-super {p0}, Lscala/collection/concurrent/TrieMapIterator;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public partition2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->partition2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->product(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->reduce(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(ILscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->reduceLeft(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remaining()I
    .locals 2

    .line 149
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->totalsize()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->iterated()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public scanToArray(Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V

    return-void
.end method

.method public scanToCombiner(ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public scanToCombiner(Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public setIndexFlag(I)V
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlag(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfGreater(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfLesser(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public shouldSplitFurther(Lscala/collection/parallel/ParIterable;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterable<",
            "TS;>;I)Z"
        }
    .end annotation

    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    .line 130
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->level()I

    move-result p2

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public signalDelegate()Lscala/collection/generic/Signalling;
    .locals 1

    .line 118
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->signalDelegate:Lscala/collection/generic/Signalling;

    return-object v0
.end method

.method public signalDelegate_$eq(Lscala/collection/generic/Signalling;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 118
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->signalDelegate:Lscala/collection/generic/Signalling;

    return-void
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->slice(II)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->slice(Lscala/collection/parallel/IterableSplitter;II)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice2combiner(IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->slice2combiner(Lscala/collection/parallel/AugmentedIterableIterator;IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public span2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->span2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->subdivide()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public splitAt2combiners(ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->splitAt2combiners(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitWithSignalling()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->splitWithSignalling(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->sum(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tag()I
    .locals 1

    .line 118
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->tag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->take(I)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->take(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->take2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->takeWhile2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public totalsize()I
    .locals 1

    .line 123
    iget-boolean v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->totalsize:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;->totalsize$lzycompute()I

    move-result v0

    :goto_0
    return v0
.end method

.method public zip2combiner(Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/RemainsIterator<",
            "TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zip2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public zipAll2combiner(Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/RemainsIterator<",
            "TS;>;TU;TS;",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zipAll2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TR;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/IterableSplitter$class;->zipAllParSeq(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.Zipped<TS;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->zipParSeq(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method
