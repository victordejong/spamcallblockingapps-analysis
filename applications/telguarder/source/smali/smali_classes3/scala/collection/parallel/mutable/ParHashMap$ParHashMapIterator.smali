.class public Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;
.super Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;
.source "ParHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParHashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/mutable/ParHashTable<",
        "TK;",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;>.EntryIterator<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/collection/parallel/mutable/ParHashMap<",
        "TK;TV;>.ParHashMapIterator;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMap;IIILscala/collection/mutable/DefaultEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;III",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 95
    invoke-direct/range {p0 .. p5}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;-><init>(Lscala/collection/parallel/mutable/ParHashTable;IIILscala/collection/mutable/HashEntry;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entry2item(Lscala/collection/mutable/HashEntry;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;->entry2item(Lscala/collection/mutable/DefaultEntry;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public entry2item(Lscala/collection/mutable/DefaultEntry;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;)",
            "Lscala/Tuple2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic newIterator(IIILscala/collection/mutable/HashEntry;)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 94
    check-cast p4, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;->newIterator(IIILscala/collection/mutable/DefaultEntry;)Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;

    move-result-object p1

    return-object p1
.end method

.method public newIterator(IIILscala/collection/mutable/DefaultEntry;)Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>.ParHashMapIterator;"
        }
    .end annotation

    .line 99
    new-instance v6, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;->scala$collection$parallel$mutable$ParHashMap$ParHashMapIterator$$$outer()Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;-><init>(Lscala/collection/parallel/mutable/ParHashMap;IIILscala/collection/mutable/DefaultEntry;)V

    return-object v6
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashMap$ParHashMapIterator$$$outer()Lscala/collection/parallel/mutable/ParHashMap;
    .locals 1

    .line 94
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;->$outer:Lscala/collection/parallel/mutable/ParHashTable;

    check-cast v0, Lscala/collection/parallel/mutable/ParHashMap;

    return-object v0
.end method
