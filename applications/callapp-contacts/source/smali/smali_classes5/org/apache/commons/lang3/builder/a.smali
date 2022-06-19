.class public final Lorg/apache/commons/lang3/builder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lorg/apache/commons/lang3/builder/a;"
        }
    .end annotation

    .line 407
    iget v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 414
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 418
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    return-object p0

    .line 421
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1443
    instance-of v2, p1, [J

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 1444
    check-cast p1, [J

    check-cast p2, [J

    .line 1701
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_4

    .line 1708
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_4
    if-nez p2, :cond_5

    .line 1712
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 1715
    :cond_5
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_7

    .line 1716
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 1719
    :cond_7
    :goto_1
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 1720
    aget-wide v0, p1, v3

    aget-wide v4, p2, v3

    if-eqz p3, :cond_8

    goto :goto_2

    .line 2479
    :cond_8
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1445
    :cond_9
    instance-of v2, p1, [I

    if-eqz v2, :cond_f

    .line 1446
    check-cast p1, [I

    check-cast p2, [I

    .line 2741
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_a

    .line 2748
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_a
    if-nez p2, :cond_b

    .line 2752
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 2755
    :cond_b
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_d

    .line 2756
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 2759
    :cond_d
    :goto_4
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 2760
    aget v0, p1, v3

    aget v1, p2, v3

    if-eqz p3, :cond_e

    goto :goto_5

    .line 3495
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1447
    :cond_f
    instance-of v2, p1, [S

    if-eqz v2, :cond_15

    .line 1448
    check-cast p1, [S

    check-cast p2, [S

    .line 3781
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_10

    .line 3788
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_10
    if-nez p2, :cond_11

    .line 3792
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 3795
    :cond_11
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_13

    .line 3796
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_12

    goto :goto_6

    :cond_12
    const/4 v0, 0x1

    :goto_6
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 3799
    :cond_13
    :goto_7
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 3800
    aget-short v0, p1, v3

    aget-short v1, p2, v3

    if-eqz p3, :cond_14

    goto :goto_8

    .line 4511
    :cond_14
    invoke-static {v0, v1}, Ljava/lang/Short;->compare(SS)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1449
    :cond_15
    instance-of v2, p1, [C

    if-eqz v2, :cond_1b

    .line 1450
    check-cast p1, [C

    check-cast p2, [C

    .line 4821
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_16

    .line 4828
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_16
    if-nez p2, :cond_17

    .line 4832
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 4835
    :cond_17
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_19

    .line 4836
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_18

    goto :goto_9

    :cond_18
    const/4 v0, 0x1

    :goto_9
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 4839
    :cond_19
    :goto_a
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 4840
    aget-char v0, p1, v3

    aget-char v1, p2, v3

    if-eqz p3, :cond_1a

    goto :goto_b

    .line 5527
    :cond_1a
    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1451
    :cond_1b
    instance-of v2, p1, [B

    if-eqz v2, :cond_21

    .line 1452
    check-cast p1, [B

    check-cast p2, [B

    .line 5861
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_1c

    .line 5868
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_1c
    if-nez p2, :cond_1d

    .line 5872
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 5875
    :cond_1d
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_1f

    .line 5876
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v0, 0x1

    :goto_c
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 5879
    :cond_1f
    :goto_d
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 5880
    aget-byte v0, p1, v3

    aget-byte v1, p2, v3

    if-eqz p3, :cond_20

    goto :goto_e

    .line 6543
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Byte;->compare(BB)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1453
    :cond_21
    instance-of v2, p1, [D

    if-eqz v2, :cond_27

    .line 1454
    check-cast p1, [D

    check-cast p2, [D

    .line 6901
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_22

    .line 6908
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_22
    if-nez p2, :cond_23

    .line 6912
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 6915
    :cond_23
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_25

    .line 6916
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_24

    goto :goto_f

    :cond_24
    const/4 v0, 0x1

    :goto_f
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 6919
    :cond_25
    :goto_10
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 6920
    aget-wide v0, p1, v3

    aget-wide v4, p2, v3

    if-eqz p3, :cond_26

    goto :goto_11

    .line 7564
    :cond_26
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1455
    :cond_27
    instance-of v2, p1, [F

    if-eqz v2, :cond_2d

    .line 1456
    check-cast p1, [F

    check-cast p2, [F

    .line 7941
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_28

    .line 7948
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_28
    if-nez p2, :cond_29

    .line 7952
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 7955
    :cond_29
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_2b

    .line 7956
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_2a

    goto :goto_12

    :cond_2a
    const/4 v0, 0x1

    :goto_12
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 7959
    :cond_2b
    :goto_13
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 7960
    aget v0, p1, v3

    aget v1, p2, v3

    if-eqz p3, :cond_2c

    goto :goto_14

    .line 8585
    :cond_2c
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1457
    :cond_2d
    instance-of v2, p1, [Z

    if-eqz v2, :cond_34

    .line 1458
    check-cast p1, [Z

    check-cast p2, [Z

    .line 8981
    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_2e

    .line 8988
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    :cond_2e
    if-nez p2, :cond_2f

    .line 8992
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto/16 :goto_1a

    .line 8995
    :cond_2f
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_31

    .line 8996
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_30

    goto :goto_15

    :cond_30
    const/4 v0, 0x1

    :goto_15
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto :goto_1a

    .line 8999
    :cond_31
    :goto_16
    array-length p3, p1

    if-ge v3, p3, :cond_3b

    iget p3, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez p3, :cond_3b

    .line 9000
    aget-boolean v2, p1, v3

    aget-boolean v4, p2, v3

    if-nez p3, :cond_33

    if-eq v2, v4, :cond_33

    if-eqz v2, :cond_32

    .line 9605
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto :goto_17

    .line 9607
    :cond_32
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :cond_33
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1462
    :cond_34
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 9661
    iget v2, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez v2, :cond_3b

    if-eq p1, p2, :cond_3b

    if-nez p1, :cond_35

    .line 9668
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto :goto_1a

    :cond_35
    if-nez p2, :cond_36

    .line 9672
    iput v1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto :goto_1a

    .line 9675
    :cond_36
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_38

    .line 9676
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_37

    goto :goto_18

    :cond_37
    const/4 v0, 0x1

    :goto_18
    iput v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto :goto_1a

    .line 9679
    :cond_38
    :goto_19
    array-length v0, p1

    if-ge v3, v0, :cond_3b

    iget v0, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    if-nez v0, :cond_3b

    .line 9680
    aget-object v0, p1, v3

    aget-object v1, p2, v3

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/builder/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang3/builder/a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_39
    if-nez p3, :cond_3a

    .line 428
    check-cast p1, Ljava/lang/Comparable;

    .line 429
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    goto :goto_1a

    .line 433
    :cond_3a
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/a;->a:I

    :cond_3b
    :goto_1a
    return-object p0
.end method
