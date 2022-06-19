.class public final Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;
.super Ljava/lang/Object;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/collection/mutable/FlatHashTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner;->seqPopulate()Lscala/collection/mutable/FlatHashTable$Contents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/FlatHashTable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private transient _loadFactor:I

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Ljava/lang/Object;

.field private transient tableSize:I

.field private transient threshold:I


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->$init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->$init$(Lscala/collection/mutable/FlatHashTable;)V

    .line 160
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->sizeMapInit(I)V

    .line 161
    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->seedvalue_$eq(I)V

    .line 163
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    .line 164
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$1;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;)V

    invoke-interface {p1, v0}, Lscala/collection/mutable/ArrayOps;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    .line 163
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;)V

    invoke-interface {p1, v0}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public _loadFactor()I
    .locals 1

    .line 159
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 159
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->_loadFactor:I

    return-void
.end method

.method public addElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addEntry(Ljava/lang/Object;)Z
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    return v0
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->calcSizeMapSize(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public capacity(I)I
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->capacity(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public clearTable()V
    .locals 0

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->clearTable(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public containsElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->containsElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->elemToEntry(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final entryToElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->entryToElem(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->findEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public hashTableContents()Lscala/collection/mutable/FlatHashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TT;>;"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->hashTableContents(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 159
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->index(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/io/ObjectInputStream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function1<",
            "TT;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$class;->init(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectInputStream;Lscala/Function1;)V

    return-void
.end method

.method public initWithContents(Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->initWithContents(Lscala/collection/mutable/FlatHashTable;Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialSize(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->isSizeMapDefined(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->iterator(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapReset(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public printContents()V
    .locals 0

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->printContents(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->printSizeMap(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public randomSeed()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->randomSeed(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public removeElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->removeElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public seedvalue()I
    .locals 1

    .line 159
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 159
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->seedvalue:I

    return-void
.end method

.method public serializeTo(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->serializeTo(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapDisable(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInit(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 159
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 159
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->sizemap:[I

    return-void
.end method

.method public table()[Ljava/lang/Object;
    .locals 1

    .line 159
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 159
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableSizeSeed(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 159
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->tableSize:I

    return-void
.end method

.method public table_$eq([Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 159
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->table:[Ljava/lang/Object;

    return-void
.end method

.method public threshold()I
    .locals 1

    .line 159
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 159
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->threshold:I

    return-void
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method
