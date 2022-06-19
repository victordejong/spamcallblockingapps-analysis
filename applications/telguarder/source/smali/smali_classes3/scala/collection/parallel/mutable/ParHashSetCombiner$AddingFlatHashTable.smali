.class public Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;
.super Ljava/lang/Object;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/collection/mutable/FlatHashTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddingFlatHashTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/FlatHashTable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParHashSetCombiner;

.field private transient _loadFactor:I

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Ljava/lang/Object;

.field private transient tableSize:I

.field private transient threshold:I


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;III)V"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->$init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->$init$(Lscala/collection/mutable/FlatHashTable;)V

    .line 179
    invoke-virtual {p0, p3}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->_loadFactor_$eq(I)V

    .line 180
    sget-object p1, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->_loadFactor()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lscala/collection/mutable/FlatHashTable$;->sizeForThreshold(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->capacity(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table_$eq([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->tableSize_$eq(I)V

    .line 182
    sget-object p1, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->_loadFactor()I

    move-result p2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p3

    array-length p3, p3

    invoke-virtual {p1, p2, p3}, Lscala/collection/mutable/FlatHashTable$;->newThreshold(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->threshold_$eq(I)V

    .line 183
    invoke-virtual {p0, p4}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->seedvalue_$eq(I)V

    .line 184
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->sizeMapInit(I)V

    return-void
.end method


# virtual methods
.method public _loadFactor()I
    .locals 1

    .line 178
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 178
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->_loadFactor:I

    return-void
.end method

.method public addElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addEntry(Ljava/lang/Object;)Z
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    return v0
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->calcSizeMapSize(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public capacity(I)I
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->capacity(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public clearTable()V
    .locals 0

    .line 178
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

    .line 178
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

    .line 178
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

    .line 178
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

    .line 178
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

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->hashTableContents(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 178
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 178
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

    .line 178
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

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->initWithContents(Lscala/collection/mutable/FlatHashTable;Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialSize(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public insertEntry(IILjava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 212
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->index(I)I

    move-result p1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p2

    aput-object p3, p2, p1

    .line 230
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->nnSizeMapAdd(I)V

    return v2

    :cond_1
    const/4 v3, 0x0

    if-ne v1, p3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 215
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, p3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    return v3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p2, :cond_7

    return v0

    .line 218
    :cond_7
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 178
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

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->iterator(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapReset(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public printContents()V
    .locals 0

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->printContents(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->printSizeMap(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public randomSeed()I
    .locals 1

    .line 178
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

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->removeElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashSetCombiner$AddingFlatHashTable$$$outer()Lscala/collection/parallel/mutable/ParHashSetCombiner;
    .locals 1

    .line 178
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner;

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .line 178
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 178
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->seedvalue:I

    return-void
.end method

.method public serializeTo(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->serializeTo(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->tableSize_$eq(I)V

    return-void
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapDisable(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInit(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 178
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 178
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->sizemap:[I

    return-void
.end method

.method public table()[Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method public tableLength()I
    .locals 1

    .line 188
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public tableSize()I
    .locals 1

    .line 178
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableSizeSeed(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 178
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->tableSize:I

    return-void
.end method

.method public table_$eq([Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 178
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table:[Ljava/lang/Object;

    return-void
.end method

.method public threshold()I
    .locals 1

    .line 178
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 178
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->threshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 186
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "AFHT(%s)"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 178
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method
