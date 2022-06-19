.class public Lscala/collection/mutable/Stack$StackBuilder;
.super Ljava/lang/Object;
.source "Stack.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/mutable/Stack<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field private final lbuff:Lscala/collection/mutable/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 28
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/Stack$StackBuilder;->lbuff:Lscala/collection/mutable/ListBuffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack$StackBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Stack$StackBuilder;

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

    .line 27
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack$StackBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Stack$StackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Stack$StackBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Stack$StackBuilder<",
            "TA;>;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/Stack$StackBuilder;->lbuff()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

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

    .line 27
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/Stack$StackBuilder;->lbuff()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->clear()V

    return-void
.end method

.method public lbuff()Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lscala/collection/mutable/Stack$StackBuilder;->lbuff:Lscala/collection/mutable/ListBuffer;

    return-object v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/Stack<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/Stack$StackBuilder;->result()Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lscala/collection/mutable/Stack;

    invoke-virtual {p0}, Lscala/collection/mutable/Stack$StackBuilder;->lbuff()Lscala/collection/mutable/ListBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/ListBuffer;->result()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 27
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

    .line 27
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

    .line 27
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

    .line 27
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
