.class final Landroidx/media2/exoplayer/external/extractor/e/af$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/extractor/e/af;

.field private final b:Landroidx/media2/exoplayer/external/util/o;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/e/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseIntArray;

.field private final e:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/af;I)V
    .locals 1

    .line 515
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    new-instance p1, Landroidx/media2/exoplayer/external/util/o;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    .line 517
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->c:Landroid/util/SparseArray;

    .line 518
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    .line 519
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->d(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    new-instance v2, Landroidx/media2/exoplayer/external/util/z;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    .line 541
    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/e/af;->e(Landroidx/media2/exoplayer/external/extractor/e/af;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/util/z;

    .line 1072
    iget-wide v6, v6, Landroidx/media2/exoplayer/external/util/z;->a:J

    .line 541
    invoke-direct {v2, v6, v7}, Landroidx/media2/exoplayer/external/util/z;-><init>(J)V

    .line 542
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/e/af;->e(Landroidx/media2/exoplayer/external/extractor/e/af;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    :cond_2
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->e(Landroidx/media2/exoplayer/external/extractor/e/af;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/z;

    .line 546
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v6

    const/4 v7, 0x3

    .line 552
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 554
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v8, v3}, Landroidx/media2/exoplayer/external/util/p;->a(Landroidx/media2/exoplayer/external/util/o;I)V

    .line 556
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v8, v7}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 557
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(Landroidx/media2/exoplayer/external/extractor/e/af;I)I

    .line 560
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v8, v3}, Landroidx/media2/exoplayer/external/util/p;->a(Landroidx/media2/exoplayer/external/util/o;I)V

    .line 561
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 562
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    .line 565
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 567
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v8

    const/16 v12, 0x2000

    const/4 v13, 0x0

    const/16 v14, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/e/af;->f(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    move-result-object v8

    if-nez v8, :cond_3

    .line 570
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/e/ah$b;

    sget-object v15, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    invoke-direct {v8, v14, v13, v13, v15}, Landroidx/media2/exoplayer/external/extractor/e/ah$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 571
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v15}, Landroidx/media2/exoplayer/external/extractor/e/af;->g(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah$c;

    move-result-object v13

    invoke-interface {v13, v14, v8}, Landroidx/media2/exoplayer/external/extractor/e/ah$c;->a(ILandroidx/media2/exoplayer/external/extractor/e/ah$b;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    move-result-object v8

    invoke-static {v15, v8}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(Landroidx/media2/exoplayer/external/extractor/e/af;Landroidx/media2/exoplayer/external/extractor/e/ah;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    .line 572
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/extractor/e/af;->f(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    move-result-object v8

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v13}, Landroidx/media2/exoplayer/external/extractor/e/af;->h(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/i;

    move-result-object v13

    new-instance v15, Landroidx/media2/exoplayer/external/extractor/e/ah$d;

    invoke-direct {v15, v6, v14, v12}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;-><init>(III)V

    invoke-interface {v8, v2, v13, v15}, Landroidx/media2/exoplayer/external/extractor/e/ah;->a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    .line 576
    :cond_3
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 577
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v8

    :goto_2
    if-lez v8, :cond_17

    .line 580
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v15, 0x5

    invoke-virtual {v1, v13, v15}, Landroidx/media2/exoplayer/external/util/p;->a(Landroidx/media2/exoplayer/external/util/o;I)V

    .line 581
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    .line 582
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v13, v7}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 583
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v13, v10}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v13

    .line 584
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 585
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    .line 2142
    iget v11, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int v12, v11, v10

    const/16 v16, -0x1

    const/4 v3, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3142
    :goto_3
    iget v4, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ge v4, v12, :cond_f

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    .line 1654
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v19

    .line 4142
    iget v9, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int v9, v9, v19

    const/16 v7, 0x59

    const/16 v20, 0xac

    const/16 v21, 0x87

    const/16 v22, 0x81

    if-ne v4, v15, :cond_7

    .line 1657
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v23

    const-wide/32 v25, 0x41432d33

    cmp-long v4, v23, v25

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const-wide/32 v25, 0x45414333

    cmp-long v4, v23, v25

    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    const-wide/32 v21, 0x41432d34

    cmp-long v4, v23, v21

    if-nez v4, :cond_6

    move-object/from16 v21, v2

    const/16 v3, 0xac

    goto :goto_5

    :cond_6
    const-wide/32 v20, 0x48455643

    cmp-long v4, v23, v20

    if-nez v4, :cond_b

    const/16 v3, 0x24

    goto :goto_7

    :cond_7
    const/16 v15, 0x6a

    if-ne v4, v15, :cond_8

    :goto_4
    move-object/from16 v21, v2

    const/16 v3, 0x81

    :goto_5
    const/4 v15, 0x4

    goto :goto_9

    :cond_8
    const/16 v15, 0x7a

    if-ne v4, v15, :cond_9

    :goto_6
    move-object/from16 v21, v2

    const/16 v3, 0x87

    goto :goto_5

    :cond_9
    const/16 v15, 0x7f

    if-ne v4, v15, :cond_a

    .line 1673
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    if-ne v4, v14, :cond_b

    const/16 v3, 0xac

    goto :goto_7

    :cond_a
    const/16 v15, 0x7b

    if-ne v4, v15, :cond_c

    const/16 v3, 0x8a

    :cond_b
    :goto_7
    move-object/from16 v21, v2

    goto :goto_5

    :cond_c
    const/16 v15, 0xa

    if-ne v4, v15, :cond_d

    const/4 v15, 0x3

    .line 1681
    invoke-virtual {v1, v15}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :cond_d
    const/4 v15, 0x3

    if-ne v4, v7, :cond_b

    .line 1685
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5142
    :goto_8
    iget v4, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ge v4, v9, :cond_e

    .line 1687
    invoke-virtual {v1, v15}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1688
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v7

    const/4 v15, 0x4

    new-array v14, v15, [B

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .line 1690
    invoke-virtual {v1, v14, v2, v15}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 1691
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/e/ah$a;

    invoke-direct {v2, v4, v7, v14}, Landroidx/media2/exoplayer/external/extractor/e/ah$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    const/16 v7, 0x59

    const/16 v14, 0x15

    const/4 v15, 0x3

    goto :goto_8

    :cond_e
    move-object/from16 v21, v2

    const/4 v15, 0x4

    move-object/from16 v18, v3

    const/16 v3, 0x59

    .line 6142
    :goto_9
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v9, v2

    .line 1696
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    move-object/from16 v2, v21

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v14, 0x15

    const/4 v15, 0x5

    goto/16 :goto_3

    :cond_f
    move-object/from16 v21, v2

    const/4 v15, 0x4

    .line 1698
    invoke-virtual {v1, v12}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1699
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1700
    invoke-static {v4, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    invoke-direct {v2, v3, v7, v9, v4}, Landroidx/media2/exoplayer/external/extractor/e/ah$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    const/4 v3, 0x6

    if-ne v5, v3, :cond_10

    .line 588
    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/e/ah$b;->a:I

    :cond_10
    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v8, v10

    .line 592
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    move v3, v5

    goto :goto_a

    :cond_11
    move v3, v13

    .line 593
    :goto_a
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/e/af;->i(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_15

    .line 597
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v7

    if-ne v7, v4, :cond_12

    const/16 v4, 0x15

    if-ne v5, v4, :cond_13

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->f(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    move-result-object v2

    goto :goto_b

    :cond_12
    const/16 v4, 0x15

    .line 598
    :cond_13
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/e/af;->g(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah$c;

    move-result-object v7

    invoke-interface {v7, v5, v2}, Landroidx/media2/exoplayer/external/extractor/e/ah$c;->a(ILandroidx/media2/exoplayer/external/extractor/e/ah$b;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    move-result-object v2

    .line 599
    :goto_b
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_14

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    const/16 v7, 0x2000

    .line 600
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ge v13, v5, :cond_16

    .line 601
    :cond_14
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :cond_15
    const/16 v4, 0x15

    :cond_16
    :goto_c
    move-object/from16 v2, v21

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0x2000

    const/16 v14, 0x15

    goto/16 :goto_2

    :cond_17
    move-object/from16 v21, v2

    .line 606
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1a

    .line 608
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 609
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 610
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/e/af;->i(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 611
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/e/af;->j(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 612
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/e/ah;

    if-eqz v5, :cond_19

    .line 614
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/e/af;->f(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/e/ah;

    move-result-object v7

    if-eq v5, v7, :cond_18

    .line 615
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/e/af;->h(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/i;

    move-result-object v7

    new-instance v8, Landroidx/media2/exoplayer/external/extractor/e/ah$d;

    const/16 v9, 0x2000

    invoke-direct {v8, v6, v3, v9}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;-><init>(III)V

    move-object/from16 v3, v21

    invoke-interface {v5, v3, v7, v8}, Landroidx/media2/exoplayer/external/extractor/e/ah;->a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    goto :goto_e

    :cond_18
    move-object/from16 v3, v21

    const/16 v9, 0x2000

    .line 618
    :goto_e
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    :cond_19
    move-object/from16 v3, v21

    const/16 v9, 0x2000

    :goto_f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v3

    goto :goto_d

    .line 622
    :cond_1a
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 623
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->k(Landroidx/media2/exoplayer/external/extractor/e/af;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 624
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->h(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/i;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 625
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->b(Landroidx/media2/exoplayer/external/extractor/e/af;I)I

    .line 626
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->l(Landroidx/media2/exoplayer/external/extractor/e/af;)Z

    return-void

    :cond_1b
    const/4 v2, 0x0

    .line 629
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->a(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->e:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 630
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->c(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    const/4 v4, 0x0

    goto :goto_10

    :cond_1c
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/e/af;->d(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_10
    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/extractor/e/af;->b(Landroidx/media2/exoplayer/external/extractor/e/af;I)I

    .line 631
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->d(Landroidx/media2/exoplayer/external/extractor/e/af;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 632
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->h(Landroidx/media2/exoplayer/external/extractor/e/af;)Landroidx/media2/exoplayer/external/extractor/i;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 633
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/af$b;->a:Landroidx/media2/exoplayer/external/extractor/e/af;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/af;->l(Landroidx/media2/exoplayer/external/extractor/e/af;)Z

    :cond_1d
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 0

    return-void
.end method
