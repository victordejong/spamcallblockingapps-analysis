.class public Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
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
    name = "ScanLeaf$"
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

    .line 1459
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1459
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->ScanLeaf()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/parallel/IterableSplitter;Lscala/Function2;IILscala/Option;Ljava/lang/Object;)Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;",
            "Lscala/Function2<",
            "TU;TU;TU;>;II",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;TU;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation

    .line 1459
    new-instance v8, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;->$outer:Lscala/collection/parallel/ParIterableLike;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/IterableSplitter;Lscala/Function2;IILscala/Option;Ljava/lang/Object;)V

    return-object v8
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ScanLeaf"

    return-object v0
.end method

.method public unapply(Lscala/collection/parallel/ParIterableLike$ScanLeaf;)Lscala/Option;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;)",
            "Lscala/Option<",
            "Lscala/Tuple6<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;>;TU;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1459
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v8, Lscala/Tuple6;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->op()Lscala/Function2;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v6

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lscala/Tuple6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v8}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
