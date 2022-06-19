.class final Lcom/google/android/exoplayer2/extractor/h/ac$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/h/ac;

.field private final b:Lcom/google/android/exoplayer2/util/t;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/h/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseIntArray;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/ac;I)V
    .locals 1

    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance p1, Lcom/google/android/exoplayer2/util/t;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    .line 559
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->c:Landroid/util/SparseArray;

    .line 560
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    .line 561
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->d(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/util/ad;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    .line 583
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/h/ac;->e(Lcom/google/android/exoplayer2/extractor/h/ac;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ad;->a()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/google/android/exoplayer2/util/ad;-><init>(J)V

    .line 584
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/h/ac;->e(Lcom/google/android/exoplayer2/extractor/h/ac;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->e(Lcom/google/android/exoplayer2/extractor/h/ac;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/ad;

    .line 588
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_3

    return-void

    .line 594
    :cond_3
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v6

    const/4 v7, 0x3

    .line 600
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 602
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v8, v3}, Lcom/google/android/exoplayer2/util/u;->a(Lcom/google/android/exoplayer2/util/t;I)V

    .line 604
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 605
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;I)I

    .line 608
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v8, v3}, Lcom/google/android/exoplayer2/util/u;->a(Lcom/google/android/exoplayer2/util/t;I)V

    .line 609
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 610
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v8

    .line 613
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 615
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v8

    const/16 v12, 0x2000

    const/4 v13, 0x0

    const/16 v14, 0x15

    if-ne v8, v3, :cond_4

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/h/ac;->f(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad;

    move-result-object v8

    if-nez v8, :cond_4

    .line 618
    new-instance v8, Lcom/google/android/exoplayer2/extractor/h/ad$b;

    sget-object v15, Lcom/google/android/exoplayer2/util/af;->f:[B

    invoke-direct {v8, v14, v13, v13, v15}, Lcom/google/android/exoplayer2/extractor/h/ad$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 619
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/h/ac;->g(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad$c;

    move-result-object v13

    invoke-interface {v13, v14, v8}, Lcom/google/android/exoplayer2/extractor/h/ad$c;->a(ILcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/ad;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;Lcom/google/android/exoplayer2/extractor/h/ad;)Lcom/google/android/exoplayer2/extractor/h/ad;

    .line 620
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/h/ac;->f(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad;

    move-result-object v8

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/h/ac;->h(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/j;

    move-result-object v13

    new-instance v15, Lcom/google/android/exoplayer2/extractor/h/ad$d;

    invoke-direct {v15, v6, v14, v12}, Lcom/google/android/exoplayer2/extractor/h/ad$d;-><init>(III)V

    invoke-interface {v8, v2, v13, v15}, Lcom/google/android/exoplayer2/extractor/h/ad;->a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    .line 624
    :cond_4
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 625
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v8

    :goto_2
    if-lez v8, :cond_1b

    .line 628
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v15, 0x5

    invoke-virtual {v1, v13, v15}, Lcom/google/android/exoplayer2/util/u;->a(Lcom/google/android/exoplayer2/util/t;I)V

    .line 629
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    .line 630
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 631
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v13, v10}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v13

    .line 632
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 633
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v10

    .line 2144
    iget v11, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int v12, v11, v10

    const/16 v16, -0x1

    const/4 v3, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3144
    :goto_3
    iget v4, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ge v4, v12, :cond_12

    .line 1704
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    .line 1705
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v19

    .line 4144
    iget v9, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int v9, v9, v19

    if-gt v9, v12, :cond_12

    const/16 v7, 0x59

    const/16 v20, 0xac

    const/16 v21, 0x87

    const/16 v22, 0x81

    if-ne v4, v15, :cond_8

    .line 1712
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v23

    const-wide/32 v25, 0x41432d33

    cmp-long v4, v23, v25

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    const-wide/32 v25, 0x45414333

    cmp-long v4, v23, v25

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    const-wide/32 v21, 0x41432d34

    cmp-long v4, v23, v21

    if-nez v4, :cond_7

    move-object/from16 v21, v2

    const/16 v3, 0xac

    goto :goto_5

    :cond_7
    const-wide/32 v20, 0x48455643

    cmp-long v4, v23, v20

    if-nez v4, :cond_c

    const/16 v3, 0x24

    goto :goto_7

    :cond_8
    const/16 v15, 0x6a

    if-ne v4, v15, :cond_9

    :goto_4
    move-object/from16 v21, v2

    const/16 v3, 0x81

    :goto_5
    const/4 v15, 0x4

    goto/16 :goto_9

    :cond_9
    const/16 v15, 0x7a

    if-ne v4, v15, :cond_a

    :goto_6
    move-object/from16 v21, v2

    const/16 v3, 0x87

    goto :goto_5

    :cond_a
    const/16 v15, 0x7f

    if-ne v4, v15, :cond_b

    .line 1728
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    if-ne v4, v14, :cond_c

    const/16 v3, 0xac

    goto :goto_7

    :cond_b
    const/16 v15, 0x7b

    if-ne v4, v15, :cond_d

    const/16 v3, 0x8a

    :cond_c
    :goto_7
    move-object/from16 v21, v2

    goto :goto_5

    :cond_d
    const/16 v15, 0xa

    if-ne v4, v15, :cond_e

    const/4 v15, 0x3

    .line 1736
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :cond_e
    const/4 v15, 0x3

    if-ne v4, v7, :cond_10

    .line 1740
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5144
    :goto_8
    iget v4, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ge v4, v9, :cond_f

    .line 1742
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1743
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v7

    const/4 v15, 0x4

    new-array v14, v15, [B

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .line 1745
    invoke-virtual {v1, v14, v2, v15}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 1746
    new-instance v2, Lcom/google/android/exoplayer2/extractor/h/ad$a;

    invoke-direct {v2, v4, v7, v14}, Lcom/google/android/exoplayer2/extractor/h/ad$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    const/16 v7, 0x59

    const/16 v14, 0x15

    const/4 v15, 0x3

    goto :goto_8

    :cond_f
    move-object/from16 v21, v2

    const/4 v15, 0x4

    move-object/from16 v18, v3

    const/16 v3, 0x59

    goto :goto_9

    :cond_10
    move-object/from16 v21, v2

    const/4 v15, 0x4

    const/16 v2, 0x6f

    if-ne v4, v2, :cond_11

    const/16 v2, 0x101

    const/16 v3, 0x101

    .line 6144
    :cond_11
    :goto_9
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v9, v2

    .line 1753
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    move-object/from16 v2, v21

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v14, 0x15

    const/4 v15, 0x5

    goto/16 :goto_3

    :cond_12
    move-object/from16 v21, v2

    const/4 v15, 0x4

    .line 1755
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1756
    new-instance v2, Lcom/google/android/exoplayer2/extractor/h/ad$b;

    .line 6169
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1760
    invoke-static {v4, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    invoke-direct {v2, v3, v7, v9, v4}, Lcom/google/android/exoplayer2/extractor/h/ad$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    const/4 v3, 0x6

    if-eq v5, v3, :cond_13

    const/4 v3, 0x5

    if-ne v5, v3, :cond_14

    .line 636
    :cond_13
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->a:I

    :cond_14
    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v8, v10

    .line 640
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    move v3, v5

    goto :goto_a

    :cond_15
    move v3, v13

    .line 641
    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/h/ac;->i(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_19

    .line 647
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v7

    if-ne v7, v4, :cond_16

    const/16 v4, 0x15

    if-ne v5, v4, :cond_17

    .line 648
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->f(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad;

    move-result-object v2

    goto :goto_b

    :cond_16
    const/16 v4, 0x15

    .line 649
    :cond_17
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/h/ac;->g(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad$c;

    move-result-object v7

    invoke-interface {v7, v5, v2}, Lcom/google/android/exoplayer2/extractor/h/ad$c;->a(ILcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/ad;

    move-result-object v2

    .line 650
    :goto_b
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_18

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    const/16 v7, 0x2000

    .line 651
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ge v13, v5, :cond_1a

    .line 652
    :cond_18
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :cond_19
    const/16 v4, 0x15

    :cond_1a
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

    :cond_1b
    move-object/from16 v21, v2

    .line 657
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    .line 659
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 660
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 661
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/h/ac;->i(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 662
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/h/ac;->j(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 663
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/h/ad;

    if-eqz v5, :cond_1d

    .line 665
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/h/ac;->f(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/h/ad;

    move-result-object v7

    if-eq v5, v7, :cond_1c

    .line 666
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/h/ac;->h(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/j;

    move-result-object v7

    new-instance v8, Lcom/google/android/exoplayer2/extractor/h/ad$d;

    const/16 v9, 0x2000

    invoke-direct {v8, v6, v3, v9}, Lcom/google/android/exoplayer2/extractor/h/ad$d;-><init>(III)V

    move-object/from16 v3, v21

    invoke-interface {v5, v3, v7, v8}, Lcom/google/android/exoplayer2/extractor/h/ad;->a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    goto :goto_e

    :cond_1c
    move-object/from16 v3, v21

    const/16 v9, 0x2000

    .line 669
    :goto_e
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    :cond_1d
    move-object/from16 v3, v21

    const/16 v9, 0x2000

    :goto_f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v3

    goto :goto_d

    .line 673
    :cond_1e
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 674
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->k(Lcom/google/android/exoplayer2/extractor/h/ac;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 675
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->h(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 676
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->b(Lcom/google/android/exoplayer2/extractor/h/ac;I)I

    .line 677
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->l(Lcom/google/android/exoplayer2/extractor/h/ac;)Z

    return-void

    :cond_1f
    const/4 v2, 0x0

    .line 680
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->a(Lcom/google/android/exoplayer2/extractor/h/ac;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->e:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 681
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->c(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    const/4 v4, 0x0

    goto :goto_10

    :cond_20
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/h/ac;->d(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_10
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/extractor/h/ac;->b(Lcom/google/android/exoplayer2/extractor/h/ac;I)I

    .line 682
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->d(Lcom/google/android/exoplayer2/extractor/h/ac;)I

    move-result v1

    if-nez v1, :cond_21

    .line 683
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->h(Lcom/google/android/exoplayer2/extractor/h/ac;)Lcom/google/android/exoplayer2/extractor/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 684
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/ac$b;->a:Lcom/google/android/exoplayer2/extractor/h/ac;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/ac;->l(Lcom/google/android/exoplayer2/extractor/h/ac;)Z

    :cond_21
    return-void
.end method
