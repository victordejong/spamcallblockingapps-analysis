.class final Lcom/googlecode/mp4parser/a/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/g;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Lcom/b/a/a/e;

.field d:J

.field final synthetic e:Lcom/googlecode/mp4parser/a/a/b;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/a/a/b;Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/a/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[I>;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    .line 646
    iput-object v2, v0, Lcom/googlecode/mp4parser/a/a/b$a;->e:Lcom/googlecode/mp4parser/a/a/b;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/googlecode/mp4parser/a/a/b$a;->b:Ljava/util/List;

    move-wide/from16 v2, p4

    .line 647
    iput-wide v2, v0, Lcom/googlecode/mp4parser/a/a/b$a;->d:J

    move-object/from16 v2, p2

    .line 1039
    iget-object v2, v2, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 648
    iput-object v2, v0, Lcom/googlecode/mp4parser/a/a/b$a;->a:Ljava/util/List;

    .line 649
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 650
    new-instance v3, Lcom/googlecode/mp4parser/a/a/b$a$1;

    invoke-direct {v3, v0}, Lcom/googlecode/mp4parser/a/a/b$a$1;-><init>(Lcom/googlecode/mp4parser/a/a/b$a;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 655
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 656
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 657
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 658
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    const/4 v6, 0x0

    .line 666
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v6, :cond_2

    .line 679
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 680
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v7

    .line 681
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 682
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move v12, v9

    :goto_3
    add-int v13, v9, v8

    if-lt v12, v13, :cond_1

    .line 686
    iget-object v8, v0, Lcom/googlecode/mp4parser/a/a/b$a;->b:Ljava/util/List;

    invoke-interface {v6}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    .line 688
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 684
    :cond_1
    invoke-interface {v6}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v13

    aget-wide v14, v13, v12

    long-to-double v13, v14

    invoke-interface {v6}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v15

    move/from16 p2, v7

    move/from16 p1, v8

    .line 1054
    iget-wide v7, v15, Lcom/googlecode/mp4parser/a/h;->b:J

    long-to-double v7, v7

    div-double/2addr v13, v7

    add-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p1

    move/from16 v7, p2

    goto :goto_3

    :cond_2
    return-void

    .line 666
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/a/g;

    if-eqz v6, :cond_4

    .line 667
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v13, v9, v11

    if-gez v13, :cond_0

    .line 670
    :cond_4
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    array-length v10, v10

    if-ge v9, v10, :cond_0

    move-object v6, v8

    goto/16 :goto_2

    .line 658
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/a/g;

    const/4 v8, 0x0

    .line 659
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    .line 661
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/a/a/b;Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;JLcom/googlecode/mp4parser/a/a/b$a;)V
    .locals 0

    .line 646
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/mp4parser/a/a/b$a;-><init>(Lcom/googlecode/mp4parser/a/a/b;Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;J)V

    return-void
.end method

.method private static a(J)Z
    .locals 3

    const-wide/16 v0, 0x8

    add-long/2addr p0, v0

    const-wide v0, 0x100000000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()J
    .locals 7

    const-wide/16 v0, 0x10

    move-object v2, p0

    .line 714
    :goto_0
    instance-of v3, v2, Lcom/b/a/a/b;

    if-nez v3, :cond_0

    return-wide v0

    .line 715
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/b/a/a/b;

    invoke-interface {v3}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/b/a/a/e;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b/a/a/b;

    if-eq v2, v5, :cond_2

    .line 719
    invoke-interface {v5}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1

    .line 721
    :cond_2
    :goto_2
    invoke-interface {v3}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v2

    goto :goto_0
.end method

.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 741
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 742
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a/a/b$a;->getSize()J

    move-result-wide v1

    .line 743
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/a/a/b$a;->a(J)Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_0

    .line 744
    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 746
    :cond_0
    invoke-static {v0, v4, v5}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    :goto_0
    const-string v3, "mdat"

    .line 748
    invoke-static {v3}, Lcom/b/a/d;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 749
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/a/a/b$a;->a(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 750
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 752
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;J)V

    .line 754
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 755
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 759
    invoke-static {}, Lcom/googlecode/mp4parser/a/a/b;->a()Lcom/googlecode/mp4parser/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "About to write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/googlecode/mp4parser/a/a/b$a;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v6, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 761
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/a/f;

    .line 762
    invoke-interface {v8, p1}, Lcom/googlecode/mp4parser/a/f;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 763
    invoke-interface {v8}, Lcom/googlecode/mp4parser/a/f;->a()J

    move-result-wide v8

    add-long/2addr v1, v8

    const-wide/32 v8, 0x100000

    cmp-long v10, v1, v8

    if-lez v10, :cond_3

    sub-long/2addr v1, v8

    add-long/2addr v6, v4

    .line 767
    invoke-static {}, Lcom/googlecode/mp4parser/a/a/b;->a()Lcom/googlecode/mp4parser/c/f;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Written "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final getParent()Lcom/b/a/a/e;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b$a;->c:Lcom/b/a/a/e;

    return-object v0
.end method

.method public final getSize()J
    .locals 4

    .line 732
    iget-wide v0, p0, Lcom/googlecode/mp4parser/a/a/b$a;->d:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    const-string v0, "mdat"

    return-object v0
.end method

.method public final parse(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/b/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final setParent(Lcom/b/a/a/e;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/a/b$a;->c:Lcom/b/a/a/e;

    return-void
.end method
