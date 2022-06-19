.class public final Lscala/collection/SeqLike$;
.super Ljava/lang/Object;
.source "SeqLike.scala"


# static fields
.field public static final MODULE$:Lscala/collection/SeqLike$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/SeqLike$;

    invoke-direct {v0}, Lscala/collection/SeqLike$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/SeqLike$;->MODULE$:Lscala/collection/SeqLike$;

    return-void
.end method

.method private final clipL$1(II)I
    .locals 0

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private final clipR$1(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private kmpJumpTable(Lscala/collection/IndexedSeq;I)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/IndexedSeq<",
            "TB;>;I)[I"
        }
    .end annotation

    .line 739
    new-array v0, p2, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 742
    aput v1, v0, v2

    const/4 v1, 0x1

    .line 743
    aput v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p2, :cond_6

    add-int/lit8 v5, v3, -0x1

    .line 745
    invoke-interface {p1, v5}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_2

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v6}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_2
    instance-of v7, v5, Ljava/lang/Character;

    if-eqz v7, :cond_3

    check-cast v5, Ljava/lang/Character;

    invoke-static {v5, v6}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 746
    aput v4, v0, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v4, :cond_5

    .line 751
    aget v4, v0, v4

    goto :goto_0

    .line 754
    :cond_5
    aput v2, v0, v3

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private kmpOptimizeWord(Lscala/collection/Seq;IIZ)Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TB;>;IIZ)",
            "Lscala/collection/IndexedSeq<",
            "TB;>;"
        }
    .end annotation

    .line 699
    instance-of v0, p1, Lscala/collection/IndexedSeq;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lscala/collection/IndexedSeq;

    if-eqz p4, :cond_0

    if-nez p2, :cond_0

    .line 702
    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result p1

    if-ne p3, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 703
    new-instance p1, Lscala/collection/SeqLike$$anon$3;

    invoke-direct {p1, p2, p3, v0}, Lscala/collection/SeqLike$$anon$3;-><init>(IILscala/collection/IndexedSeq;)V

    goto :goto_0

    .line 707
    :cond_1
    new-instance p1, Lscala/collection/SeqLike$$anon$4;

    invoke-direct {p1, p2, p3, v0}, Lscala/collection/SeqLike$$anon$4;-><init>(IILscala/collection/IndexedSeq;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 714
    :cond_2
    new-instance v0, Lscala/collection/SeqLike$$anon$5;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/SeqLike$$anon$5;-><init>(Lscala/collection/Seq;IIZ)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public indexOf(Lscala/collection/Seq;IILscala/collection/Seq;III)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TB;>;II",
            "Lscala/collection/Seq<",
            "TB;>;III)I"
        }
    .end annotation

    move v0, p2

    .line 876
    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v1

    .line 877
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v3, 0x0

    move/from16 v4, p7

    invoke-virtual {v2, v3, v4}, Lscala/math/package$;->max(II)I

    move-result v2

    .line 878
    sget-object v3, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    add-int v4, v0, v2

    invoke-virtual {v3, v1, v4}, Lscala/math/package$;->min(II)I

    move-result v7

    .line 879
    sget-object v3, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    add-int v4, v7, p3

    invoke-virtual {v3, v1, v4}, Lscala/math/package$;->min(II)I

    move-result v8

    .line 880
    invoke-interface/range {p4 .. p4}, Lscala/collection/Seq;->length()I

    move-result v3

    .line 881
    sget-object v4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    move/from16 v5, p5

    invoke-virtual {v4, v3, v5}, Lscala/math/package$;->min(II)I

    move-result v10

    .line 882
    sget-object v4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    add-int v5, v10, p6

    invoke-virtual {v4, v3, v5}, Lscala/math/package$;->min(II)I

    move-result v11

    sub-int v3, v1, v0

    const/4 v4, -0x1

    if-le v2, v3, :cond_0

    :goto_0
    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    sub-int v2, v11, v10

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    sub-int v3, v8, v7

    if-ge v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v12, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v9, p4

    .line 890
    invoke-virtual/range {v5 .. v12}, Lscala/collection/SeqLike$;->scala$collection$SeqLike$$kmpSearch(Lscala/collection/Seq;IILscala/collection/Seq;IIZ)I

    move-result v7

    if-gez v7, :cond_3

    goto :goto_1

    .line 891
    :cond_3
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v2, v1, p2}, Lscala/math/package$;->min(II)I

    move-result v0

    sub-int/2addr v7, v0

    :goto_1
    return v7
