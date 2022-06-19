.class public Lscala/collection/Iterator$Leading$1;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->span(Lscala/Function1;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Leading$1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/Iterator;

.field private final drained:Lscala/collection/mutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final p$5:Lscala/Function1;

.field private final self$3:Lscala/collection/BufferedIterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$Leading$1;->$outer:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/collection/Iterator$Leading$1;->self$3:Lscala/collection/BufferedIterator;

    iput-object p3, p0, Lscala/collection/Iterator$Leading$1;->p$5:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 585
    new-instance p1, Lscala/collection/mutable/Queue;

    invoke-direct {p1}, Lscala/collection/mutable/Queue;-><init>()V

    iput-object p1, p0, Lscala/collection/Iterator$Leading$1;->drained:Lscala/collection/mutable/Queue;

    const/4 p1, 0x0

    .line 586
    iput-boolean p1, p0, Lscala/collection/Iterator$Leading$1;->finished:Z

    return-void
.end method

.method private drained()Lscala/collection/mutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lscala/collection/Iterator$Leading$1;->drained:Lscala/collection/mutable/Queue;

    return-object v0
.end method

.method private finished()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lscala/collection/Iterator$Leading$1;->finished:Z

    return v0
.end method

.method private finished_$eq(Z)V
    .locals 0

    .line 586
    iput-boolean p1, p0, Lscala/collection/Iterator$Leading$1;->finished:Z

    return-void
.end method

.method private selfish()Z
    .locals 2

    .line 592
    iget-object v0, p0, Lscala/collection/Iterator$Leading$1;->self$3:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$Leading$1;->p$5:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/Iterator$Leading$1;->self$3:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 588
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->finished()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 589
    invoke-direct {p0, v2}, Lscala/collection/Iterator$Leading$1;->finished_$eq(Z)V

    .line 590
    :goto_0
    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->selfish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->drained()Lscala/collection/mutable/Queue;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/Iterator$Leading$1;->self$3:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/Queue;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 593
    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->drained()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->nonEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->selfish()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 595
    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->drained()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 596
    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$Leading$1;->selfish()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/collection/Iterator$Leading$1;->self$3:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_1
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic scala$collection$Iterator$Leading$$$outer()Lscala/collection/Iterator;
    .locals 1

    .line 584
    iget-object v0, p0, Lscala/collection/Iterator$Leading$1;->$outer:Lscala/collection/Iterator;

    return-object v0
.end method
