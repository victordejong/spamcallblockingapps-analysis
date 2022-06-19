.class public final Lcom/google/android/exoplayer2/trackselection/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:Lcom/google/android/exoplayer2/util/c;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 58
    sget-object v6, Lcom/google/android/exoplayer2/util/c;->a:Lcom/google/android/exoplayer2/util/c;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>(IIIFFLcom/google/android/exoplayer2/util/c;)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 7

    .line 87
    sget-object v6, Lcom/google/android/exoplayer2/util/c;->a:Lcom/google/android/exoplayer2/util/c;

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>(IIIFFLcom/google/android/exoplayer2/util/c;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/google/android/exoplayer2/util/c;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->a:I

    .line 126
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->b:I

    .line 127
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->c:I

    .line 128
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->d:F

    .line 129
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->e:F

    .line 131
    iput-object p6, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->f:Lcom/google/android/exoplayer2/util/c;

    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/exoplayer2/trackselection/c$a;Lcom/google/android/exoplayer2/upstream/c;)[Lcom/google/android/exoplayer2/trackselection/c;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1512
    :goto_0
    array-length v5, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-ge v4, v5, :cond_1

    .line 1513
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    aget-object v5, v1, v4

    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    array-length v5, v5

    if-le v5, v8, :cond_0

    .line 1514
    invoke-static {}, Lcom/google/common/collect/v;->i()Lcom/google/common/collect/v$a;

    move-result-object v5

    .line 1516
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/a$a;

    invoke-direct {v8, v6, v7, v6, v7}, Lcom/google/android/exoplayer2/trackselection/a$a;-><init>(JJ)V

    invoke-virtual {v5, v8}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    .line 1517
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1519
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1523
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/a;->a([Lcom/google/android/exoplayer2/trackselection/c$a;)[[J

    move-result-object v4

    .line 1524
    array-length v5, v4

    new-array v5, v5, [I

    .line 1525
    array-length v9, v4

    new-array v9, v9, [J

    const/4 v10, 0x0

    .line 1526
    :goto_2
    array-length v11, v4

    if-ge v10, v11, :cond_3

    .line 1527
    aget-object v11, v4, v10

    array-length v11, v11

    if-nez v11, :cond_2

    move-wide v12, v6

    goto :goto_3

    :cond_2
    aget-object v11, v4, v10

    aget-wide v12, v11, v3

    :goto_3
    aput-wide v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1529
    :cond_3
    invoke-static {v2, v9}, Lcom/google/android/exoplayer2/trackselection/a;->a(Ljava/util/List;[J)V

    .line 1531
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/a;->a([[J)Lcom/google/common/collect/v;

    move-result-object v6

    const/4 v7, 0x0

    .line 1532
    :goto_4
    invoke-virtual {v6}, Lcom/google/common/collect/v;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    .line 1533
    invoke-virtual {v6, v7}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1534
    aget v11, v5, v10

    add-int/2addr v11, v8

    aput v11, v5, v10

    .line 1535
    aget-object v12, v4, v10

    aget-wide v11, v12, v11

    aput-wide v11, v9, v10

    .line 1536
    invoke-static {v2, v9}, Lcom/google/android/exoplayer2/trackselection/a;->a(Ljava/util/List;[J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 1539
    :goto_5
    array-length v5, v1

    if-ge v4, v5, :cond_6

    .line 1540
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1541
    aget-wide v5, v9, v4

    const-wide/16 v10, 0x2

    mul-long v5, v5, v10

    aput-wide v5, v9, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1544
    :cond_6
    invoke-static {v2, v9}, Lcom/google/android/exoplayer2/trackselection/a;->a(Ljava/util/List;[J)V

    .line 1545
    invoke-static {}, Lcom/google/common/collect/v;->i()Lcom/google/common/collect/v$a;

    move-result-object v4

    const/4 v5, 0x0

    .line 1546
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1547
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/v$a;

    if-nez v6, :cond_7

    .line 1548
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v6

    goto :goto_7

    :cond_7
    invoke-virtual {v6}, Lcom/google/common/collect/v$a;->a()Lcom/google/common/collect/v;

    move-result-object v6

    :goto_7
    invoke-virtual {v4, v6}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1550
    :cond_8
    invoke-virtual {v4}, Lcom/google/common/collect/v$a;->a()Lcom/google/common/collect/v;

    move-result-object v2

    .line 142
    array-length v4, v1

    new-array v4, v4, [Lcom/google/android/exoplayer2/trackselection/c;

    const/4 v5, 0x0

    .line 143
    :goto_8
    array-length v6, v1

    if-ge v5, v6, :cond_b

    .line 144
    aget-object v6, v1, v5

    if-eqz v6, :cond_a

    .line 145
    iget-object v7, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    array-length v7, v7

    if-eqz v7, :cond_a

    .line 149
    iget-object v7, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    array-length v7, v7

    if-ne v7, v8, :cond_9

    .line 150
    new-instance v7, Lcom/google/android/exoplayer2/trackselection/d;

    iget-object v9, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v10, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    aget v10, v10, v3

    iget v11, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->c:I

    iget-object v6, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->d:Ljava/lang/Object;

    invoke-direct {v7, v9, v10, v11, v6}, Lcom/google/android/exoplayer2/trackselection/d;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    move-object/from16 v26, v4

    goto :goto_9

    .line 152
    :cond_9
    iget-object v13, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v14, v6, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    .line 156
    invoke-virtual {v2, v5}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Lcom/google/common/collect/v;

    .line 2176
    new-instance v7, Lcom/google/android/exoplayer2/trackselection/a;

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->a:I

    int-to-long v9, v6

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->b:I

    int-to-long v11, v6

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->c:I

    move-object/from16 v26, v4

    int-to-long v3, v6

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->d:F

    iget v15, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->e:F

    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->f:Lcom/google/android/exoplayer2/util/c;

    move-wide/from16 v18, v11

    move-object v12, v7

    move v11, v15

    move-object/from16 v15, p2

    move-wide/from16 v16, v9

    move-wide/from16 v20, v3

    move/from16 v22, v6

    move/from16 v23, v11

    move-object/from16 v25, v8

    invoke-direct/range {v12 .. v25}, Lcom/google/android/exoplayer2/trackselection/a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/c;JJJFFLjava/util/List;Lcom/google/android/exoplayer2/util/c;)V

    .line 152
    :goto_9
    aput-object v7, v26, v5

    goto :goto_a

    :cond_a
    move-object/from16 v26, v4

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v26

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v26, v4

    return-object v26
.end method
