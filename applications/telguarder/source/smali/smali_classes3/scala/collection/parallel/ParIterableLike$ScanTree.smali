.class public interface abstract Lscala/collection/parallel/ParIterableLike$ScanTree;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "ScanTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract beginsAt()I
.end method

.method public abstract leftmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract print(I)V
.end method

.method public abstract print$default$1()I
.end method

.method public abstract pushdown(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation
.end method

.method public abstract rightmost()Lscala/collection/parallel/ParIterableLike$ScanLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Scan",
            "Leaf<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$parallel$ParIterableLike$ScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;
.end method
