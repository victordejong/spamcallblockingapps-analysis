.class public Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;
.super Ljava/lang/Object;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashMapCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddingHashTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/HashTable<",
        "TK;",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParHashMapCombiner;

.field private transient _loadFactor:I

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/HashEntry;",
            ">;"
        }
    .end annotation
.end field

.field private transient tableSize:I

.field private transient threshold:I


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->$outer:Lscala/collection/parallel/mutable/ParHashMapCombiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    .line 219
    invoke-virtual {p0, p3}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->_loadFactor_$eq(I)V

    .line 220
    sget-object p1, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    sget-object p3, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->_loadFactor()I

    move-result v0

    invoke-virtual {p3, v0, p2}, Lscala/collection/mutable/HashTable$;->sizeForThreshold(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lscala/collection/mutable/HashTable$;->capacity(I)I

    move-result p1

    new-array p1, p1, [Lscala/collection/mutable/HashEntry;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    const/4 p1, 0x0

    .line 221
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->tableSize_$eq(I)V

    .line 222
    invoke-virtual {p0, p4}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->seedvalue_$eq(I)V

    .line 223
    sget-object p1, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->_loadFactor()I

    move-result p2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p3

    array-length p3, p3

    invoke-virtual {p1, p2, p3}, Lscala/collection/mutable/HashTable$;->newThreshold(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->threshold_$eq(I)V

    .line 224
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->sizeMapInit(I)V

    return-void
.end method


# virtual methods
.method public _loadFactor()I
    .locals 1

    .line 217
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 217
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->_loadFactor:I

    return-void
.end method

.method public addEntry(Lscala/collection/mutable/HashEntry;)V
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V

    return-void
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public clearTable()V
    .locals 0

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->clearTable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 217
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/runtime/Nothing$;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TK;TX;)",
            "Lscala/runtime/Nothing$;"
        }
    .end annotation

    .line 247
    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/Predef$;->$qmark$qmark$qmark()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method

.method public elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public entriesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 217
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public foreachEntry(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;TU;>;)V"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->foreachEntry(Lscala/collection/mutable/HashTable;Lscala/Function1;)V

    return-void
.end method

.method public hashTableContents()Lscala/collection/mutable/HashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 217
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->index(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/io/ObjectInputStream;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function0<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->init(Lscala/collection/mutable/HashTable;Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method public initWithContents(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public insertEntry(Lscala/collection/mutable/DefaultEntry;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->index(I)I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Lscala/collection/mutable/DefaultEntry;

    const/4 v2, -0x1

    move-object v3, v1

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {v3}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    instance-of v4, v6, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v6, Ljava/lang/Number;

    invoke-static {v6, v7}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_2
    instance-of v4, v6, Ljava/lang/Character;

    if-eqz v4, :cond_3

    check-cast v6, Ljava/lang/Character;

    invoke-static {v6, v7}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    const/4 v3, 0x0

    const/4 v0, -0x1

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {v3}, Lscala/collection/mutable/DefaultEntry;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/mutable/DefaultEntry;

    goto :goto_0

    :cond_5
    if-eq v0, v2, :cond_6

    .line 241
    invoke-virtual {p1, v1}, Lscala/collection/mutable/DefaultEntry;->next_$eq(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aput-object p1, v1, v0

    .line 243
    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->nnSizeMapAdd(I)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->printSizeMap(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashMapCombiner$AddingHashTable$$$outer()Lscala/collection/parallel/mutable/ParHashMapCombiner;
    .locals 1

    .line 217
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->$outer:Lscala/collection/parallel/mutable/ParHashMapCombiner;

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .line 217
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 217
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->seedvalue:I

    return-void
.end method

.method public serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "Lscala/Function1<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 225
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->tableSize_$eq(I)V

    return-void
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapDisable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 217
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 217
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->sizemap:[I

    return-void
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 217
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 217
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->tableSize:I

    return-void
.end method

.method public table_$eq([Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 217
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public threshold()I
    .locals 1

    .line 217
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 217
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->threshold:I

    return-void
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 217
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method
