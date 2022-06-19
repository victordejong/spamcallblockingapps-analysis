.class public final Lscala/collection/SetLike$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "SetLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SetLike;->subsets()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TThis;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SetLike;

.field private final elms:Lscala/collection/immutable/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation
.end field

.field private itr:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation
.end field

.field private len:I


# direct methods
.method public constructor <init>(Lscala/collection/SetLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SetLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 188
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SetLike$$anon$1;->$outer:Lscala/collection/SetLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 189
    invoke-interface {p1}, Lscala/collection/SetLike;->toIndexedSeq()Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/SetLike$$anon$1;->elms:Lscala/collection/immutable/IndexedSeq;

    const/4 p1, 0x0

    .line 190
    iput p1, p0, Lscala/collection/SetLike$$anon$1;->len:I

    .line 191
    sget-object p1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {p1}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/SetLike$$anon$1;->itr:Lscala/collection/Iterator;

    return-void
.end method

.method private elms()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lscala/collection/SetLike$$anon$1;->elms:Lscala/collection/immutable/IndexedSeq;

    return-object v0
.end method

.method private itr()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lscala/collection/SetLike$$anon$1;->itr:Lscala/collection/Iterator;

    return-object v0
.end method

.method private itr_$eq(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TThis;>;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lscala/collection/SetLike$$anon$1;->itr:Lscala/collection/Iterator;

    return-void
.end method

.method private len()I
    .locals 1

    .line 190
    iget v0, p0, Lscala/collection/SetLike$$anon$1;->len:I

    return v0
.end method

.method private len_$eq(I)V
    .locals 0

    .line 190
    iput p1, p0, Lscala/collection/SetLike$$anon$1;->len:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 193
    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->len()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->elms()Lscala/collection/immutable/IndexedSeq;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/immutable/IndexedSeq;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->itr()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

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

    .line 188
    invoke-virtual {p0}, Lscala/collection/SetLike$$anon$1;->next()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/collection/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->itr()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->len()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->elms()Lscala/collection/immutable/IndexedSeq;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/immutable/IndexedSeq;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Lscala/collection/SetLike$SubsetsItr;

    iget-object v1, p0, Lscala/collection/SetLike$$anon$1;->$outer:Lscala/collection/SetLike;

    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->elms()Lscala/collection/immutable/IndexedSeq;

    move-result-object v2

    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->len()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/SetLike$SubsetsItr;-><init>(Lscala/collection/SetLike;Lscala/collection/IndexedSeq;I)V

    invoke-direct {p0, v0}, Lscala/collection/SetLike$$anon$1;->itr_$eq(Lscala/collection/Iterator;)V

    .line 199
    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->len()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/SetLike$$anon$1;->len_$eq(I)V

    .line 197
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 203
    :goto_0
    invoke-direct {p0}, Lscala/collection/SetLike$$anon$1;->itr()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method
