.class public Lscala/collection/parallel/ParIterableLike$ScanNode;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$ScanTree;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ScanTree<TU;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final left:Lscala/collection/parallel/ParIterableLike$ScanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation
.end field

.field private final leftmost:Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final right:Lscala/collection/parallel/ParIterableLike$ScanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation
.end field

.field private final rightmost:Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;)V"
        }
    .end annotation

    .line 1440
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->left:Lscala/collection/parallel/ParIterableLike$ScanTree;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->right:Lscala/collection/parallel/ParIterableLike$ScanTree;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$ScanTree$class;->$init$(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    .line 1441
    invoke-interface {p2}, Lscala/collection/parallel/ParIterableLike$ScanTree;->rightmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lscala/collection/parallel/ParIterableLike$ScanTree;->pushdown(Ljava/lang/Object;)V

    .line 1442
    invoke-interface {p3}, Lscala/collection/parallel/ParIterableLike$ScanTree;->leftmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    move-result-object p1

    new-instance v0, Lscala/Some;

    invoke-interface {p2}, Lscala/collection/parallel/ParIterableLike$ScanTree;->rightmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev_$eq(Lscala/Option;)V

    .line 1444
    invoke-interface {p2}, Lscala/collection/parallel/ParIterableLike$ScanTree;->leftmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->leftmost:Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    .line 1445
    invoke-interface {p3}, Lscala/collection/parallel/ParIterableLike$ScanTree;->rightmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->rightmost:Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    return-void
.end method


# virtual methods
.method public beginsAt()I
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike$ScanTree;->beginsAt()I

    move-result v0

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1440
    instance-of p1, p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    return p1
.end method

.method public copy(Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)Lscala/collection/parallel/ParIterableLike$ScanNode;
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

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->scala$collection$parallel$ParIterableLike$ScanNode$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lscala/collection/parallel/ParIterableLike$ScanNode;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2()Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_6

    .line 1440
    instance-of v2, p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lscala/collection/parallel/ParIterableLike$ScanNode;

    invoke-virtual {v2}, Lscala/collection/parallel/ParIterableLike$ScanNode;->scala$collection$parallel$ParIterableLike$ScanNode$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->scala$collection$parallel$ParIterableLike$ScanNode$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v3

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {p1, p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1440
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public left()Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->left:Lscala/collection/parallel/ParIterableLike$ScanTree;

    return-object v0
.end method

.method public leftmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->leftmost:Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    return-object v0
.end method

.method public print(I)V
    .locals 4

    .line 1453
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, " "

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lscala/collection/immutable/StringOps;->$times(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "ScanNode, begins at "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->beginsAt()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 1454
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParIterableLike$ScanTree;->print(I)V

    .line 1455
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParIterableLike$ScanTree;->print(I)V

    return-void
.end method

.method public print$default$1()I
    .locals 1

    .line 1440
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$ScanTree$class;->print$default$1(Lscala/collection/parallel/ParIterableLike$ScanTree;)I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1440
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ScanNode"

    return-object v0
.end method

.method public pushdown(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1449
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParIterableLike$ScanTree;->pushdown(Ljava/lang/Object;)V

    .line 1450
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/ParIterableLike$ScanTree;->pushdown(Ljava/lang/Object;)V

    return-void
.end method

.method public right()Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->right:Lscala/collection/parallel/ParIterableLike$ScanTree;

    return-object v0
.end method

.method public rightmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->rightmost:Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ScanNode$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1440
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ScanNode;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->scala$collection$parallel$ParIterableLike$ScanNode$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1440
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
