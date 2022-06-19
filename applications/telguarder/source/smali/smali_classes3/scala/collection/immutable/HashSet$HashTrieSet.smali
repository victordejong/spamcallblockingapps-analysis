.class public Lscala/collection/immutable/HashSet$HashTrieSet;
.super Lscala/collection/immutable/HashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashTrieSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashSet<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final bitmap:I

.field private final elems:[Lscala/collection/immutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final size0:I


# direct methods
.method public constructor <init>(I[Lscala/collection/immutable/HashSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)V"
        }
    .end annotation

    .line 523
    iput p1, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap:I

    iput-object p2, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->elems:[Lscala/collection/immutable/HashSet;

    iput p3, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->size0:I

    .line 524
    invoke-direct {p0}, Lscala/collection/immutable/HashSet;-><init>()V

    .line 525
    sget-object p3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    array-length p2, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Lscala/Predef$;->assert(Z)V

    return-void
.end method

.method private bitmap()I
    .locals 1

    .line 523
    iget v0, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap:I

    return v0
.end method

.method private final removeAll$1(Lscala/collection/immutable/HashSet;Lscala/collection/immutable/ListSet;ILscala/collection/immutable/HashSet$HashSetCollision1;)Lscala/collection/immutable/HashSet;
    .locals 2

    .line 839
    :goto_0
    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 840
    :cond_0
    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    invoke-virtual {p1, v0, v1, p3}, Lscala/collection/immutable/HashSet;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object p1

    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->tail()Lscala/collection/immutable/ListSet;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private size0()I
    .locals 1

    .line 523
    iget v0, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->size0:I

    return v0
.end method


# virtual methods
.method public diff0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-ne v1, v0, :cond_0

    move-object v3, v0

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 769
    :cond_0
    instance-of v6, v1, Lscala/collection/immutable/HashSet$HashSet1;

    if-eqz v6, :cond_1

    check-cast v1, Lscala/collection/immutable/HashSet$HashSet1;

    .line 770
    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v1

    invoke-virtual {v0, v3, v1, v2}, Lscala/collection/immutable/HashSet$HashTrieSet;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object v5

    move-object v3, v0

    goto/16 :goto_6

    .line 771
    :cond_1
    instance-of v6, v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz v6, :cond_c

    check-cast v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    .line 772
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v6

    .line 773
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v7

    .line 776
    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v8

    .line 777
    invoke-direct {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    move v14, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v15, 0x1

    if-eqz v7, :cond_8

    add-int/lit8 v16, v7, -0x1

    and-int v16, v7, v16

    xor-int v5, v7, v16

    add-int/lit8 v16, v1, -0x1

    and-int v16, v1, v16

    xor-int v9, v1, v16

    if-ne v5, v9, :cond_4

    .line 792
    aget-object v15, v6, v12

    aget-object v0, v8, v13

    move-object/from16 v16, v8

    add-int/lit8 v8, v2, 0x5

    invoke-virtual {v15, v0, v8, v3, v14}, Lscala/collection/immutable/HashSet;->diff0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 794
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v8

    add-int/2addr v11, v8

    or-int/2addr v10, v5

    .line 796
    aput-object v0, v3, v14

    add-int/lit8 v14, v14, 0x1

    :cond_2
    not-int v0, v5

    and-int/2addr v7, v0

    add-int/lit8 v12, v12, 0x1

    :cond_3
    not-int v0, v9

    and-int/2addr v1, v0

    add-int/lit8 v13, v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v8, v16

    goto :goto_0

    :cond_4
    move-object/from16 v16, v8

    .line 803
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v8, v9, -0x1

    if-ge v0, v8, :cond_5

    const/16 v17, 0x1

    goto :goto_2

    :cond_5
    const/16 v17, 0x0

    :goto_2
    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    xor-int v0, v17, v0

    if-gez v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    xor-int/2addr v0, v15

    if-eqz v0, :cond_3

    .line 806
    aget-object v0, v6, v12

    .line 807
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v8

    add-int/2addr v11, v8

    or-int/2addr v10, v5

    .line 809
    aput-object v0, v3, v14

    add-int/lit8 v14, v14, 0x1

    not-int v0, v5

    and-int/2addr v7, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_8
    if-nez v10, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    .line 821
    :cond_9
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v0

    if-ne v11, v0, :cond_a

    move-object/from16 v5, p0

    goto :goto_5

    :cond_a
    sub-int/2addr v14, v4

    if-ne v14, v15, :cond_b

    .line 827
    aget-object v0, v3, v4

    instance-of v0, v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v0, :cond_b

    .line 828
    aget-object v0, v3, v4

    move-object v5, v0

    goto :goto_5

    .line 830
    :cond_b
    new-array v0, v14, [Lscala/collection/immutable/HashSet;

    const/4 v1, 0x0

    .line 831
    invoke-static {v3, v4, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    new-instance v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {v1, v10, v0, v11}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object v5, v1

    :goto_5
    move-object/from16 v3, p0

    goto :goto_6

    .line 835
    :cond_c
    instance-of v0, v1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    if-eqz v0, :cond_d

    move-object v0, v1

    check-cast v0, Lscala/collection/immutable/HashSet$HashSetCollision1;

    .line 841
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-direct {v3, v3, v1, v2, v0}, Lscala/collection/immutable/HashSet$HashTrieSet;->removeAll$1(Lscala/collection/immutable/HashSet;Lscala/collection/immutable/ListSet;ILscala/collection/immutable/HashSet$HashSetCollision1;)Lscala/collection/immutable/HashSet;

    move-result-object v5

    goto :goto_6

    :cond_d
    move-object/from16 v3, p0

    move-object v5, v3

    :goto_6
    return-object v5
.end method

.method public elems()[Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashTrieSet;->elems:[Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v6, p4

    move/from16 v7, p5

    const/4 v8, 0x0

    move v10, v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 934
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 935
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    aget-object v0, v0, v9

    add-int/lit8 v3, p3, 0x5

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p4

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    aput-object v0, v6, v10

    add-int/lit8 v10, v10, 0x1

    .line 940
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

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

    .line 949
    :cond_2
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v0

    if-ne v11, v0, :cond_3

    move-object v0, p0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v7, 0x1

    if-ne v10, v0, :cond_4

    .line 952
    aget-object v0, v6, v7

    instance-of v0, v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v0, :cond_4

    .line 954
    aget-object v0, v6, v7

    goto :goto_2

    :cond_4
    sub-int/2addr v10, v7

    .line 958
    new-array v0, v10, [Lscala/collection/immutable/HashSet;

    .line 959
    invoke-static {v6, v7, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    array-length v1, v1

    if-ne v10, v1, :cond_5

    .line 962
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    goto :goto_1

    .line 965
    :cond_5
    sget-object v1, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v2

    invoke-virtual {v1, v2, v12}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$keepBits(II)I

    move-result v1

    .line 967
    :goto_1
    new-instance v2, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {v2, v1, v0, v11}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

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
            "TA;TU;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 977
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 978
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashSet;->foreach(Lscala/Function1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    ushr-int v0, p2, p3

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 534
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 535
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result p1

    goto :goto_0

    .line 536
    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 537
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v0

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-ne v1, v0, :cond_0

    :goto_0
    move-object v5, v0

    goto/16 :goto_8

    .line 679
    :cond_0
    instance-of v6, v1, Lscala/collection/immutable/HashSet$LeafHashSet;

    if-eqz v6, :cond_1

    check-cast v1, Lscala/collection/immutable/HashSet$LeafHashSet;

    .line 683
    invoke-virtual {v1, v0, v2, v3, v4}, Lscala/collection/immutable/HashSet$LeafHashSet;->intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v5

    goto/16 :goto_8

    .line 684
    :cond_1
    instance-of v6, v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz v6, :cond_e

    check-cast v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    .line 685
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v6

    .line 686
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v7

    .line 689
    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v8

    .line 690
    invoke-direct {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v9

    and-int v10, v7, v9

    if-nez v10, :cond_2

    return-object v5

    :cond_2
    move v15, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    and-int v16, v7, v9

    if-eqz v16, :cond_9

    add-int/lit8 v16, v7, -0x1

    and-int v16, v7, v16

    xor-int v10, v7, v16

    add-int/lit8 v16, v9, -0x1

    and-int v16, v9, v16

    xor-int v5, v9, v16

    if-ne v10, v5, :cond_5

    .line 709
    aget-object v0, v6, v13

    move-object/from16 v16, v6

    aget-object v6, v8, v14

    move-object/from16 v18, v8

    add-int/lit8 v8, v2, 0x5

    invoke-virtual {v0, v6, v8, v3, v15}, Lscala/collection/immutable/HashSet;->intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 711
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v6

    add-int/2addr v12, v6

    or-int/2addr v11, v10

    .line 713
    aput-object v0, v3, v15

    add-int/lit8 v15, v15, 0x1

    :cond_3
    not-int v0, v10

    and-int/2addr v7, v0

    add-int/lit8 v13, v13, 0x1

    :cond_4
    not-int v0, v5

    and-int/2addr v9, v0

    add-int/lit8 v14, v14, 0x1

    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    goto :goto_1

    :cond_5
    move-object/from16 v16, v6

    move-object/from16 v18, v8

    .line 722
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    add-int/lit8 v0, v10, -0x1

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-gez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    xor-int/2addr v0, v8

    if-gez v6, :cond_8

    const/16 v17, 0x1

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    :goto_5
    xor-int v0, v0, v17

    if-eqz v0, :cond_4

    not-int v0, v10

    and-int/2addr v7, v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    if-nez v11, :cond_a

    goto :goto_7

    .line 740
    :cond_a
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v0

    if-ne v12, v0, :cond_b

    move-object/from16 v5, p0

    goto :goto_8

    .line 744
    :cond_b
    invoke-direct {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v0

    if-ne v12, v0, :cond_c

    :goto_6
    move-object v5, v1

    goto :goto_8

    :cond_c
    sub-int/2addr v15, v4

    const/4 v0, 0x1

    if-ne v15, v0, :cond_d

    .line 750
    aget-object v0, v3, v4

    instance-of v0, v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v0, :cond_d

    .line 751
    aget-object v0, v3, v4

    goto/16 :goto_0

    .line 753
    :cond_d
    new-array v0, v15, [Lscala/collection/immutable/HashSet;

    const/4 v1, 0x0

    .line 754
    invoke-static {v3, v4, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    new-instance v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {v1, v11, v0, v12}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_6

    :cond_e
    :goto_7
    const/4 v5, 0x0

    :goto_8
    return-object v5
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->iterator()Lscala/collection/immutable/TrieIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/immutable/TrieIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/TrieIterator<",
            "TA;>;"
        }
    .end annotation

    .line 971
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashSet$HashTrieSet$$anon$1;-><init>(Lscala/collection/immutable/HashSet$HashTrieSet;)V

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    ushr-int v0, p2, p3

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 848
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 849
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_5

    .line 850
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    aget-object v9, v3, v2

    add-int/lit8 p3, p3, 0x5

    .line 851
    invoke-virtual {v9, p1, p2, p3}, Lscala/collection/immutable/HashSet;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-ne v9, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_3

    .line 854
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 856
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p2

    array-length p2, p2

    sub-int/2addr p2, v1

    new-array p3, p2, [Lscala/collection/immutable/HashSet;

    .line 857
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p3

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    add-int/lit8 v8, v0, -0x1

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v0

    invoke-virtual {v9}, Lscala/collection/immutable/HashSet;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    .line 862
    aget-object v1, p3, p2

    instance-of v1, v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez v1, :cond_1

    .line 863
    aget-object p1, p3, p2

    goto :goto_1

    .line 865
    :cond_1
    new-instance p2, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {p2, p1, p3, v0}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 868
    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v1, :cond_4

    instance-of p2, p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-nez p2, :cond_4

    goto :goto_1

    .line 871
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lscala/collection/immutable/HashSet;

    .line 872
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p3

    array-length v8, p3

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    aput-object p1, p2, v2

    .line 874
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result p3

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet;->size()I

    move-result p1

    invoke-virtual {v9}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p3, p1

    .line 875
    new-instance p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v0

    invoke-direct {p1, v0, p2, p3}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_1

    :cond_5
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 529
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v0

    return v0
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_2

    .line 883
    :cond_0
    instance-of v1, p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->size0()I

    move-result v3

    if-gt v1, v3, :cond_3

    .line 885
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    .line 886
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v3

    .line 888
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    .line 889
    invoke-direct {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result p1

    and-int v5, v1, p1

    if-ne v5, v1, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-eqz v1, :cond_4

    add-int/lit8 v7, v1, -0x1

    and-int/2addr v7, v1

    xor-int/2addr v7, v1

    add-int/lit8 v8, p1, -0x1

    and-int/2addr v8, p1

    xor-int/2addr v8, p1

    if-ne v7, v8, :cond_2

    .line 902
    aget-object v9, v3, v5

    aget-object v10, v4, v6

    add-int/lit8 v11, p2, 0x5

    invoke-virtual {v9, v10, v11}, Lscala/collection/immutable/HashSet;->subsetOf0(Lscala/collection/immutable/HashSet;I)Z

    move-result v9

    if-eqz v9, :cond_1

    not-int v7, v7

    and-int/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    not-int v7, v8

    and-int/2addr p1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0
.end method

.method public union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$LeafHashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 568
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$LeafHashSet;->hash()I

    move-result v0

    ushr-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 570
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 571
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    aget-object v0, v0, v2

    add-int/lit8 p2, p2, 0x5

    .line 573
    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/HashSet;->union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-ne v0, p1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lscala/collection/immutable/HashSet;

    .line 577
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    array-length v8, v1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    aput-object p1, p2, v2

    .line 579
    new-instance v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet;->size()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr v3, p1

    invoke-direct {v1, v2, p2, v3}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, v1

    new-array p2, p2, [Lscala/collection/immutable/HashSet;

    .line 583
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    aput-object p1, p2, v2

    .line 585
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v1

    array-length v1, v1

    sub-int v8, v1, v2

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    or-int/2addr v0, v1

    .line 587
    new-instance v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$LeafHashSet;->size()I

    move-result p1

    add-int/2addr v2, p1

    invoke-direct {v1, v0, p2, v2}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    :goto_0
    return-object v1
.end method

.method public union0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-ne v1, v0, :cond_0

    goto/16 :goto_6

    .line 599
    :cond_0
    instance-of v5, v1, Lscala/collection/immutable/HashSet$LeafHashSet;

    if-eqz v5, :cond_1

    check-cast v1, Lscala/collection/immutable/HashSet$LeafHashSet;

    .line 601
    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/HashSet$HashTrieSet;->union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v1

    goto/16 :goto_7

    .line 602
    :cond_1
    instance-of v5, v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz v5, :cond_a

    check-cast v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    .line 603
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v5

    .line 604
    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v6

    .line 607
    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v7

    .line 608
    invoke-direct {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v8

    move v13, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    or-int v14, v6, v8

    if-eqz v14, :cond_7

    add-int/lit8 v14, v6, -0x1

    and-int/2addr v14, v6

    xor-int/2addr v14, v6

    add-int/lit8 v15, v8, -0x1

    and-int/2addr v15, v8

    xor-int/2addr v15, v8

    if-ne v14, v15, :cond_2

    .line 622
    aget-object v9, v5, v11

    aget-object v0, v7, v12

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v9, v0, v4, v3, v13}, Lscala/collection/immutable/HashSet;->union0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v4

    add-int/2addr v10, v4

    .line 624
    aput-object v0, v3, v13

    add-int/lit8 v13, v13, 0x1

    not-int v0, v14

    and-int/2addr v6, v0

    add-int/lit8 v11, v11, 0x1

    :goto_1
    not-int v0, v15

    and-int/2addr v8, v0

    add-int/lit8 v12, v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v4, p4

    goto :goto_0

    .line 632
    :cond_2
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    add-int/lit8 v0, v14, -0x1

    add-int/lit8 v4, v15, -0x1

    const/4 v9, 0x1

    if-ge v0, v4, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    if-gez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    xor-int v0, v16, v0

    if-gez v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    xor-int/2addr v0, v9

    if-eqz v0, :cond_6

    .line 635
    aget-object v0, v5, v11

    .line 636
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v4

    add-int/2addr v10, v4

    .line 637
    aput-object v0, v3, v13

    add-int/lit8 v13, v13, 0x1

    not-int v0, v14

    and-int/2addr v6, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 645
    :cond_6
    aget-object v0, v7, v12

    .line 646
    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v4

    add-int/2addr v10, v4

    .line 647
    aput-object v0, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 654
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v0

    if-ne v10, v0, :cond_8

    goto :goto_6

    .line 657
    :cond_8
    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v0

    if-ne v10, v0, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v0, p4

    sub-int/2addr v13, v0

    .line 664
    new-array v2, v13, [Lscala/collection/immutable/HashSet;

    const/4 v4, 0x0

    .line 665
    invoke-static {v3, v0, v2, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct/range {p0 .. p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    invoke-direct {v1}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    or-int/2addr v1, v3

    invoke-direct {v0, v1, v2, v10}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object v1, v0

    goto :goto_7

    :cond_a
    :goto_6
    move-object/from16 v1, p0

    :goto_7
    return-object v1
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    ushr-int v0, p2, p3

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 546
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 547
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 548
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v0

    aget-object v0, v0, v2

    add-int/lit8 p3, p3, 0x5

    .line 549
    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/HashSet;->updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object p1

    if-ne v0, p1, :cond_0

    move-object p3, p0

    goto/16 :goto_0

    .line 552
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lscala/collection/immutable/HashSet;

    .line 553
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p3

    array-length v8, p3

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    aput-object p1, p2, v2

    .line 555
    new-instance p3, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet;->size()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    invoke-direct {p3, v1, p2, v2}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p3

    array-length p3, p3

    add-int/2addr p3, v1

    new-array p3, p3, [Lscala/collection/immutable/HashSet;

    .line 559
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p3

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    new-instance v3, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v3, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    aput-object v3, p3, v2

    .line 561
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object v4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p1

    array-length p1, p1

    sub-int v8, p1, v2

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    invoke-direct {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->bitmap()I

    move-result p1

    or-int/2addr p1, v0

    .line 563
    new-instance p2, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p2, p1, p3, v0}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    move-object p3, p2

    :goto_0
    return-object p3
.end method