.end method

.method public lastIndexOf(Lscala/collection/Seq;IILscala/collection/Seq;III)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TB;>;II",
            "Lscala/collection/Seq<",
            "TB;>;III)I"
        }
    .end annotation

    .line 907
    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v0

    .line 908
    invoke-interface {p4}, Lscala/collection/Seq;->length()I

    move-result v1

    .line 909
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    move v3, p2

    invoke-virtual {v2, v0, p2}, Lscala/math/package$;->min(II)I

    move-result v2

    .line 910
    sget-object v3, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    add-int v4, v2, p3

    invoke-virtual {v3, v0, v4}, Lscala/math/package$;->min(II)I

    move-result v0

    .line 911
    sget-object v3, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int v4, v0, v2

    move/from16 v5, p7

    invoke-virtual {v3, v4, v5}, Lscala/math/package$;->min(II)I

    move-result v3

    .line 912
    sget-object v4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    move/from16 v5, p5

    invoke-virtual {v4, v1, v5}, Lscala/math/package$;->min(II)I

    move-result v8

    .line 913
    sget-object v4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    add-int v5, v8, p6

    invoke-virtual {v4, v1, v5}, Lscala/math/package$;->min(II)I

    move-result v9

    .line 914
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    add-int v4, v2, v3

    sub-int v5, v9, v8

    add-int v6, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v1, v0, v6}, Lscala/math/package$;->min(II)I

    move-result v6

    const/4 v0, -0x1

    if-gez v3, :cond_0

    :goto_0
    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    if-ge v5, v7, :cond_1

    goto :goto_1

    :cond_1
    sub-int v1, v6, v2

    if-ge v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move-object v7, p4

    .line 922
    invoke-virtual/range {v3 .. v10}, Lscala/collection/SeqLike$;->scala$collection$SeqLike$$kmpSearch(Lscala/collection/Seq;IILscala/collection/Seq;IIZ)I

    move-result v4

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    sub-int/2addr v4, v2

    :goto_1
    return v4
.end method

