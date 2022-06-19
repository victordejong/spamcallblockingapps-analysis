.class public Lscala/collection/SeqLike$PermutationsItr;
.super Lscala/collection/AbstractIterator;
.source "SeqLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermutationsItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TRepr;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/SeqLike;

.field private _hasNext:Z

.field private final elms:Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final idxs:[I

.field private final synthetic x$1:Lscala/Tuple2;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqLike$PermutationsItr;->$outer:Lscala/collection/SeqLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 161
    invoke-direct {p0}, Lscala/collection/SeqLike$PermutationsItr;->init()Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/collection/SeqLike$PermutationsItr;->x$1:Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Buffer;

    iput-object p1, p0, Lscala/collection/SeqLike$PermutationsItr;->elms:Lscala/collection/mutable/Buffer;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lscala/collection/SeqLike$PermutationsItr;->_hasNext:Z

    return-void

    .line 161
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private _hasNext()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lscala/collection/SeqLike$PermutationsItr;->_hasNext:Z

    return v0
.end method

.method private _hasNext_$eq(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lscala/collection/SeqLike$PermutationsItr;->_hasNext:Z

    return-void
.end method

.method private init()Lscala/Tuple2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;[I>;"
        }
    .end annotation

    .line 201
    sget-object v0, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/HashMap$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/HashMap;

    .line 202
    invoke-virtual {p0}, Lscala/collection/SeqLike$PermutationsItr;->scala$collection$SeqLike$PermutationsItr$$$outer()Lscala/collection/SeqLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v1

    new-instance v2, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;

    invoke-direct {v2, p0, v0}, Lscala/collection/SeqLike$PermutationsItr$$anonfun$2;-><init>(Lscala/collection/SeqLike$PermutationsItr;Lscala/collection/mutable/HashMap;)V

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    new-instance v1, Lscala/collection/SeqLike$PermutationsItr$$anonfun$3;

    invoke-direct {v1, p0}, Lscala/collection/SeqLike$PermutationsItr$$anonfun$3;-><init>(Lscala/collection/SeqLike$PermutationsItr;)V

    sget-object v2, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    invoke-interface {v0, v1, v2}, Lscala/collection/SeqLike;->sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/GenericTraversableTemplate;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/generic/GenericTraversableTemplate;->unzip(Lscala/Function1;)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/Seq;

    .line 204
    new-instance v2, Lscala/Tuple2;

    invoke-interface {v0}, Lscala/collection/Seq;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object v0

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v3}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-interface {v1, v3}, Lscala/collection/Seq;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 202
    :cond_0
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private swap(II)V
    .locals 3

    .line 192
    iget-object v0, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    aget v1, v0, p1

    .line 193
    aget v2, v0, p2

    aput v2, v0, p1

    .line 194
    aput v1, v0, p2

    .line 195
    iget-object v0, p0, Lscala/collection/SeqLike$PermutationsItr;->elms:Lscala/collection/mutable/Buffer;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lscala/collection/SeqLike$PermutationsItr;->elms:Lscala/collection/mutable/Buffer;

    invoke-interface {v1, p2}, Lscala/collection/mutable/Buffer;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lscala/collection/SeqLike$PermutationsItr;->elms:Lscala/collection/mutable/Buffer;

    invoke-interface {p1, p2, v0}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 164
    invoke-direct {p0}, Lscala/collection/SeqLike$PermutationsItr;->_hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lscala/collection/SeqLike$PermutationsItr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 169
    :goto_0
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    iget-object v1, p0, Lscala/collection/SeqLike$PermutationsItr;->elms:Lscala/collection/mutable/Buffer;

    invoke-interface {v1}, Lscala/collection/mutable/Buffer;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    iget-object v1, p0, Lscala/collection/SeqLike$PermutationsItr;->elms:Lscala/collection/mutable/Buffer;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lscala/collection/SeqLike$PermutationsItr;->scala$collection$SeqLike$PermutationsItr$$$outer()Lscala/collection/SeqLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_1
    if-ltz v1, :cond_1

    .line 172
    iget-object v2, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    if-lt v3, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, v1}, Lscala/collection/SeqLike$PermutationsItr;->_hasNext_$eq(Z)V

    goto :goto_4

    .line 178
    :cond_2
    iget-object v2, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 179
    :goto_2
    iget-object v4, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    aget v5, v4, v2

    aget v4, v4, v1

    if-gt v5, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 180
    :cond_3
    invoke-direct {p0, v1, v2}, Lscala/collection/SeqLike$PermutationsItr;->swap(II)V

    .line 182
    iget-object v2, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    :goto_3
    if-gt v3, v2, :cond_4

    add-int v4, v1, v3

    .line 185
    iget-object v5, p0, Lscala/collection/SeqLike$PermutationsItr;->idxs:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    invoke-direct {p0, v4, v5}, Lscala/collection/SeqLike$PermutationsItr;->swap(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-object v0
.end method

.method public synthetic scala$collection$SeqLike$PermutationsItr$$$outer()Lscala/collection/SeqLike;
    .locals 1

    .line 160
    iget-object v0, p0, Lscala/collection/SeqLike$PermutationsItr;->$outer:Lscala/collection/SeqLike;

    return-object v0
.end method
