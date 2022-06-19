.class public abstract Lscala/collection/mutable/AVLTree$class;
.super Ljava/lang/Object;
.source "AVLTree.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/AVLTree;)V
    .locals 0

    return-void
.end method

.method public static contains(Lscala/collection/mutable/AVLTree;Ljava/lang/Object;Lscala/math/Ordering;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static doubleLeftRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1

    .line 62
    sget-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Should not happen."

    invoke-virtual {p0, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0
.end method

.method public static doubleRightRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1

    .line 64
    sget-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Should not happen."

    invoke-virtual {p0, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0
.end method

.method public static insert(Lscala/collection/mutable/AVLTree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;
    .locals 1

    .line 33
    new-instance p0, Lscala/collection/mutable/Node;

    sget-object p2, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-direct {p0, p1, p2, v0}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object p0
.end method

.method public static iterator(Lscala/collection/mutable/AVLTree;)Lscala/collection/Iterator;
    .locals 0

    .line 24
    sget-object p0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {p0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static leftRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1

    .line 58
    sget-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Should not happen."

    invoke-virtual {p0, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0
.end method

.method public static rebalance(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/AVLTree;
    .locals 0

    return-object p0
.end method

.method public static remove(Lscala/collection/mutable/AVLTree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;
    .locals 0

    .line 40
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeMax(Lscala/collection/mutable/AVLTree;)Lscala/Tuple2;
    .locals 1

    .line 54
    sget-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Should not happen."

    invoke-virtual {p0, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0
.end method

.method public static removeMin(Lscala/collection/mutable/AVLTree;)Lscala/Tuple2;
    .locals 1

    .line 47
    sget-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Should not happen."

    invoke-virtual {p0, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0
.end method

.method public static rightRotation(Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1

    .line 60
    sget-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Should not happen."

    invoke-virtual {p0, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    throw p0
.end method