.method public scala$collection$SeqLike$$kmpSearch(Lscala/collection/Seq;IILscala/collection/Seq;IIZ)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TB;>;II",
            "Lscala/collection/Seq<",
            "TB;>;IIZ)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    add-int/lit8 v8, v5, 0x1

    const/4 v10, 0x1

    if-ne v6, v8, :cond_1

    if-eqz v7, :cond_0

    .line 782
    invoke-interface/range {p4 .. p5}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lscala/collection/Seq;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Lscala/collection/SeqLike$;->clipR$1(II)I

    move-result v1

    goto/16 :goto_c

    .line 784
    :cond_0
    invoke-interface/range {p4 .. p5}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v4

    sub-int/2addr v3, v10

    invoke-interface {v1, v4, v3}, Lscala/collection/Seq;->lastIndexOf(Ljava/lang/Object;I)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lscala/collection/SeqLike$;->clipL$1(II)I

    move-result v1

    goto/16 :goto_c

    :cond_1
    sub-int v8, v3, v2

    sub-int v11, v6, v5

    if-ne v8, v11, :cond_5

    .line 790
    invoke-interface/range {p1 .. p1}, Lscala/collection/Seq;->view()Lscala/collection/SeqView;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lscala/collection/SeqView;->slice(II)Lscala/collection/TraversableView;

    move-result-object v1

    invoke-interface/range {p4 .. p4}, Lscala/collection/Seq;->view()Lscala/collection/SeqView;

    move-result-object v3

    invoke-interface {v3, v5, v6}, Lscala/collection/SeqView;->slice(II)Lscala/collection/TraversableView;

    move-result-object v3

    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v2

    goto/16 :goto_c

    :cond_4
    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_c

    .line 794
    :cond_5
    instance-of v12, v1, Lscala/collection/IndexedSeq;

    if-eqz v12, :cond_10

    .line 797
    invoke-direct {v0, v4, v5, v6, v7}, Lscala/collection/SeqLike$;->kmpOptimizeWord(Lscala/collection/Seq;IIZ)Lscala/collection/IndexedSeq;

    move-result-object v4

    .line 798
    invoke-direct {v0, v4, v11}, Lscala/collection/SeqLike$;->kmpJumpTable(Lscala/collection/IndexedSeq;I)[I

    move-result-object v5

    if-eqz v7, :cond_6

    move v6, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v3, -0x1

    :goto_1
    if-eqz v7, :cond_7

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    const/4 v12, -0x1

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    add-int v9, v14, v15

    if-ge v9, v8, :cond_f

    .line 803
    invoke-interface {v4, v14}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v13

    mul-int v9, v9, v12

    add-int/2addr v9, v6

    invoke-interface {v1, v9}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v13, v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    if-nez v13, :cond_9

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    instance-of v10, v13, Ljava/lang/Number;

    if-eqz v10, :cond_a

    check-cast v13, Ljava/lang/Number;

    invoke-static {v13, v9}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_4

    :cond_a
    instance-of v10, v13, Ljava/lang/Character;

    if-eqz v10, :cond_b

    check-cast v13, Ljava/lang/Character;

    invoke-static {v13, v9}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_4

    :cond_b
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_4
    if-eqz v9, :cond_d

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v11, :cond_e

    if-eqz v7, :cond_c

    add-int/2addr v15, v2

    goto :goto_5

    :cond_c
    sub-int v1, v3, v15

    sub-int v15, v1, v14

    :goto_5
    return v15

    .line 808
    :cond_d
    aget v9, v5, v14

    sub-int v10, v14, v9

    add-int/2addr v15, v10

    if-lez v14, :cond_e

    move v14, v9

    :cond_e
    const/4 v10, 0x1

    goto :goto_3

    :cond_f
    const/16 v16, -0x1

    goto/16 :goto_b

    .line 816
    :cond_10
    invoke-interface/range {p1 .. p1}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1, v2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v1

    const/4 v8, 0x1

    .line 817
    invoke-direct {v0, v4, v5, v6, v8}, Lscala/collection/SeqLike$;->kmpOptimizeWord(Lscala/collection/Seq;IIZ)Lscala/collection/IndexedSeq;

    move-result-object v4

    .line 818
    invoke-direct {v0, v4, v11}, Lscala/collection/SeqLike$;->kmpJumpTable(Lscala/collection/IndexedSeq;I)[I

    move-result-object v9

    .line 819
    new-array v10, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, -0x1

    :goto_6
    add-int v15, v12, v2

    add-int v17, v15, v6

    sub-int v8, v17, v5

    if-gt v8, v3, :cond_1a

    :goto_7
    add-int v8, v14, v12

    if-lt v8, v13, :cond_11

    .line 825
    rem-int v8, v13, v11

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v10, v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 828
    :cond_11
    invoke-interface {v4, v14}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v0

    rem-int/2addr v8, v11

    aget-object v8, v10, v8

    move-object/from16 v17, v1

    if-ne v0, v8, :cond_12

    const/4 v0, 0x1

    goto :goto_8

    :cond_12
    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_8

    :cond_13
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v8}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_14
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_15

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v8}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_15
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_18

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v11, :cond_19

    if-eqz v7, :cond_16

    return v15

    :cond_16
    add-int/lit8 v14, v14, -0x1

    .line 835
    aget v0, v9, v14

    sub-int v1, v14, v0

    add-int/2addr v12, v1

    if-lez v14, :cond_17

    move v14, v0

    move/from16 v16, v15

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    move/from16 v16, v15

    goto :goto_a

    .line 842
    :cond_18
    aget v0, v9, v14

    sub-int v1, v14, v0

    add-int/2addr v12, v1

    if-lez v14, :cond_19

    move v14, v0

    :goto_9
    move-object/from16 v1, v17

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_19
    move-object/from16 v0, p0

    :goto_a
    move-object/from16 v1, v17

    const/4 v8, 0x1

    goto :goto_6

    :cond_1a
    :goto_b
    move/from16 v1, v16

    :goto_c
    return v1
.end method
