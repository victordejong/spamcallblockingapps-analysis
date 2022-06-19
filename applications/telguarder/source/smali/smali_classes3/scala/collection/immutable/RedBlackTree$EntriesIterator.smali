.class public Lscala/collection/immutable/RedBlackTree$EntriesIterator;
.super Lscala/collection/immutable/RedBlackTree$TreeIterator;
.source "RedBlackTree.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntriesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/RedBlackTree$TreeIterator<",
        "TA;TB;",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 550
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$TreeIterator;-><init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic nextResult(Lscala/collection/immutable/RedBlackTree$Tree;)Ljava/lang/Object;
    .locals 0

    .line 550
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$EntriesIterator;->nextResult(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public nextResult(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 551
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
