.class public Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;
.super Ljava/lang/Object;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashMapCombiner;->result()Lscala/collection/parallel/mutable/ParHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "table$2$"
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
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    .line 195
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->sizeMapInit(I)V

    return-void
.end method


# virtual methods
.method public _loadFactor()I
    .locals 1

    .line 191
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 191
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->_loadFactor:I

    return-void
.end method

.method public addEntry(Lscala/collection/mutable/HashEntry;)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V

    return-void
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public clearTable()V
    .locals 0

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->clearTable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TK;TE;)",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    check-cast p2, Lscala/collection/mutable/DefaultEntry;

    return-object p2
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 191
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

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

    .line 191
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

    .line 191
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

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 191
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

    .line 191
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

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 191
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

    .line 191
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

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public insertEntry(Lscala/collection/mutable/DefaultEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->printSizeMap(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public seedvalue()I
    .locals 1

    .line 191
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 191
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->seedvalue:I

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

    .line 191
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapDisable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 191
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 191
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 191
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->sizemap:[I

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

    .line 191
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 191
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 191
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->tableSize:I

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

    .line 191
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public threshold()I
    .locals 1

    .line 191
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 191
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->threshold:I

    return-void
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 191
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method
