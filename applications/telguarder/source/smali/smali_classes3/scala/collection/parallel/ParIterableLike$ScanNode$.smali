.class public Lscala/collection/parallel/ParIterableLike$ScanNode$;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanNode$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 1440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanNode$;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1440
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanNode$;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->ScanNode()Lscala/collection/parallel/ParIterableLike$ScanNode$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)Lscala/collection/parallel/ParIterableLike$ScanNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanNode<TU;>;"
        }
    .end annotation

    .line 1440
    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$ScanNode$;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {v0, v1, p1, p2}, Lscala/collection/parallel/ParIterableLike$ScanNode;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ScanNode"

    return-object v0
.end method

.method public unapply(Lscala/collection/parallel/ParIterableLike$ScanNode;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanNode<TU;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1440
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
