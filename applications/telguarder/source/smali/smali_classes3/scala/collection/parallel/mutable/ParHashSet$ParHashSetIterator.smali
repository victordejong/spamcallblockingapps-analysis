.class public Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;
.super Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;
.source "ParHashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParHashSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/mutable/ParFlatHashTable<",
        "TT;>.ParFlatHashTableIterator;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSet;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>;III)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;-><init>(Lscala/collection/parallel/mutable/ParFlatHashTable;III)V

    return-void
.end method


# virtual methods
.method public bridge synthetic newIterator(III)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;->newIterator(III)Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;

    move-result-object p1

    return-object p1
.end method

.method public newIterator(III)Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>.ParHashSetIterator;"
        }
    .end annotation

    .line 81
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;->scala$collection$parallel$mutable$ParHashSet$ParHashSetIterator$$$outer()Lscala/collection/parallel/mutable/ParHashSet;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;-><init>(Lscala/collection/parallel/mutable/ParHashSet;III)V

    return-object v0
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashSet$ParHashSetIterator$$$outer()Lscala/collection/parallel/mutable/ParHashSet;
    .locals 1

    .line 79
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSet$ParHashSetIterator;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable;

    check-cast v0, Lscala/collection/parallel/mutable/ParHashSet;

    return-object v0
.end method
