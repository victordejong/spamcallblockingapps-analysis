.class public abstract Lscala/collection/mutable/FlatHashTable$class;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/FlatHashTable;)V
    .locals 3

    .line 27
    sget-object v0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-virtual {v0}, Lscala/collection/mutable/FlatHashTable$;->defaultLoadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor_$eq(I)V

    .line 31
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialCapacity(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 35
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 39
    sget-object v0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v1

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialCapacity(Lscala/collection/mutable/FlatHashTable;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/mutable/FlatHashTable$;->newThreshold(II)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    const/4 v0, 0x0

    .line 43
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    .line 45
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSizeSeed()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    return-void
.end method

.method public static addElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 0

    .line 139
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->addEntry(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static addEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 4

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v0

    .line 149
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 156
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v0

    .line 157
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result p1

    add-int/2addr p1, v2

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 158
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapAdd(I)V

    .line 159
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result p1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->threshold()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->growTable(Lscala/collection/mutable/FlatHashTable;)V

    :cond_0
    return v2

    :cond_1
    const/4 v3, 0x0

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 151
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_6

    return v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 152
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 153
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static alwaysInitSizeMap(Lscala/collection/mutable/FlatHashTable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static calcSizeMapSize(Lscala/collection/mutable/FlatHashTable;I)I
    .locals 0

    .line 274
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketBitSize()I

    move-result p0

    shr-int p0, p1, p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static capacity(Lscala/collection/mutable/FlatHashTable;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    sget-object p0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashTable$;->powerOfTwo(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static checkConsistent(Lscala/collection/mutable/FlatHashTable;)V
    .locals 10

    .line 232
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v1, Lscala/collection/immutable/Range;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    new-instance v0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;-><init>(Lscala/collection/mutable/FlatHashTable;)V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->end()I

    move-result v4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v4, :cond_2

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_6

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v5

    if-eqz v9, :cond_5

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-interface {p0, v9}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p0, v9}, Lscala/collection/mutable/FlatHashTable;->containsElem(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    sget-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;

    invoke-direct {p0, v0, v5}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;-><init>(Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;I)V

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "assertion failed: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iget-object v4, v4, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v4}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object p0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iget-object p0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p0

    new-instance v3, Lscala/collection/mutable/ArrayOps$ofRef;

    invoke-direct {v3, p0}, Lscala/collection/mutable/ArrayOps$ofRef;-><init>([Ljava/lang/Object;)V

    invoke-static {v3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_5
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v7

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method public static clearTable(Lscala/collection/mutable/FlatHashTable;)V
    .locals 3

    .line 344
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 345
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 346
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 347
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapReset(I)V

    return-void
.end method

.method public static containsElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 0

    .line 121
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->findElemImpl(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static findElemImpl(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 125
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v0

    .line 127
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 128
    :cond_1
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_2
    instance-of v3, v1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v0, v2

    .line 129
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 130
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static findEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Lscala/Option;
    .locals 1

    .line 112
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->findElemImpl(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 113
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static growTable(Lscala/collection/mutable/FlatHashTable;)V
    .locals 5

    .line 216
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    .line 217
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 218
    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 219
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapReset(I)V

    .line 220
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSizeSeed()I

    move-result v2

    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    .line 221
    sget-object v2, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v3

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/mutable/FlatHashTable$;->newThreshold(II)I

    move-result v2

    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    .line 223
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 224
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 225
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_0
    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->addEntry(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableDebug(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->checkConsistent(Lscala/collection/mutable/FlatHashTable;)V

    :cond_2
    return-void
.end method

.method public static hashTableContents(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/mutable/FlatHashTable$Contents;
    .locals 8

    .line 350
    new-instance v7, Lscala/collection/mutable/FlatHashTable$Contents;

    .line 351
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v1

    .line 352
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    .line 353
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result v3

    .line 354
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->threshold()I

    move-result v4

    .line 355
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->seedvalue()I

    move-result v5

    .line 356
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v6

    move-object v0, v7

    .line 350
    invoke-direct/range {v0 .. v6}, Lscala/collection/mutable/FlatHashTable$Contents;-><init>(I[Ljava/lang/Object;III[I)V

    return-object v7
.end method

.method public static final index(Lscala/collection/mutable/FlatHashTable;I)I
    .locals 1

    .line 327
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->seedvalue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lscala/collection/mutable/FlatHashTable;->improve(II)I

    move-result p1

    .line 328
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    .line 329
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    ushr-int/2addr p1, v0

    and-int/2addr p0, p1

    return p0
.end method

.method public static init(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectInputStream;Lscala/Function1;)V
    .locals 5

    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 71
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor_$eq(I)V

    .line 72
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

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

    .line 74
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 75
    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 76
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lscala/Predef$;->assert(Z)V

    .line 78
    sget-object v1, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lscala/collection/mutable/FlatHashTable$;->sizeForThreshold(II)I

    move-result v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->capacity(I)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    .line 79
    sget-object v1, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v2

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v4}, Lscala/collection/mutable/FlatHashTable$;->newThreshold(II)I

    move-result v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    .line 81
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->sizeMapInit(I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    :goto_2
    if-ge v3, v0, :cond_3

    .line 88
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-interface {p2, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->addElem(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static initWithContents(Lscala/collection/mutable/FlatHashTable;Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->loadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor_$eq(I)V

    .line 362
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->table()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->tableSize()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 364
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->threshold()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    .line 365
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->seedvalue()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    .line 366
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->sizemap()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    .line 368
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->alwaysInitSizeMap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapInitAndRebuild()V

    :cond_1
    return-void
.end method

.method private static initialCapacity(Lscala/collection/mutable/FlatHashTable;)I
    .locals 1

    .line 55
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->initialSize()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->capacity(I)I

    move-result p0

    return p0
.end method

.method public static initialSize(Lscala/collection/mutable/FlatHashTable;)I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public static isSizeMapDefined(Lscala/collection/mutable/FlatHashTable;)Z
    .locals 0

    .line 316
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static iterator(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/Iterator;
    .locals 1

    .line 204
    new-instance v0, Lscala/collection/mutable/FlatHashTable$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;-><init>(Lscala/collection/mutable/FlatHashTable;)V

    return-object v0
.end method

.method public static nnSizeMapAdd(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 1

    .line 254
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketBitSize()I

    move-result v0

    shr-int/2addr p1, v0

    .line 256
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object p0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_0
    return-void
.end method

.method public static nnSizeMapRemove(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 1

    .line 260
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketBitSize()I

    move-result p0

    shr-int p0, p1, p0

    aget p1, v0, p0

    add-int/lit8 p1, p1, -0x1

    aput p1, v0, p0

    :cond_0
    return-void
.end method

.method public static nnSizeMapReset(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 1

    .line 265
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->calcSizeMapSize(I)I

    move-result p1

    .line 267
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    array-length v0, v0

    if-eq v0, p1, :cond_0

    new-array p1, p1, [I

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final precedes$1(Lscala/collection/mutable/FlatHashTable;II)Z
    .locals 2

    .line 171
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    shr-int/2addr p0, v0

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    sub-int/2addr p2, p1

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    if-le p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static printContents(Lscala/collection/mutable/FlatHashTable;)V
    .locals 4

    .line 311
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p0

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-interface {p0, v1, v2, v3}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static printSizeMap(Lscala/collection/mutable/FlatHashTable;)V
    .locals 4

    .line 307
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object p0

    invoke-virtual {v1, p0}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object p0

    const-string v1, "szmap: ["

    const-string v2, ", "

    const-string v3, "]"

    invoke-interface {p0, v1, v2, v3}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static randomSeed(Lscala/collection/mutable/FlatHashTable;)I
    .locals 0

    .line 57
    sget-object p0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-virtual {p0}, Lscala/collection/mutable/FlatHashTable$;->seedGenerator()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/util/Random;

    invoke-virtual {p0}, Lscala/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public static removeElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 4

    .line 169
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableDebug(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->checkConsistent(Lscala/collection/mutable/FlatHashTable;)V

    .line 175
    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v0

    .line 177
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    .line 179
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_9

    add-int/lit8 p1, v0, 0x1

    .line 181
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr p1, v1

    .line 182
    :goto_2
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_7

    .line 192
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 193
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 194
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapRemove(I)V

    .line 195
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableDebug(Lscala/collection/mutable/FlatHashTable;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->checkConsistent(Lscala/collection/mutable/FlatHashTable;)V

    :cond_6
    return v3

    .line 183
    :cond_7
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v1

    if-eq v1, p1, :cond_8

    .line 185
    invoke-static {p0, v1, v0}, Lscala/collection/mutable/FlatHashTable$class;->precedes$1(Lscala/collection/mutable/FlatHashTable;II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, p1

    aput-object v2, v1, v0

    move v0, p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 190
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr p1, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 198
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 199
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    goto/16 :goto_0
.end method

.method public static serializeTo(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 102
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 103
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 104
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->seedvalue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 105
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->isSizeMapDefined()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 106
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1;-><init>(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectOutputStream;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static sizeMapDisable(Lscala/collection/mutable/FlatHashTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    return-void
.end method

.method public static sizeMapInit(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 0

    .line 279
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->calcSizeMapSize(I)I

    move-result p1

    new-array p1, p1, [I

    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    return-void
.end method

.method public static sizeMapInitAndRebuild(Lscala/collection/mutable/FlatHashTable;)V
    .locals 8

    .line 286
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->sizeMapInit(I)V

    .line 289
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->totalSizeMapBuckets()I

    move-result v0

    .line 292
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 293
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketSize()I

    move-result v3

    array-length v4, v1

    invoke-virtual {v2, v3, v4}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 297
    aget-object v7, v1, v5

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 300
    :cond_1
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v7

    aput v6, v7, v4

    .line 301
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketSize()I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final tableDebug(Lscala/collection/mutable/FlatHashTable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static tableSizeSeed(Lscala/collection/mutable/FlatHashTable;)I
    .locals 0

    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static final totalSizeMapBuckets(Lscala/collection/mutable/FlatHashTable;)I
    .locals 1

    .line 271
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketSize()I

    move-result p0

    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
