.class public final Lscala/collection/immutable/RedBlackTree$$anonfun$1;
.super Lscala/runtime/AbstractFunction2;
.source "RedBlackTree.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/RedBlackTree$Tree<",
        "TA;TB;>;",
        "Lscala/collection/immutable/RedBlackTree$Tree<",
        "TA;TB;>;",
        "Lscala/collection/immutable/RedBlackTree$Tree<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final leftMost$1:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lscala/collection/immutable/RedBlackTree$$anonfun$1;->leftMost$1:Z

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 394
    check-cast p1, Lscala/collection/immutable/RedBlackTree$Tree;

    check-cast p2, Lscala/collection/immutable/RedBlackTree$Tree;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$$anonfun$1;->apply(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lscala/collection/immutable/RedBlackTree$$anonfun$1;->leftMost$1:Z

    if-eqz v0, :cond_0

    .line 396
    sget-object v1, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    sget-object v0, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    invoke-virtual {v0, p2}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v2

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v6

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$balanceLeft(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 398
    :cond_0
    sget-object v0, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    sget-object v1, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    invoke-virtual {v1, p2}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v1

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$balanceRight(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method
