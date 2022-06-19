.class public abstract Lscala/collection/mutable/HashTable$class;
.super Ljava/lang/Object;
.source "HashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/HashTable;)V
    .locals 1

    .line 41
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashTable$;->defaultLoadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->_loadFactor_$eq(I)V

    .line 45
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialCapacity(Lscala/collection/mutable/HashTable;)I

    move-result v0

    new-array v0, v0, [Lscala/collection/mutable/HashEntry;

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    const/4 v0, 0x0

    .line 49
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 53
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v0

    invoke-static {p0, v0}, Lscala/collection/mutable/HashTable$class;->initialThreshold(Lscala/collection/mutable/HashTable;I)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    const/4 v0, 0x0

    .line 57
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSizeSeed()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->seedvalue_$eq(I)V

    return-void
.end method

.method public static addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V
    .locals 1

    .line 145
    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$addEntry0(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;I)V

    return-void
.end method

.method public static alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I
    .locals 0

    .line 308
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketBitSize()I

    move-result p0

    shr-int p0, p1, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static clearTable(Lscala/collection/mutable/HashTable;)V
    .locals 3

    .line 243
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 244
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 245
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 246
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->nnSizeMapReset(I)V

    return-void
.end method

.method public static elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 358
    :cond_1
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/lang/Character;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;
    .locals 1

    .line 206
    new-instance v0, Lscala/collection/mutable/HashTable$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashTable$$anon$1;-><init>(Lscala/collection/mutable/HashTable;)V

    return-object v0
.end method

.method public static findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 1

    .line 132
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$findEntry0(Lscala/collection/mutable/HashTable;Ljava/lang/Object;I)Lscala/collection/mutable/HashEntry;

    move-result-object p0

    return-object p0
.end method

.method public static findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 2

    .line 164
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v0

    .line 165
    invoke-static {p0, p1, v0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$findEntry0(Lscala/collection/mutable/HashTable;Ljava/lang/Object;I)Lscala/collection/mutable/HashEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/HashTable;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$addEntry0(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;I)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static foreachEntry(Lscala/collection/mutable/HashTable;Lscala/Function1;)V
    .locals 2

    .line 225
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    .line 226
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$lastPopulatedIndex(Lscala/collection/mutable/HashTable;)I

    move-result p0

    .line 227
    aget-object v1, v0, p0

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 230
    :cond_1
    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashEntry;

    :goto_0
    if-nez v1, :cond_0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 235
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;
    .locals 8

    .line 382
    new-instance v7, Lscala/collection/mutable/HashTable$Contents;

    .line 383
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v1

    .line 384
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v2

    .line 385
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result v3

    .line 386
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->threshold()I

    move-result v4

    .line 387
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->seedvalue()I

    move-result v5

    .line 388
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v6

    move-object v0, v7

    .line 382
    invoke-direct/range {v0 .. v6}, Lscala/collection/mutable/HashTable$Contents;-><init>(I[Lscala/collection/mutable/HashEntry;III[I)V

    return-object v7
.end method

.method public static final index(Lscala/collection/mutable/HashTable;I)I
    .locals 2

    .line 364
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 365
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->seedvalue()I

    move-result v1

    invoke-interface {p0, p1, v1}, Lscala/collection/mutable/HashTable;->improve(II)I

    move-result p0

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shr-int/2addr p0, p1

    and-int/2addr p0, v0

    return p0
.end method

.method public static init(Lscala/collection/mutable/HashTable;Ljava/io/ObjectInputStream;Lscala/Function0;)V
    .locals 5

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 88
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->_loadFactor_$eq(I)V

    .line 89
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->assert(Z)V

    .line 91
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 92
    invoke-interface {p0, v3}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 93
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lscala/Predef$;->assert(Z)V

    .line 95
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/HashTable;->seedvalue_$eq(I)V

    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    .line 99
    sget-object v1, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    sget-object v2, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v4

    invoke-virtual {v2, v4, v0}, Lscala/collection/mutable/HashTable$;->sizeForThreshold(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/HashTable$;->capacity(I)I

    move-result v1

    new-array v1, v1, [Lscala/collection/mutable/HashEntry;

    invoke-interface {p0, v1}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    .line 100
    sget-object v1, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v2

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v4}, Lscala/collection/mutable/HashTable$;->newThreshold(II)I

    move-result v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    if-eqz p1, :cond_2

    .line 102
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p1

    array-length p1, p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->sizeMapInit(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    :goto_2
    if-ge v3, v0, :cond_3

    .line 106
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/HashEntry;

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->addEntry(Lscala/collection/mutable/HashEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->loadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->_loadFactor_$eq(I)V

    .line 373
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    .line 374
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->tableSize()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 375
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->threshold()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    .line 376
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->seedvalue()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->seedvalue_$eq(I)V

    .line 377
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->sizemap()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    .line 379
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->alwaysInitSizeMap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapInitAndRebuild()V

    :cond_1
    return-void
.end method

.method private static initialCapacity(Lscala/collection/mutable/HashTable;)I
    .locals 1

    .line 71
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->initialSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/HashTable$;->capacity(I)I

    move-result p0

    return p0
.end method

.method public static initialSize(Lscala/collection/mutable/HashTable;)I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method private static initialThreshold(Lscala/collection/mutable/HashTable;I)I
    .locals 1

    .line 69
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialCapacity(Lscala/collection/mutable/HashTable;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lscala/collection/mutable/HashTable$;->newThreshold(II)I

    move-result p0

    return p0
.end method

.method public static isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z
    .locals 0

    .line 351
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V
    .locals 1

    .line 289
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketBitSize()I

    move-result p0

    shr-int p0, p1, p0

    aget p1, v0, p0

    add-int/lit8 p1, p1, 0x1

    aput p1, v0, p0

    :cond_0
    return-void
.end method

.method public static nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V
    .locals 1

    .line 294
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketBitSize()I

    move-result p0

    shr-int p0, p1, p0

    aget p1, v0, p0

    add-int/lit8 p1, p1, -0x1

    aput p1, v0, p0

    :cond_0
    return-void
.end method

.method public static nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V
    .locals 1

    .line 299
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->calcSizeMapSize(I)I

    move-result p1

    .line 301
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    array-length v0, v0

    if-eq v0, p1, :cond_0

    new-array p1, p1, [I

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static printSizeMap(Lscala/collection/mutable/HashTable;)V
    .locals 2

    .line 344
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->toList()Lscala/collection/immutable/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 5

    .line 179
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v0

    .line 180
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 182
    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p1}, Lscala/collection/mutable/HashTable;->elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p1

    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/HashEntry;

    aput-object v2, p1, v0

    .line 184
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 185
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->nnSizeMapRemove(I)V

    return-object v1

    .line 188
    :cond_0
    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/HashEntry;

    :goto_0
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3, p1}, Lscala/collection/mutable/HashTable;->elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/HashEntry;

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 194
    :cond_3
    invoke-interface {v1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lscala/collection/mutable/HashEntry;->next_$eq(Ljava/lang/Object;)V

    .line 195
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 196
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->nnSizeMapRemove(I)V

    return-object v1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resize(Lscala/collection/mutable/HashTable;I)V
    .locals 6

    .line 250
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    .line 251
    new-array v1, p1, [Lscala/collection/mutable/HashEntry;

    invoke-interface {p0, v1}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    .line 252
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    array-length v1, v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/HashTable;->nnSizeMapReset(I)V

    .line 253
    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 255
    aget-object v2, v0, v1

    :goto_1
    if-nez v2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {v2}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v3

    .line 258
    invoke-interface {v2}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/mutable/HashEntry;

    .line 259
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-interface {v2, v5}, Lscala/collection/mutable/HashEntry;->next_$eq(Ljava/lang/Object;)V

    .line 260
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    aput-object v2, v5, v3

    .line 262
    invoke-interface {p0, v3}, Lscala/collection/mutable/HashTable;->nnSizeMapAdd(I)V

    move-object v2, v4

    goto :goto_1

    .line 266
    :cond_1
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/HashTable$;->newThreshold(II)I

    move-result p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    return-void
.end method

.method public static scala$collection$mutable$HashTable$$addEntry0(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;I)V
    .locals 1

    .line 149
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {p1, v0}, Lscala/collection/mutable/HashEntry;->next_$eq(Ljava/lang/Object;)V

    .line 150
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    aput-object p1, v0, p2

    .line 151
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 152
    invoke-interface {p0, p2}, Lscala/collection/mutable/HashTable;->nnSizeMapAdd(I)V

    .line 153
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result p1

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->threshold()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 154
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->resize(Lscala/collection/mutable/HashTable;I)V

    :cond_0
    return-void
.end method

.method public static scala$collection$mutable$HashTable$$findEntry0(Lscala/collection/mutable/HashTable;Ljava/lang/Object;I)Lscala/collection/mutable/HashEntry;
    .locals 1

    .line 135
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    aget-object p2, v0, p2

    :goto_0
    if-eqz p2, :cond_1

    .line 136
    invoke-interface {p2}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lscala/collection/mutable/HashTable;->elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/mutable/HashEntry;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public static scala$collection$mutable$HashTable$$lastPopulatedIndex(Lscala/collection/mutable/HashTable;)I
    .locals 2

    .line 74
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 75
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 120
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 121
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 122
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->seedvalue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 123
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->isSizeMapDefined()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 125
    invoke-interface {p0, p2}, Lscala/collection/mutable/HashTable;->foreachEntry(Lscala/Function1;)V

    return-void
.end method

.method public static sizeMapDisable(Lscala/collection/mutable/HashTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    return-void
.end method

.method public static sizeMapInit(Lscala/collection/mutable/HashTable;I)V
    .locals 0

    .line 312
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->calcSizeMapSize(I)I

    move-result p1

    new-array p1, p1, [I

    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    return-void
.end method

.method public static sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V
    .locals 8

    .line 318
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->sizeMapInit(I)V

    .line 323
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    .line 324
    array-length v1, v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v1

    .line 326
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->totalSizeMapBuckets()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    .line 330
    aget-object v7, v0, v5

    :goto_3
    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 333
    invoke-interface {v7}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscala/collection/mutable/HashEntry;

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 337
    :cond_2
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v7

    aput v6, v7, v4

    .line 338
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static tableSizeSeed(Lscala/collection/mutable/HashTable;)I
    .locals 0

    .line 61
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static final totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I
    .locals 2

    .line 305
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result p0

    div-int p0, v0, p0

    :goto_0
    return p0
.end method
