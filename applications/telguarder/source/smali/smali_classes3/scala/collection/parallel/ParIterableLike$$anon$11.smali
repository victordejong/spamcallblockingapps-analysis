.class public final Lscala/collection/parallel/ParIterableLike$$anon$11;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$TaskOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.TaskOps<TR;TTp;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field public final tsk$1:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 304
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anon$11;->$outer:Lscala/collection/parallel/ParIterableLike;

    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$11;->tsk$1:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compose(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$SeqComposite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R3:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "Tp2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;",
            "Lscala/Function2<",
            "TR;TR2;TR3;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.SeqComposite<TR;TR2;TR3;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;>;"
        }
    .end annotation

    .line 309
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$1;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$1;-><init>(Lscala/collection/parallel/ParIterableLike$$anon$11;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)V

    return-object v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TR;TR1;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ResultMapping<TR;TTp;TR1;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$3;-><init>(Lscala/collection/parallel/ParIterableLike$$anon$11;Lscala/Function1;)V

    return-object v0
.end method

.method public parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R3:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "Tp2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;",
            "Lscala/Function2<",
            "TR;TR2;TR3;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ParComposite<TR;TR2;TR3;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;>;"
        }
    .end annotation

    .line 313
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$2;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$2;-><init>(Lscala/collection/parallel/ParIterableLike$$anon$11;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)V

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$$anon$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 304
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$11;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method
