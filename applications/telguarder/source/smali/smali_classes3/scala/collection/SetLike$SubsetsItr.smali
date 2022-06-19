.class public Lscala/collection/SetLike$SubsetsItr;
.super Lscala/collection/AbstractIterator;
.source "SetLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SetLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubsetsItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TThis;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/SetLike;

.field private _hasNext:Z

.field private final len:I

.field public final scala$collection$SetLike$SubsetsItr$$elms:Lscala/collection/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/IndexedSeq<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final scala$collection$SetLike$SubsetsItr$$idxs:[I


# direct methods
.method public constructor <init>(Lscala/collection/SetLike;Lscala/collection/IndexedSeq;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SetLike<",
            "TA;TThis;>;",
            "Lscala/collection/IndexedSeq<",
            "TA;>;I)V"
        }
    .end annotation

    .line 214
    iput-object p2, p0, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$elms:Lscala/collection/IndexedSeq;

    iput p3, p0, Lscala/collection/SetLike$SubsetsItr;->len:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SetLike$SubsetsItr;->$outer:Lscala/collection/SetLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 215
    sget-object p1, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v0, 0x0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, v0, v1}, Lscala/Array$;->range(II)[I

    move-result-object p1

    iput-object p1, p0, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs:[I

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lscala/collection/SetLike$SubsetsItr;->_hasNext:Z

    .line 217
    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object p1

    invoke-interface {p2}, Lscala/collection/IndexedSeq;->size()I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method private _hasNext()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lscala/collection/SetLike$SubsetsItr;->_hasNext:Z

    return v0
.end method

.method private _hasNext_$eq(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lscala/collection/SetLike$SubsetsItr;->_hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 219
    invoke-direct {p0}, Lscala/collection/SetLike$SubsetsItr;->_hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->next()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/collection/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 223
    :goto_0
    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$$outer()Lscala/collection/SetLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SetLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 224
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v2, v1}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    iget v1, p0, Lscala/collection/SetLike$SubsetsItr;->len:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    new-instance v2, Lscala/collection/mutable/ArrayOps$ofInt;

    invoke-direct {v2, v1}, Lscala/collection/mutable/ArrayOps$ofInt;-><init>([I)V

    new-instance v1, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;

    invoke-direct {v1, p0, v0}, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;-><init>(Lscala/collection/SetLike$SubsetsItr;Lscala/collection/mutable/Builder;)V

    invoke-static {v2, v1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    .line 225
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    .line 227
    iget v1, p0, Lscala/collection/SetLike$SubsetsItr;->len:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    .line 230
    invoke-direct {p0, v3}, Lscala/collection/SetLike$SubsetsItr;->_hasNext_$eq(Z)V

    goto :goto_7

    .line 232
    :cond_2
    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v5

    aget v5, v5, v1

    add-int/2addr v5, v2

    aput v5, v4, v1

    .line 233
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/2addr v1, v2

    iget v4, p0, Lscala/collection/SetLike$SubsetsItr;->len:I

    sget-object v5, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v5, Lscala/collection/immutable/Range;

    invoke-direct {v5, v1, v4, v2}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v5}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v5}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_4

    invoke-virtual {v5}, Lscala/collection/immutable/Range;->end()I

    move-result v1

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v5}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v5}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v5}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-eqz v1, :cond_5

    if-eq v4, v6, :cond_6

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_6

    :goto_5
    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v9

    invoke-virtual {p0}, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs()[I

    move-result-object v10

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    add-int/2addr v10, v2

    aput v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v7

    goto :goto_4

    :cond_7
    :goto_7
    return-object v0
.end method

.method public synthetic scala$collection$SetLike$SubsetsItr$$$outer()Lscala/collection/SetLike;
    .locals 1

    .line 214
    iget-object v0, p0, Lscala/collection/SetLike$SubsetsItr;->$outer:Lscala/collection/SetLike;

    return-object v0
.end method

.method public scala$collection$SetLike$SubsetsItr$$idxs()[I
    .locals 1

    .line 215
    iget-object v0, p0, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$idxs:[I

    return-object v0
.end method
