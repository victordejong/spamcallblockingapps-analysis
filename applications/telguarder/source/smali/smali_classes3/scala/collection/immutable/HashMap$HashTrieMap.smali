.class public Lscala/collection/immutable/HashMap$HashTrieMap;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashTrieMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashMap<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final bitmap:I

.field private final elems:[Lscala/collection/immutable/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final size0:I


# direct methods
.method public constructor <init>(I[Lscala/collection/immutable/HashMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;I)V"
        }
    .end annotation

    .line 294
    iput p1, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap:I

    .line 295
    iput-object p2, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->elems:[Lscala/collection/immutable/HashMap;

    .line 296
    iput p3, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->size0:I

    .line 297
    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    return-void
.end method

.method private posOf(II)I
    .locals 2

    const/4 v0, -0x1

    :goto_0
    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public bitmap()I
    .locals 1

    .line 294
    iget v0, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap:I

    return v0
.end method

.method public elems()[Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->elems:[Lscala/collection/immutable/HashMap;

    return-object v0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;I)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    move-object/from16 v6, p4

    move/from16 v7, p5

    const/4 v8, 0x0

    move v10, v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 384
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    aget-object v0, v0, v9

    add-int/lit8 v3, p3, 0x5

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p4

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashMap;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    aput-object v0, v6, v10

    add-int/lit8 v10, v10, 0x1

    .line 390
    invoke-virtual {v0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    add-int/2addr v11, v0

    const/4 v0, 0x1

    shl-int/2addr v0, v9

    or-int/2addr v12, v0

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-ne v10, v7, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 399
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size0()I

    move-result v0

    if-ne v11, v0, :cond_3

    move-object v0, p0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v7, 0x1

    if-ne v10, v0, :cond_4

    .line 402
    aget-object v0, v6, v7

    instance-of v0, v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-nez v0, :cond_4

    .line 404
    aget-object v0, v6, v7

    goto :goto_2

    :cond_4
    sub-int/2addr v10, v7

    .line 408
    new-array v0, v10, [Lscala/collection/immutable/HashMap;

    .line 409
    invoke-static {v6, v7, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    array-length v1, v1

    if-ne v10, v1, :cond_5

    .line 412
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v1

    goto :goto_1

    .line 415
    :cond_5
    sget-object v1, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v2

    invoke-virtual {v1, v2, v12}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$keepBits(II)I

    move-result v1

    .line 417
    :goto_1
    new-instance v2, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-direct {v2, v1, v0, v11}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 427
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashMap;->foreach(Lscala/Function1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    ushr-int v0, p2, p3

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 307
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 308
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v0

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 311
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object p1

    goto :goto_0

    .line 313
    :cond_1
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 421
    new-instance v0, Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;-><init>(Lscala/collection/immutable/HashMap$HashTrieMap;)V

    return-object v0
.end method

.method public merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;I",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v3, p2

    .line 461
    instance-of v1, v0, Lscala/collection/immutable/HashMap$HashMap1;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/HashMap$HashMap1;

    .line 463
    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap$HashTrieMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    move-object/from16 v2, p0

    goto/16 :goto_3

    .line 464
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-eqz v1, :cond_4

    check-cast v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    .line 465
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    .line 467
    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v2

    .line 468
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v4

    .line 469
    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v5

    or-int v6, v4, v5

    .line 472
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    .line 475
    new-array v7, v6, [Lscala/collection/immutable/HashMap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    add-int/lit8 v12, v4, -0x1

    and-int/2addr v12, v4

    xor-int/2addr v12, v4

    add-int/lit8 v13, v5, -0x1

    and-int/2addr v13, v5

    xor-int/2addr v13, v5

    if-ne v12, v13, :cond_1

    .line 488
    aget-object v14, v1, v10

    aget-object v15, v2, v11

    move/from16 p1, v6

    add-int/lit8 v6, v3, 0x5

    move-object/from16 v3, p3

    invoke-virtual {v14, v15, v6, v3}, Lscala/collection/immutable/HashMap;->merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v6

    .line 489
    invoke-virtual {v6}, Lscala/collection/immutable/HashMap;->size()I

    move-result v14

    add-int/2addr v9, v14

    .line 490
    aput-object v6, v7, v8

    not-int v6, v12

    and-int/2addr v4, v6

    not-int v6, v13

    and-int/2addr v5, v6

    add-int/lit8 v11, v11, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v3, p3

    move/from16 p1, v6

    .line 499
    sget-object v6, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    add-int/lit8 v14, v12, -0x1

    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v6, v14, v15}, Lscala/collection/immutable/HashMap$;->unsignedCompare(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 500
    aget-object v6, v1, v10

    .line 501
    invoke-virtual {v6}, Lscala/collection/immutable/HashMap;->size()I

    move-result v13

    add-int/2addr v9, v13

    .line 502
    aput-object v6, v7, v8

    not-int v6, v12

    and-int/2addr v4, v6

    goto :goto_1

    .line 507
    :cond_2
    aget-object v6, v2, v11

    .line 508
    invoke-virtual {v6}, Lscala/collection/immutable/HashMap;->size()I

    move-result v12

    add-int/2addr v9, v12

    .line 509
    aput-object v6, v7, v8

    not-int v6, v13

    and-int/2addr v5, v6

    add-int/lit8 v11, v11, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p1

    move/from16 v3, p2

    goto :goto_0

    .line 517
    :cond_3
    new-instance v1, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v0

    or-int/2addr v0, v2

    invoke-direct {v1, v0, v7, v9}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    move-object/from16 v2, p0

    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object/from16 v3, p3

    .line 518
    instance-of v1, v0, Lscala/collection/immutable/HashMap$HashMapCollision1;

    if-eqz v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Lscala/collection/immutable/HashMap$Merger;->invert()Lscala/collection/immutable/HashMap$Merger;

    move-result-object v1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual {v0, v2, v3, v1}, Lscala/collection/immutable/HashMap;->merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object/from16 v2, p0

    .line 519
    instance-of v0, v0, Lscala/collection/immutable/HashMap;

    if-eqz v0, :cond_6

    move-object v0, v2

    :goto_3
    return-object v0

    .line 520
    :cond_6
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "section supposed to be unreachable."

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    ushr-int v0, p2, p3

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 341
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 342
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_5

    .line 343
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    aget-object v9, v3, v2

    add-int/lit8 p3, p3, 0x5

    .line 344
    invoke-virtual {v9, p1, p2, p3}, Lscala/collection/immutable/HashMap;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;

    move-result-object p1

    if-ne p1, v9, :cond_0

    goto/16 :goto_0

    .line 346
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 347
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 349
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p2, v1

    new-array p3, p2, [Lscala/collection/immutable/HashMap;

    .line 350
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p3

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    add-int/lit8 v8, v0, -0x1

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v0

    invoke-virtual {v9}, Lscala/collection/immutable/HashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    .line 355
    aget-object v1, p3, p2

    instance-of v1, v1, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-nez v1, :cond_1

    .line 356
    aget-object p1, p3, p2

    goto :goto_1

    .line 358
    :cond_1
    new-instance p2, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-direct {p2, p1, p3, v0}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    move-object p1, p2

    goto :goto_1

    .line 360
    :cond_2
    sget-object p1, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p1

    goto :goto_1

    .line 361
    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v1, :cond_4

    instance-of p2, p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    if-nez p2, :cond_4

    goto :goto_1

    .line 364
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lscala/collection/immutable/HashMap;

    .line 365
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object p3

    array-length v8, p3

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    aput-object p1, p2, v2

    .line 367
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result p3

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap;->size()I

    move-result p1

    invoke-virtual {v9}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p3, p1

    .line 368
    new-instance p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v0

    invoke-direct {p1, v0, p2, p3}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    goto :goto_1

    :cond_5
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 302
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size0()I

    move-result v0

    return v0
.end method

.method public size0()I
    .locals 1

    .line 296
    iget v0, p0, Lscala/collection/immutable/HashMap$HashTrieMap;->size0:I

    return v0
.end method

.method public split()Lscala/collection/immutable/Seq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Lscala/collection/immutable/HashMap$HashTrieMap;

    aput-object p0, v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Seq;

    goto/16 :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v3, 0x2

    .line 448
    div-int/2addr v0, v3

    .line 449
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lscala/collection/immutable/HashMap$HashTrieMap;->posOf(II)I

    move-result v4

    .line 450
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v5

    const/4 v6, -0x1

    shl-int v7, v6, v4

    and-int/2addr v5, v7

    .line 451
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v7

    rsub-int/lit8 v4, v4, 0x20

    ushr-int v4, v6, v4

    and-int/2addr v4, v7

    .line 453
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v6

    invoke-interface {v6, v0}, Lscala/collection/mutable/ArrayOps;->splitAt(I)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v6, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscala/collection/immutable/HashMap;

    invoke-virtual {v6}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lscala/collection/immutable/HashMap;

    .line 454
    new-instance v7, Lscala/collection/immutable/HashMap$HashTrieMap;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v8

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lscala/collection/immutable/HashMap$HashTrieMap$$anonfun$2;

    invoke-direct {v10, p0}, Lscala/collection/immutable/HashMap$HashTrieMap$$anonfun$2;-><init>(Lscala/collection/immutable/HashMap$HashTrieMap;)V

    invoke-interface {v8, v9, v10}, Lscala/collection/mutable/ArrayOps;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v8

    invoke-direct {v7, v5, v0, v8}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    .line 455
    new-instance v0, Lscala/collection/immutable/HashMap$HashTrieMap;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, v8}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v5

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lscala/collection/immutable/HashMap$HashTrieMap$$anonfun$3;

    invoke-direct {v9, p0}, Lscala/collection/immutable/HashMap$HashTrieMap$$anonfun$3;-><init>(Lscala/collection/immutable/HashMap$HashTrieMap;)V

    invoke-interface {v5, v8, v9}, Lscala/collection/mutable/ArrayOps;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v0, v4, v6, v5}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    .line 457
    sget-object v4, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v3, v3, [Lscala/collection/immutable/HashMap$HashTrieMap;

    aput-object v7, v3, v2

    aput-object v0, v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v4, v0}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 458
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap;->split()Lscala/collection/immutable/Seq;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;IITB1;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    move v2, p2

    ushr-int v0, v2, p3

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 319
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    .line 320
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    aget-object v7, v0, v10

    add-int/lit8 v3, p3, 0x5

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 322
    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    if-ne v0, v7, :cond_0

    move-object v2, p0

    goto/16 :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lscala/collection/immutable/HashMap;

    .line 325
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v6

    array-length v6, v6

    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-object p4, v1

    move/from16 p5, v5

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    aput-object v0, v1, v10

    .line 327
    new-instance v2, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v4

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    invoke-virtual {v7}, Lscala/collection/immutable/HashMap;->size()I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v1, v4}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v1

    new-array v3, v3, [Lscala/collection/immutable/HashMap;

    .line 331
    sget-object v4, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v3

    move v9, v10

    invoke-virtual/range {v4 .. v9}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    new-instance v4, Lscala/collection/immutable/HashMap$HashMap1;

    move-object v5, p1

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct {v4, p1, p2, p4, v7}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    aput-object v4, v3, v10

    .line 333
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v4

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v10

    move-object p1, v2

    move-object p2, v4

    move p3, v10

    move-object p4, v3

    move/from16 p5, v5

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    new-instance v2, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->bitmap()I

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashTrieMap;->size()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v3, v4}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    :goto_0
    return-object v2
.end method
