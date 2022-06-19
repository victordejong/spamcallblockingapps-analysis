.class public final Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$1;
.super Lscala/collection/parallel/ParIterableLike$SeqComposite;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$$anon$11;->compose(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$SeqComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.SeqComposite<TR;TR2;TR3;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;>;"
    }
.end annotation


# instance fields
.field private final resCombiner$1:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$$anon$11;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.$anon$11;)V"
        }
    .end annotation

    .line 309
    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$1;->resCombiner$1:Lscala/Function2;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$$anon$11;->scala$collection$parallel$ParIterableLike$$anon$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p3

    iget-object p1, p1, Lscala/collection/parallel/ParIterableLike$$anon$11;->tsk$1:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    invoke-direct {p0, p3, p1, p2}, Lscala/collection/parallel/ParIterableLike$SeqComposite;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    return-void
.end method


# virtual methods
.method public combineResults(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR2;)TR3;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$1;->resCombiner$1:Lscala/Function2;

    invoke-interface {v0, p1, p2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
