.class public final Lscala/collection/mutable/DoubleLinkedList$$anon$1;
.super Ljava/lang/Object;
.source "DoubleLinkedList.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/DoubleLinkedList$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/mutable/DoubleLinkedList<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field private current:Lscala/collection/mutable/DoubleLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 89
    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->emptyList()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current:Lscala/collection/mutable/DoubleLinkedList;

    return-void
.end method

.method private current()Lscala/collection/mutable/DoubleLinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current:Lscala/collection/mutable/DoubleLinkedList;

    return-object v0
.end method

.method private current_$eq(Lscala/collection/mutable/DoubleLinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current:Lscala/collection/mutable/DoubleLinkedList;

    return-void
.end method

.method private emptyList()Lscala/collection/mutable/DoubleLinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lscala/collection/mutable/DoubleLinkedList;

    invoke-direct {v0}, Lscala/collection/mutable/DoubleLinkedList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/DoubleLinkedList$$anon$1;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 87
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/DoubleLinkedList$$anon$1;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/DoubleLinkedList$$anon$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/DoubleLinkedList$$anon$1;"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/DoubleLinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lscala/collection/mutable/DoubleLinkedList;

    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->emptyList()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/collection/mutable/DoubleLinkedList;-><init>(Ljava/lang/Object;Lscala/collection/mutable/DoubleLinkedList;)V

    invoke-direct {p0, v0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current_$eq(Lscala/collection/mutable/DoubleLinkedList;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/DoubleLinkedList;

    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->emptyList()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lscala/collection/mutable/DoubleLinkedList;-><init>(Ljava/lang/Object;Lscala/collection/mutable/DoubleLinkedList;)V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/DoubleLinkedList;->append(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;

    :goto_0
    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 87
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->emptyList()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current_$eq(Lscala/collection/mutable/DoubleLinkedList;)V

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
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 87
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->result()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/DoubleLinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;->current()Lscala/collection/mutable/DoubleLinkedList;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 87
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

    .line 87
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

    .line 87
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

    .line 87
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
