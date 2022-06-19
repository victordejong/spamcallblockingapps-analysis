.class public final Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$3;
.super Lscala/collection/parallel/ParIterableLike$ResultMapping;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$$anon$11;->mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ResultMapping<TR;TTp;TR1;>;"
    }
.end annotation


# instance fields
.field private final mapping$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$$anon$11;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.$anon$11;)V"
        }
    .end annotation

    .line 305
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$3;->mapping$1:Lscala/Function1;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$$anon$11;->scala$collection$parallel$ParIterableLike$$anon$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p2

    iget-object p1, p1, Lscala/collection/parallel/ParIterableLike$$anon$11;->tsk$1:Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    invoke-direct {p0, p2, p1}, Lscala/collection/parallel/ParIterableLike$ResultMapping;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR1;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$11$$anon$3;->mapping$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
