.class public Lscala/collection/Iterator$GroupedIterator;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator<",
        "Lscala/collection/Seq<",
        "TB;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/Iterator;

.field private _partial:Z

.field private buffer:Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ArrayBuffer<",
            "TB;>;"
        }
    .end annotation
.end field

.field private filled:Z

.field public scala$collection$Iterator$GroupedIterator$$pad:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "Lscala/Function0<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public final scala$collection$Iterator$GroupedIterator$$size:I

.field public final scala$collection$Iterator$GroupedIterator$$step:I

.field private final self:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/Iterator;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;",
            "Lscala/collection/Iterator<",
            "TA;>;II)V"
        }
    .end annotation

    .line 877
    iput-object p2, p0, Lscala/collection/Iterator$GroupedIterator;->self:Lscala/collection/Iterator;

    iput p3, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$size:I

    iput p4, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$step:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$GroupedIterator;->$outer:Lscala/collection/Iterator;

    .line 878
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 881
    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-lt p3, p2, :cond_0

    if-lt p4, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 883
    sget-object p3, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object p4, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p3, p4}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p3

    check-cast p3, Lscala/collection/mutable/ArrayBuffer;

    iput-object p3, p0, Lscala/collection/Iterator$GroupedIterator;->buffer:Lscala/collection/mutable/ArrayBuffer;

    .line 884
    iput-boolean p1, p0, Lscala/collection/Iterator$GroupedIterator;->filled:Z

    .line 885
    iput-boolean p2, p0, Lscala/collection/Iterator$GroupedIterator;->_partial:Z

    .line 886
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    iput-object p1, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$pad:Lscala/Option;

    return-void

    .line 881
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "requirement failed: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, "size=%d and step=%d, but both must be positive"

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, p1

    invoke-static {p4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-virtual {v3, v4}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-static {v2, p1}, Lscala/collection/immutable/StringLike$class;->format(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final deliver$1(IILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)Z
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_3

    .line 961
    invoke-direct {p0, p2}, Lscala/collection/Iterator$GroupedIterator;->isFirst$1(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3, p4, p5}, Lscala/collection/Iterator$GroupedIterator;->len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result v1

    invoke-direct {p0}, Lscala/collection/Iterator$GroupedIterator;->gap()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 962
    :cond_0
    invoke-direct {p0, p2}, Lscala/collection/Iterator$GroupedIterator;->isFirst$1(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 963
    iget-object v1, p0, Lscala/collection/Iterator$GroupedIterator;->buffer:Lscala/collection/mutable/ArrayBuffer;

    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget v3, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$step:I

    invoke-virtual {v2, v3, p2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/ArrayBuffer;->trimStart(I)V

    .line 966
    :cond_1
    invoke-direct {p0, p2}, Lscala/collection/Iterator$GroupedIterator;->isFirst$1(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p3, p4, p5}, Lscala/collection/Iterator$GroupedIterator;->len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result p1

    goto :goto_0

    :cond_2
    sget-object p2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 967
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0, p3, p4, p5}, Lscala/collection/Iterator$GroupedIterator;->len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result p4

    invoke-direct {p0}, Lscala/collection/Iterator$GroupedIterator;->gap()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p2, p1, p4}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    .line 969
    :goto_0
    iget-object p2, p0, Lscala/collection/Iterator$GroupedIterator;->buffer:Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p3, p1}, Lscala/collection/Seq;->takeRight(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-virtual {p2, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    .line 970
    iput-boolean v0, p0, Lscala/collection/Iterator$GroupedIterator;->filled:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private fill()Z
    .locals 1

    .line 984
    iget-object v0, p0, Lscala/collection/Iterator$GroupedIterator;->self:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lscala/collection/Iterator$GroupedIterator;->buffer:Lscala/collection/mutable/ArrayBuffer;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$size:I

    invoke-direct {p0, v0}, Lscala/collection/Iterator$GroupedIterator;->go(I)Z

    move-result v0

    goto :goto_0

    .line 987
    :cond_0
    iget v0, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$step:I

    invoke-direct {p0, v0}, Lscala/collection/Iterator$GroupedIterator;->go(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private gap()I
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 941
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget v1, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$step:I

    iget v2, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$size:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    return v0
.end method

.method private go(I)Z
    .locals 11

    invoke-static {}, Lscala/runtime/IntRef;->zero()Lscala/runtime/IntRef;

    move-result-object v6

    .line 955
    invoke-static {}, Lscala/runtime/BooleanRef;->zero()Lscala/runtime/BooleanRef;

    move-result-object v4

    const/4 v7, 0x0

    .line 943
    invoke-static {v7}, Lscala/runtime/VolatileByteRef;->create(B)Lscala/runtime/VolatileByteRef;

    move-result-object v8

    .line 944
    iget-object v0, p0, Lscala/collection/Iterator$GroupedIterator;->buffer:Lscala/collection/mutable/ArrayBuffer;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->size()I

    move-result v9

    .line 949
    invoke-direct {p0, p1}, Lscala/collection/Iterator$GroupedIterator;->takeDestructively(I)Lscala/collection/Seq;

    move-result-object v0

    .line 952
    invoke-interface {v0}, Lscala/collection/Seq;->length()I

    move-result v1

    sub-int v1, p1, v1

    if-lez v1, :cond_0

    .line 953
    iget-object v2, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$pad:Lscala/Option;

    invoke-virtual {v2}, Lscala/Option;->isDefined()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lscala/collection/Iterator$GroupedIterator;->padding(I)Lscala/collection/immutable/List;

    move-result-object v1

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/Seq;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    :cond_0
    move-object v10, v0

    .line 975
    invoke-interface {v10}, Lscala/collection/Seq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 976
    :cond_1
    iget-boolean v0, p0, Lscala/collection/Iterator$GroupedIterator;->_partial:Z

    if-eqz v0, :cond_2

    sget-object p1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0, v10, v6, v8}, Lscala/collection/Iterator$GroupedIterator;->len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$size:I

    invoke-virtual {p1, v0, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v1

    move-object v0, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lscala/collection/Iterator$GroupedIterator;->deliver$1(IILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)Z

    move-result v7

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, v10

    move-object v3, v6

    move-object v5, v8

    .line 977
    invoke-direct/range {v0 .. v5}, Lscala/collection/Iterator$GroupedIterator;->incomplete$1(ILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/BooleanRef;Lscala/runtime/VolatileByteRef;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 978
    :cond_3
    invoke-direct {p0, v9}, Lscala/collection/Iterator$GroupedIterator;->isFirst$1(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v10, v6, v8}, Lscala/collection/Iterator$GroupedIterator;->len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result v1

    move-object v0, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lscala/collection/Iterator$GroupedIterator;->deliver$1(IILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)Z

    move-result v7

    goto :goto_0

    .line 979
    :cond_4
    sget-object p1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget v0, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$step:I

    iget v1, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$size:I

    invoke-virtual {p1, v0, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v1

    move-object v0, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lscala/collection/Iterator$GroupedIterator;->deliver$1(IILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)Z

    move-result v7

    :goto_0
    return v7
.end method

.method private final incomplete$1(ILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/BooleanRef;Lscala/runtime/VolatileByteRef;)Z
    .locals 1

    .line 956
    iget-byte v0, p5, Lscala/runtime/VolatileByteRef;->elem:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lscala/collection/Iterator$GroupedIterator;->incomplete$lzycompute$1(ILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/BooleanRef;Lscala/runtime/VolatileByteRef;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p4, Lscala/runtime/BooleanRef;->elem:Z

    :goto_0
    return p1
.end method

.method private final incomplete$lzycompute$1(ILscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/BooleanRef;Lscala/runtime/VolatileByteRef;)Z
    .locals 1

    .line 956
    monitor-enter p0

    :try_start_0
    iget-byte v0, p5, Lscala/runtime/VolatileByteRef;->elem:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p3, p5}, Lscala/collection/Iterator$GroupedIterator;->len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result p2

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p4, Lscala/runtime/BooleanRef;->elem:Z

    iget-byte p1, p5, Lscala/runtime/VolatileByteRef;->elem:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p5, Lscala/runtime/VolatileByteRef;->elem:B

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p4, Lscala/runtime/BooleanRef;->elem:Z

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final isFirst$1(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final len$2(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I
    .locals 1

    .line 955
    iget-byte v0, p3, Lscala/runtime/VolatileByteRef;->elem:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/Iterator$GroupedIterator;->len$lzycompute$1(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p2, Lscala/runtime/IntRef;->elem:I

    :goto_0
    return p1
.end method

.method private final len$lzycompute$1(Lscala/collection/Seq;Lscala/runtime/IntRef;Lscala/runtime/VolatileByteRef;)I
    .locals 1

    .line 955
    monitor-enter p0

    :try_start_0
    iget-byte v0, p3, Lscala/runtime/VolatileByteRef;->elem:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result p1

    iput p1, p2, Lscala/runtime/IntRef;->elem:I

    iget-byte p1, p3, Lscala/runtime/VolatileByteRef;->elem:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p3, Lscala/runtime/VolatileByteRef;->elem:B

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p2, Lscala/runtime/IntRef;->elem:I

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private padding(I)Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "TB;>;"
        }
    .end annotation

    .line 940
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    new-instance v1, Lscala/collection/Iterator$GroupedIterator$$anonfun$padding$1;

    invoke-direct {v1, p0}, Lscala/collection/Iterator$GroupedIterator$$anonfun$padding$1;-><init>(Lscala/collection/Iterator$GroupedIterator;)V

    invoke-virtual {v0, p1, v1}, Lscala/collection/immutable/List$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    return-object p1
.end method

.method private takeDestructively(I)Lscala/collection/Seq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 929
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 933
    iget-object v2, p0, Lscala/collection/Iterator$GroupedIterator;->self:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    iget-object v2, p0, Lscala/collection/Iterator$GroupedIterator;->self:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lscala/collection/Iterator$GroupedIterator;->filled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lscala/collection/Iterator$GroupedIterator;->fill()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lscala/collection/Iterator$GroupedIterator;->next()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TB;>;"
        }
    .end annotation

    .line 992
    iget-boolean v0, p0, Lscala/collection/Iterator$GroupedIterator;->filled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 993
    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$GroupedIterator;->fill()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    .line 995
    :goto_0
    iget-boolean v0, p0, Lscala/collection/Iterator$GroupedIterator;->filled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 997
    iput-boolean v0, p0, Lscala/collection/Iterator$GroupedIterator;->filled:Z

    .line 998
    iget-object v0, p0, Lscala/collection/Iterator$GroupedIterator;->buffer:Lscala/collection/mutable/ArrayBuffer;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0

    .line 996
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next on empty iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic scala$collection$Iterator$GroupedIterator$$$outer()Lscala/collection/Iterator;
    .locals 1

    .line 877
    iget-object v0, p0, Lscala/collection/Iterator$GroupedIterator;->$outer:Lscala/collection/Iterator;

    return-object v0
.end method

.method public withPadding(Lscala/Function0;)Lscala/collection/Iterator$GroupedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "TA;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 899
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$pad:Lscala/Option;

    return-object p0
.end method

.method public withPartial(Z)Lscala/collection/Iterator$GroupedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/collection/Iterator<",
            "TA;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 914
    iput-boolean p1, p0, Lscala/collection/Iterator$GroupedIterator;->_partial:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 916
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    iput-object p1, p0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$pad:Lscala/Option;

    :cond_0
    return-object p0
.end method
