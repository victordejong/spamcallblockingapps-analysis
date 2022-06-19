.class public final Lscala/collection/mutable/Leaf$;
.super Ljava/lang/Object;
.source "AVLTree.scala"

# interfaces
.implements Lscala/collection/mutable/AVLTree;
.implements Lscala/Product;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/AVLTree<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Product;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Leaf$;


# instance fields
.field private final balance:I

.field private final depth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Leaf$;

    invoke-direct {v0}, Lscala/collection/mutable/Leaf$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->$init$(Lscala/collection/mutable/AVLTree;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lscala/collection/mutable/Leaf$;->balance:I

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lscala/collection/mutable/Leaf$;->depth:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 70
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    return-object v0
.end method


# virtual methods
.method public balance()I
    .locals 1

    .line 71
    iget v0, p0, Lscala/collection/mutable/Leaf$;->balance:I

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 70
    instance-of p1, p1, Lscala/collection/mutable/Leaf$;

    return p1
.end method

.method public contains(Ljava/lang/Object;Lscala/math/Ordering;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)Z"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/AVLTree$class;->contains(Lscala/collection/mutable/AVLTree;Ljava/lang/Object;Lscala/math/Ordering;)Z

    move-result p1

    return p1
.end method

.method public depth()I
    .locals 1

    .line 73
    iget v0, p0, Lscala/collection/mutable/Leaf$;->depth:I

    return v0
.end method

.method public doubleLeftRotation()Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->doubleLeftRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;

    move-result-object v0

    return-object v0
.end method

.method public doubleRightRotation()Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->doubleRightRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x24137e

    return v0
.end method

.method public insert(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/AVLTree$class;->insert(Lscala/collection/mutable/AVLTree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->iterator(Lscala/collection/mutable/AVLTree;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public leftRotation()Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->leftRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;

    move-result-object v0

    return-object v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 70
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Leaf"

    return-object v0
.end method

.method public rebalance()Lscala/collection/mutable/AVLTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->rebalance(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/AVLTree;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/mutable/AVLTree<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/AVLTree$class;->remove(Lscala/collection/mutable/AVLTree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;

    move-result-object p1

    return-object p1
.end method

.method public removeMax()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Tuple2<",
            "TB;",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->removeMax(Lscala/collection/mutable/AVLTree;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public removeMin()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Tuple2<",
            "TB;",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->removeMin(Lscala/collection/mutable/AVLTree;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public rightRotation()Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->rightRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Leaf"

    return-object v0
.end method
