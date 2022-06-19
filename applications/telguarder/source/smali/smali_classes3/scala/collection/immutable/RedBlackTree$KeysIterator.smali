.class public Lscala/collection/immutable/RedBlackTree$KeysIterator;
.super Lscala/collection/immutable/RedBlackTree$TreeIterator;
.source "RedBlackTree.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeysIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/RedBlackTree$TreeIterator<",
        "TA;TB;TA;>;"
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

    .line 554
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$TreeIterator;-><init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V

    return-void
.end method


# virtual methods
.method public nextResult(Lscala/collection/immutable/RedBlackTree$Tree;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)TA;"
        }
    .end annotation

    .line 555
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
