.class public Lscala/collection/Iterator$PartitionIterator$1;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->partition(Lscala/Function1;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PartitionIterator$1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/Iterator;

.field private final lookahead:Lscala/collection/mutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation
.end field

.field private other:Lscala/collection/Iterator$PartitionIterator$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator$PartitionIterator$1;"
        }
    .end annotation
.end field

.field private final p:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final self$2:Lscala/collection/BufferedIterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/Function1;Lscala/collection/BufferedIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 555
    iput-object p2, p0, Lscala/collection/Iterator$PartitionIterator$1;->p:Lscala/Function1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$PartitionIterator$1;->$outer:Lscala/collection/Iterator;

    iput-object p3, p0, Lscala/collection/Iterator$PartitionIterator$1;->self$2:Lscala/collection/BufferedIterator;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 557
    new-instance p1, Lscala/collection/mutable/Queue;

    invoke-direct {p1}, Lscala/collection/mutable/Queue;-><init>()V

    iput-object p1, p0, Lscala/collection/Iterator$PartitionIterator$1;->lookahead:Lscala/collection/mutable/Queue;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 562
    invoke-virtual {p0}, Lscala/collection/Iterator$PartitionIterator$1;->lookahead()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/Iterator$PartitionIterator$1;->skip()V

    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->self$2:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public lookahead()Lscala/collection/mutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->lookahead:Lscala/collection/mutable/Queue;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lscala/collection/Iterator$PartitionIterator$1;->lookahead()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lscala/collection/Iterator$PartitionIterator$1;->skip()V

    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->self$2:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lscala/collection/Iterator$PartitionIterator$1;->lookahead()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public other()Lscala/collection/Iterator$PartitionIterator$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator$PartitionIterator$1;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->other:Lscala/collection/Iterator$PartitionIterator$1;

    return-object v0
.end method

.method public other_$eq(Lscala/collection/Iterator$PartitionIterator$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator$PartitionIterator$1;",
            ")V"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lscala/collection/Iterator$PartitionIterator$1;->other:Lscala/collection/Iterator$PartitionIterator$1;

    return-void
.end method

.method public synthetic scala$collection$Iterator$PartitionIterator$$$outer()Lscala/collection/Iterator;
    .locals 1

    .line 555
    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->$outer:Lscala/collection/Iterator;

    return-object v0
.end method

.method public skip()V
    .locals 2

    .line 559
    :goto_0
    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->self$2:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$PartitionIterator$1;->p:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/Iterator$PartitionIterator$1;->self$2:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lscala/collection/Iterator$PartitionIterator$1;->other()Lscala/collection/Iterator$PartitionIterator$1;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/Iterator$PartitionIterator$1;->lookahead()Lscala/collection/mutable/Queue;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/Iterator$PartitionIterator$1;->self$2:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/Queue;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;

    goto :goto_0

    :cond_0
    return-void
.end method
