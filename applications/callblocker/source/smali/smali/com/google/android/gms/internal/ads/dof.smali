.class final Lcom/google/android/gms/internal/ads/dof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 671
    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->a:I

    .line 672
    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->b:I

    .line 673
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->c:I

    .line 674
    const-string/jumbo v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->d:I

    .line 675
    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->e:I

    .line 676
    const-string/jumbo v0, "clcp"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->f:I

    .line 677
    const-string/jumbo v0, "cenc"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->g:I

    .line 678
    const-string/jumbo v0, "meta"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->d(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/dof;->h:I

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dsk;)I
    .locals 3

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v1

    .line 666
    and-int/lit8 v0, v1, 0x7f

    .line 667
    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v1

    .line 669
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    .line 670
    :cond_0
    return v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dsk;IILcom/google/android/gms/internal/ads/dok;I)I
    .locals 11

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v0

    move v5, v0

    .line 613
    :goto_0
    sub-int v0, v5, p1

    if-ge v0, p2, :cond_d

    .line 614
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 615
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 616
    if-lez v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v0

    .line 618
    sget v1, Lcom/google/android/gms/internal/ads/doe;->P:I

    if-ne v0, v1, :cond_c

    .line 620
    add-int/lit8 v3, v5, 0x8

    .line 621
    const/4 v2, 0x0

    .line 622
    const/4 v1, 0x0

    .line 623
    const/4 v0, 0x0

    move v4, v3

    .line 624
    :goto_2
    sub-int v3, v4, v5

    if-ge v3, v6, :cond_8

    .line 625
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v7

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v3

    .line 628
    sget v8, Lcom/google/android/gms/internal/ads/doe;->V:I

    if-ne v3, v8, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 651
    :cond_0
    :goto_3
    add-int v3, v4, v7

    move v4, v3

    .line 652
    goto :goto_2

    .line 616
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 630
    :cond_2
    sget v8, Lcom/google/android/gms/internal/ads/doe;->Q:I

    if-ne v3, v8, :cond_4

    .line 631
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 632
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/dof;->g:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 633
    :cond_4
    sget v8, Lcom/google/android/gms/internal/ads/doe;->R:I

    if-ne v3, v8, :cond_0

    .line 635
    add-int/lit8 v1, v4, 0x8

    .line 636
    :goto_4
    sub-int v3, v1, v4

    if-ge v3, v7, :cond_7

    .line 637
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v3

    .line 639
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v8

    .line 640
    sget v9, Lcom/google/android/gms/internal/ads/doe;->S:I

    if-ne v8, v9, :cond_6

    .line 641
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 642
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    .line 643
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v8

    .line 644
    const/16 v3, 0x10

    new-array v9, v3, [B

    .line 645
    const/4 v3, 0x0

    const/16 v10, 0x10

    invoke-virtual {p0, v9, v3, v10}, Lcom/google/android/gms/internal/ads/dsk;->a([BII)V

    .line 646
    new-instance v3, Lcom/google/android/gms/internal/ads/dox;

    invoke-direct {v3, v1, v8, v9}, Lcom/google/android/gms/internal/ads/dox;-><init>(ZI[B)V

    move-object v1, v3

    goto :goto_3

    .line 642
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 647
    :cond_6
    add-int/2addr v1, v3

    .line 648
    goto :goto_4

    .line 649
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 653
    :cond_8
    if-eqz v2, :cond_b

    .line 654
    if-eqz v0, :cond_9

    const/4 v2, 0x1

    :goto_6
    const-string/jumbo v3, "frma atom is mandatory"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 655
    if-eqz v1, :cond_a

    const/4 v2, 0x1

    :goto_7
    const-string/jumbo v3, "schi->tenc atom is mandatory"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 656
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    .line 659
    :goto_8
    if-eqz v1, :cond_c

    .line 660
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/dok;->a:[Lcom/google/android/gms/internal/ads/dox;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/dox;

    aput-object v0, v2, p4

    .line 661
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    :goto_9
    return v0

    .line 654
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 655
    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 657
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_8

    .line 662
    :cond_c
    add-int v0, v5, v6

    move v5, v0

    .line 663
    goto/16 :goto_0

    .line 664
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dsk;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsk;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 572
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 573
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 574
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;)I

    .line 575
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 576
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v1

    .line 577
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 578
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 579
    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 581
    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 582
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 583
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 584
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;)I

    .line 585
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v1

    .line 586
    sparse-switch v1, :sswitch_data_0

    .line 606
    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 607
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 608
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;)I

    move-result v1

    .line 609
    new-array v2, v1, [B

    .line 610
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dsk;->a([BII)V

    .line 611
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    .line 587
    :sswitch_0
    const-string/jumbo v1, "audio/mpeg"

    .line 588
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 589
    :sswitch_1
    const-string/jumbo v0, "video/mp4v-es"

    goto :goto_0

    .line 591
    :sswitch_2
    const-string/jumbo v0, "video/avc"

    goto :goto_0

    .line 593
    :sswitch_3
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    .line 595
    :sswitch_4
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    .line 597
    :sswitch_5
    const-string/jumbo v0, "audio/ac3"

    goto :goto_0

    .line 599
    :sswitch_6
    const-string/jumbo v0, "audio/eac3"

    goto :goto_0

    .line 601
    :sswitch_7
    const-string/jumbo v1, "audio/vnd.dts"

    .line 602
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 603
    :sswitch_8
    const-string/jumbo v1, "audio/vnd.dts.hd"

    .line 604
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dod;Lcom/google/android/gms/internal/ads/dog;JLcom/google/android/gms/internal/ads/dmw;Z)Lcom/google/android/gms/internal/ads/dot;
    .locals 58

    .prologue
    .line 1
    sget v6, Lcom/google/android/gms/internal/ads/doe;->B:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v12

    .line 2
    sget v6, Lcom/google/android/gms/internal/ads/doe;->N:I

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 3
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 5
    sget v7, Lcom/google/android/gms/internal/ads/dof;->b:I

    if-ne v6, v7, :cond_0

    .line 6
    const/4 v6, 0x1

    move/from16 v48, v6

    .line 15
    :goto_0
    const/4 v6, -0x1

    move/from16 v0, v48

    if-ne v0, v6, :cond_5

    .line 16
    const/4 v13, 0x0

    .line 331
    :goto_1
    return-object v13

    .line 7
    :cond_0
    sget v7, Lcom/google/android/gms/internal/ads/dof;->a:I

    if-ne v6, v7, :cond_1

    .line 8
    const/4 v6, 0x2

    move/from16 v48, v6

    goto :goto_0

    .line 9
    :cond_1
    sget v7, Lcom/google/android/gms/internal/ads/dof;->c:I

    if-eq v6, v7, :cond_2

    sget v7, Lcom/google/android/gms/internal/ads/dof;->d:I

    if-eq v6, v7, :cond_2

    sget v7, Lcom/google/android/gms/internal/ads/dof;->e:I

    if-eq v6, v7, :cond_2

    sget v7, Lcom/google/android/gms/internal/ads/dof;->f:I

    if-ne v6, v7, :cond_3

    .line 10
    :cond_2
    const/4 v6, 0x3

    move/from16 v48, v6

    goto :goto_0

    .line 11
    :cond_3
    sget v7, Lcom/google/android/gms/internal/ads/dof;->h:I

    if-ne v6, v7, :cond_4

    .line 12
    const/4 v6, 0x4

    move/from16 v48, v6

    goto :goto_0

    .line 13
    :cond_4
    const/4 v6, -0x1

    move/from16 v48, v6

    goto :goto_0

    .line 17
    :cond_5
    sget v6, Lcom/google/android/gms/internal/ads/doe;->J:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v6

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 18
    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 20
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/doe;->c(I)I

    move-result v10

    .line 21
    if-nez v10, :cond_c

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v11

    .line 23
    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 24
    const/4 v7, 0x1

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v13

    .line 26
    if-nez v10, :cond_d

    const/4 v6, 0x4

    .line 27
    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_6

    .line 28
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int v15, v13, v8

    aget-byte v14, v14, v15

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    .line 29
    const/4 v7, 0x0

    .line 32
    :cond_6
    if-eqz v7, :cond_f

    .line 33
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 34
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    :cond_7
    :goto_5
    const/16 v8, 0x10

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 39
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v8

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v10

    .line 41
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v13

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v9

    .line 44
    if-nez v8, :cond_11

    const/high16 v14, 0x10000

    if-ne v10, v14, :cond_11

    const/high16 v14, -0x10000

    if-ne v13, v14, :cond_11

    if-nez v9, :cond_11

    .line 45
    const/16 v8, 0x5a

    .line 51
    :goto_6
    new-instance v49, Lcom/google/android/gms/internal/ads/dol;

    move-object/from16 v0, v49

    invoke-direct {v0, v11, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dol;-><init>(IJI)V

    .line 53
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_5f

    .line 54
    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/dol;->a(Lcom/google/android/gms/internal/ads/dol;)J

    move-result-wide v6

    .line 55
    :goto_7
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 56
    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 57
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v8

    .line 58
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/doe;->c(I)I

    move-result v8

    .line 59
    if-nez v8, :cond_14

    const/16 v8, 0x8

    :goto_8
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 60
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v10

    .line 62
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v6, v8

    if-nez v8, :cond_15

    .line 63
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v46, v6

    .line 65
    :goto_9
    sget v6, Lcom/google/android/gms/internal/ads/doe;->C:I

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v6

    sget v7, Lcom/google/android/gms/internal/ads/doe;->D:I

    .line 66
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v7

    .line 67
    sget v6, Lcom/google/android/gms/internal/ads/doe;->M:I

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v6

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 68
    const/16 v6, 0x8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 69
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 70
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/doe;->c(I)I

    move-result v9

    .line 71
    if-nez v9, :cond_16

    const/16 v6, 0x8

    :goto_a
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v12

    .line 73
    if-nez v9, :cond_17

    const/4 v6, 0x4

    :goto_b
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v6

    .line 75
    shr-int/lit8 v8, v6, 0xa

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    shr-int/lit8 v9, v6, 0x5

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v50

    .line 78
    sget v6, Lcom/google/android/gms/internal/ads/doe;->O:I

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    move-object/from16 v51, v0

    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/dol;->b(Lcom/google/android/gms/internal/ads/dol;)I

    move-result v52

    .line 79
    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/dol;->c(Lcom/google/android/gms/internal/ads/dol;)I

    move-result v21

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 81
    const/16 v6, 0xc

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 82
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v53

    .line 83
    new-instance v54, Lcom/google/android/gms/internal/ads/dok;

    move-object/from16 v0, v54

    move/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dok;-><init>(I)V

    .line 84
    const/4 v6, 0x0

    move/from16 v45, v6

    :goto_c
    move/from16 v0, v45

    move/from16 v1, v53

    if-ge v0, v1, :cond_55

    .line 85
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v55

    .line 86
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v56

    .line 87
    if-lez v56, :cond_18

    const/4 v6, 0x1

    :goto_d
    const-string/jumbo v7, "childAtomSize should be positive"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 88
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 89
    sget v7, Lcom/google/android/gms/internal/ads/doe;->e:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->f:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->T:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->Y:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->g:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->h:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->i:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->aw:I

    if-eq v6, v7, :cond_8

    sget v7, Lcom/google/android/gms/internal/ads/doe;->ax:I

    if-ne v6, v7, :cond_2c

    .line 91
    :cond_8
    add-int/lit8 v7, v55, 0x8

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 92
    const/16 v7, 0x10

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 93
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v17

    .line 94
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v18

    .line 95
    const/4 v9, 0x0

    .line 96
    const/high16 v22, 0x3f800000    # 1.0f

    .line 97
    const/16 v7, 0x32

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 98
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v7

    .line 99
    sget v8, Lcom/google/android/gms/internal/ads/doe;->T:I

    if-ne v6, v8, :cond_9

    .line 100
    move-object/from16 v0, v51

    move/from16 v1, v55

    move/from16 v2, v56

    move-object/from16 v3, v54

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;IILcom/google/android/gms/internal/ads/dok;I)I

    move-result v6

    .line 101
    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    :cond_9
    move v8, v6

    .line 102
    const/16 v20, 0x0

    .line 103
    const/4 v13, 0x0

    .line 104
    const/16 v23, 0x0

    .line 105
    const/16 v24, -0x1

    move v12, v7

    .line 106
    :goto_e
    sub-int v6, v12, v55

    move/from16 v0, v56

    if-ge v6, v0, :cond_2a

    .line 107
    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 108
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v7

    .line 109
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v14

    .line 110
    if-nez v14, :cond_a

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v6

    sub-int v6, v6, v55

    move/from16 v0, v56

    if-eq v6, v0, :cond_2a

    .line 111
    :cond_a
    if-lez v14, :cond_19

    const/4 v6, 0x1

    :goto_f
    const-string/jumbo v15, "childAtomSize should be positive"

    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 112
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 113
    sget v15, Lcom/google/android/gms/internal/ads/doe;->E:I

    if-ne v6, v15, :cond_1b

    .line 114
    if-nez v13, :cond_1a

    const/4 v6, 0x1

    :goto_10
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 115
    const-string/jumbo v13, "video/avc"

    .line 116
    add-int/lit8 v6, v7, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 117
    invoke-static/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsp;->a(Lcom/google/android/gms/internal/ads/dsk;)Lcom/google/android/gms/internal/ads/dsp;

    move-result-object v6

    .line 118
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/dsp;->a:Ljava/util/List;

    move-object/from16 v20, v0

    .line 119
    iget v7, v6, Lcom/google/android/gms/internal/ads/dsp;->b:I

    move-object/from16 v0, v54

    iput v7, v0, Lcom/google/android/gms/internal/ads/dok;->c:I

    .line 120
    if-nez v9, :cond_b

    .line 121
    iget v0, v6, Lcom/google/android/gms/internal/ads/dsp;->c:F

    move/from16 v22, v0

    :cond_b
    move v7, v9

    .line 175
    :goto_11
    add-int v6, v12, v14

    move v12, v6

    move v9, v7

    .line 176
    goto :goto_e

    .line 21
    :cond_c
    const/16 v6, 0x10

    goto/16 :goto_2

    .line 26
    :cond_d
    const/16 v6, 0x8

    goto/16 :goto_3

    .line 31
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 35
    :cond_f
    if-nez v10, :cond_10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v6

    .line 36
    :goto_12
    const-wide/16 v14, 0x0

    cmp-long v8, v6, v14

    if-nez v8, :cond_7

    .line 37
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    .line 35
    :cond_10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->p()J

    move-result-wide v6

    goto :goto_12

    .line 46
    :cond_11
    if-nez v8, :cond_12

    const/high16 v14, -0x10000

    if-ne v10, v14, :cond_12

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_12

    if-nez v9, :cond_12

    .line 47
    const/16 v8, 0x10e

    goto/16 :goto_6

    .line 48
    :cond_12
    const/high16 v14, -0x10000

    if-ne v8, v14, :cond_13

    if-nez v10, :cond_13

    if-nez v13, :cond_13

    const/high16 v8, -0x10000

    if-ne v9, v8, :cond_13

    .line 49
    const/16 v8, 0xb4

    goto/16 :goto_6

    .line 50
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 59
    :cond_14
    const/16 v8, 0x10

    goto/16 :goto_8

    .line 64
    :cond_15
    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v6

    move-wide/from16 v46, v6

    goto/16 :goto_9

    .line 71
    :cond_16
    const/16 v6, 0x10

    goto/16 :goto_a

    .line 73
    :cond_17
    const/16 v6, 0x8

    goto/16 :goto_b

    .line 87
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 111
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 114
    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 122
    :cond_1b
    sget v15, Lcom/google/android/gms/internal/ads/doe;->F:I

    if-ne v6, v15, :cond_1d

    .line 123
    if-nez v13, :cond_1c

    const/4 v6, 0x1

    :goto_13
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 124
    const-string/jumbo v13, "video/hevc"

    .line 125
    add-int/lit8 v6, v7, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 126
    invoke-static/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsv;->a(Lcom/google/android/gms/internal/ads/dsk;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object v6

    .line 127
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/dsv;->a:Ljava/util/List;

    move-object/from16 v20, v0

    .line 128
    iget v6, v6, Lcom/google/android/gms/internal/ads/dsv;->b:I

    move-object/from16 v0, v54

    iput v6, v0, Lcom/google/android/gms/internal/ads/dok;->c:I

    move v7, v9

    .line 129
    goto/16 :goto_11

    .line 123
    :cond_1c
    const/4 v6, 0x0

    goto :goto_13

    .line 129
    :cond_1d
    sget v15, Lcom/google/android/gms/internal/ads/doe;->ay:I

    if-ne v6, v15, :cond_20

    .line 130
    if-nez v13, :cond_1e

    const/4 v6, 0x1

    :goto_14
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 131
    sget v6, Lcom/google/android/gms/internal/ads/doe;->aw:I

    if-ne v8, v6, :cond_1f

    const-string/jumbo v13, "video/x-vnd.on2.vp8"

    :goto_15
    move v7, v9

    goto/16 :goto_11

    .line 130
    :cond_1e
    const/4 v6, 0x0

    goto :goto_14

    .line 131
    :cond_1f
    const-string/jumbo v13, "video/x-vnd.on2.vp9"

    goto :goto_15

    .line 132
    :cond_20
    sget v15, Lcom/google/android/gms/internal/ads/doe;->j:I

    if-ne v6, v15, :cond_22

    .line 133
    if-nez v13, :cond_21

    const/4 v6, 0x1

    :goto_16
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 134
    const-string/jumbo v13, "video/3gpp"

    move v7, v9

    goto/16 :goto_11

    .line 133
    :cond_21
    const/4 v6, 0x0

    goto :goto_16

    .line 135
    :cond_22
    sget v15, Lcom/google/android/gms/internal/ads/doe;->G:I

    if-ne v6, v15, :cond_24

    .line 136
    if-nez v13, :cond_23

    const/4 v6, 0x1

    :goto_17
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 138
    move-object/from16 v0, v51

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;I)Landroid/util/Pair;

    move-result-object v7

    .line 139
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 140
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object v13, v6

    move v7, v9

    .line 141
    goto/16 :goto_11

    .line 136
    :cond_23
    const/4 v6, 0x0

    goto :goto_17

    .line 141
    :cond_24
    sget v15, Lcom/google/android/gms/internal/ads/doe;->W:I

    if-ne v6, v15, :cond_25

    .line 143
    add-int/lit8 v6, v7, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 144
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v6

    .line 145
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v7

    .line 146
    int-to-float v6, v6

    int-to-float v7, v7

    div-float v22, v6, v7

    .line 148
    const/4 v6, 0x1

    move v7, v6

    goto/16 :goto_11

    .line 149
    :cond_25
    sget v15, Lcom/google/android/gms/internal/ads/doe;->au:I

    if-ne v6, v15, :cond_28

    .line 151
    add-int/lit8 v6, v7, 0x8

    .line 152
    :goto_18
    sub-int v15, v6, v7

    if-ge v15, v14, :cond_27

    .line 153
    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 154
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v15

    .line 155
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v16

    .line 156
    sget v19, Lcom/google/android/gms/internal/ads/doe;->av:I

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 157
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/2addr v15, v6

    invoke-static {v7, v6, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    :goto_19
    move v7, v9

    .line 161
    goto/16 :goto_11

    .line 158
    :cond_26
    add-int/2addr v6, v15

    .line 159
    goto :goto_18

    .line 160
    :cond_27
    const/16 v23, 0x0

    goto :goto_19

    .line 162
    :cond_28
    sget v7, Lcom/google/android/gms/internal/ads/doe;->at:I

    if-ne v6, v7, :cond_29

    .line 163
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v6

    .line 164
    const/4 v7, 0x3

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 165
    if-nez v6, :cond_29

    .line 166
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v6

    .line 167
    packed-switch v6, :pswitch_data_0

    :cond_29
    move v7, v9

    goto/16 :goto_11

    .line 168
    :pswitch_0
    const/16 v24, 0x0

    move v7, v9

    .line 169
    goto/16 :goto_11

    .line 170
    :pswitch_1
    const/16 v24, 0x1

    move v7, v9

    .line 171
    goto/16 :goto_11

    .line 172
    :pswitch_2
    const/16 v24, 0x2

    move v7, v9

    .line 173
    goto/16 :goto_11

    .line 174
    :pswitch_3
    const/16 v24, 0x3

    move v7, v9

    goto/16 :goto_11

    .line 177
    :cond_2a
    if-eqz v13, :cond_2b

    .line 178
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v12 .. v26}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/dss;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    .line 304
    :cond_2b
    :goto_1a
    add-int v6, v55, v56

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 305
    add-int/lit8 v6, v45, 0x1

    move/from16 v45, v6

    goto/16 :goto_c

    .line 180
    :cond_2c
    sget v7, Lcom/google/android/gms/internal/ads/doe;->k:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->U:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->p:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->r:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->t:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->w:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->u:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->v:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->al:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->am:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->n:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->o:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->l:I

    if-eq v6, v7, :cond_2d

    sget v7, Lcom/google/android/gms/internal/ads/doe;->aA:I

    if-ne v6, v7, :cond_4d

    .line 182
    :cond_2d
    add-int/lit8 v7, v55, 0x8

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 183
    const/4 v7, 0x0

    .line 184
    if-eqz p5, :cond_34

    .line 185
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v7

    .line 186
    const/4 v8, 0x6

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    move v9, v7

    .line 188
    :goto_1b
    if-eqz v9, :cond_2e

    const/4 v7, 0x1

    if-ne v9, v7, :cond_35

    .line 189
    :cond_2e
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v8

    .line 190
    const/4 v7, 0x6

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 191
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->n()I

    move-result v7

    .line 192
    const/4 v12, 0x1

    if-ne v9, v12, :cond_2f

    .line 193
    const/16 v9, 0x10

    move-object/from16 v0, v51

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 202
    :cond_2f
    :goto_1c
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v12

    .line 203
    sget v9, Lcom/google/android/gms/internal/ads/doe;->U:I

    if-ne v6, v9, :cond_30

    .line 204
    move-object/from16 v0, v51

    move/from16 v1, v55

    move/from16 v2, v56

    move-object/from16 v3, v54

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;IILcom/google/android/gms/internal/ads/dok;I)I

    move-result v6

    .line 205
    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 206
    :cond_30
    const/4 v9, 0x0

    .line 207
    sget v13, Lcom/google/android/gms/internal/ads/doe;->p:I

    if-ne v6, v13, :cond_36

    .line 208
    const-string/jumbo v6, "audio/ac3"

    .line 227
    :goto_1d
    const/4 v9, 0x0

    move-object/from16 v23, v6

    move/from16 v28, v7

    move/from16 v27, v8

    .line 228
    :goto_1e
    sub-int v6, v12, v55

    move/from16 v0, v56

    if-ge v6, v0, :cond_4a

    .line 229
    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 230
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v13

    .line 231
    if-lez v13, :cond_41

    const/4 v6, 0x1

    :goto_1f
    const-string/jumbo v7, "childAtomSize should be positive"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 232
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 233
    sget v7, Lcom/google/android/gms/internal/ads/doe;->G:I

    if-eq v6, v7, :cond_31

    if-eqz p5, :cond_46

    sget v7, Lcom/google/android/gms/internal/ads/doe;->m:I

    if-ne v6, v7, :cond_46

    .line 234
    :cond_31
    sget v7, Lcom/google/android/gms/internal/ads/doe;->G:I

    if-ne v6, v7, :cond_42

    move v6, v12

    .line 248
    :goto_20
    const/4 v7, -0x1

    if-eq v6, v7, :cond_5d

    .line 250
    move-object/from16 v0, v51

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/dof;->a(Lcom/google/android/gms/internal/ads/dsk;I)Landroid/util/Pair;

    move-result-object v8

    .line 251
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 252
    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [B

    .line 253
    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 255
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dsc;->a([B)Landroid/util/Pair;

    move-result-object v9

    .line 256
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 257
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v27

    :cond_32
    :goto_21
    move-object v9, v8

    move-object/from16 v23, v7

    .line 270
    :cond_33
    :goto_22
    add-int/2addr v12, v13

    .line 271
    goto :goto_1e

    .line 187
    :cond_34
    const/16 v8, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    move v9, v7

    goto/16 :goto_1b

    .line 194
    :cond_35
    const/4 v7, 0x2

    if-ne v9, v7, :cond_2b

    .line 195
    const/16 v7, 0x10

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 197
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->m()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 198
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    .line 199
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v8

    .line 200
    const/16 v9, 0x14

    move-object/from16 v0, v51

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    goto/16 :goto_1c

    .line 209
    :cond_36
    sget v13, Lcom/google/android/gms/internal/ads/doe;->r:I

    if-ne v6, v13, :cond_37

    .line 210
    const-string/jumbo v6, "audio/eac3"

    goto/16 :goto_1d

    .line 211
    :cond_37
    sget v13, Lcom/google/android/gms/internal/ads/doe;->t:I

    if-ne v6, v13, :cond_38

    .line 212
    const-string/jumbo v6, "audio/vnd.dts"

    goto/16 :goto_1d

    .line 213
    :cond_38
    sget v13, Lcom/google/android/gms/internal/ads/doe;->u:I

    if-eq v6, v13, :cond_39

    sget v13, Lcom/google/android/gms/internal/ads/doe;->v:I

    if-ne v6, v13, :cond_3a

    .line 214
    :cond_39
    const-string/jumbo v6, "audio/vnd.dts.hd"

    goto/16 :goto_1d

    .line 215
    :cond_3a
    sget v13, Lcom/google/android/gms/internal/ads/doe;->w:I

    if-ne v6, v13, :cond_3b

    .line 216
    const-string/jumbo v6, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1d

    .line 217
    :cond_3b
    sget v13, Lcom/google/android/gms/internal/ads/doe;->al:I

    if-ne v6, v13, :cond_3c

    .line 218
    const-string/jumbo v6, "audio/3gpp"

    goto/16 :goto_1d

    .line 219
    :cond_3c
    sget v13, Lcom/google/android/gms/internal/ads/doe;->am:I

    if-ne v6, v13, :cond_3d

    .line 220
    const-string/jumbo v6, "audio/amr-wb"

    goto/16 :goto_1d

    .line 221
    :cond_3d
    sget v13, Lcom/google/android/gms/internal/ads/doe;->n:I

    if-eq v6, v13, :cond_3e

    sget v13, Lcom/google/android/gms/internal/ads/doe;->o:I

    if-ne v6, v13, :cond_3f

    .line 222
    :cond_3e
    const-string/jumbo v6, "audio/raw"

    goto/16 :goto_1d

    .line 223
    :cond_3f
    sget v13, Lcom/google/android/gms/internal/ads/doe;->l:I

    if-ne v6, v13, :cond_40

    .line 224
    const-string/jumbo v6, "audio/mpeg"

    goto/16 :goto_1d

    .line 225
    :cond_40
    sget v13, Lcom/google/android/gms/internal/ads/doe;->aA:I

    if-ne v6, v13, :cond_5e

    .line 226
    const-string/jumbo v6, "audio/alac"

    goto/16 :goto_1d

    .line 231
    :cond_41
    const/4 v6, 0x0

    goto/16 :goto_1f

    .line 236
    :cond_42
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v7

    .line 237
    :goto_23
    sub-int v6, v7, v12

    if-ge v6, v13, :cond_45

    .line 238
    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 239
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v8

    .line 240
    if-lez v8, :cond_43

    const/4 v6, 0x1

    :goto_24
    const-string/jumbo v14, "childAtomSize should be positive"

    invoke-static {v6, v14}, Lcom/google/android/gms/internal/ads/drz;->a(ZLjava/lang/Object;)V

    .line 241
    invoke-virtual/range {v51 .. v51}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 242
    sget v14, Lcom/google/android/gms/internal/ads/doe;->G:I

    if-ne v6, v14, :cond_44

    move v6, v7

    .line 243
    goto/16 :goto_20

    .line 240
    :cond_43
    const/4 v6, 0x0

    goto :goto_24

    .line 244
    :cond_44
    add-int/2addr v7, v8

    .line 245
    goto :goto_23

    .line 246
    :cond_45
    const/4 v6, -0x1

    goto/16 :goto_20

    .line 258
    :cond_46
    sget v7, Lcom/google/android/gms/internal/ads/doe;->q:I

    if-ne v6, v7, :cond_47

    .line 259
    add-int/lit8 v6, v12, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 260
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v32

    invoke-static {v0, v6, v1, v7}, Lcom/google/android/gms/internal/ads/dlr;->a(Lcom/google/android/gms/internal/ads/dsk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    goto/16 :goto_22

    .line 261
    :cond_47
    sget v7, Lcom/google/android/gms/internal/ads/doe;->s:I

    if-ne v6, v7, :cond_48

    .line 262
    add-int/lit8 v6, v12, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 263
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v32

    invoke-static {v0, v6, v1, v7}, Lcom/google/android/gms/internal/ads/dlr;->b(Lcom/google/android/gms/internal/ads/dsk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    goto/16 :goto_22

    .line 264
    :cond_48
    sget v7, Lcom/google/android/gms/internal/ads/doe;->x:I

    if-ne v6, v7, :cond_49

    .line 265
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v22 .. v32}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/dmw;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    goto/16 :goto_22

    .line 266
    :cond_49
    sget v7, Lcom/google/android/gms/internal/ads/doe;->aA:I

    if-ne v6, v7, :cond_33

    .line 267
    new-array v9, v13, [B

    .line 268
    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 269
    const/4 v6, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v9, v6, v13}, Lcom/google/android/gms/internal/ads/dsk;->a([BII)V

    goto/16 :goto_22

    .line 272
    :cond_4a
    move-object/from16 v0, v54

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    if-nez v6, :cond_2b

    if-eqz v23, :cond_2b

    .line 273
    const-string/jumbo v6, "audio/raw"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v40, 0x2

    .line 274
    :goto_25
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, -0x1

    .line 275
    if-nez v9, :cond_4c

    const/16 v41, 0x0

    :goto_26
    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v34, v23

    move/from16 v38, v27

    move/from16 v39, v28

    move-object/from16 v44, v32

    .line 276
    invoke-static/range {v33 .. v44}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/dmw;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    goto/16 :goto_1a

    .line 273
    :cond_4b
    const/16 v40, -0x1

    goto :goto_25

    .line 275
    :cond_4c
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    goto :goto_26

    .line 278
    :cond_4d
    sget v7, Lcom/google/android/gms/internal/ads/doe;->X:I

    if-eq v6, v7, :cond_4e

    sget v7, Lcom/google/android/gms/internal/ads/doe;->ah:I

    if-eq v6, v7, :cond_4e

    sget v7, Lcom/google/android/gms/internal/ads/doe;->ai:I

    if-eq v6, v7, :cond_4e

    sget v7, Lcom/google/android/gms/internal/ads/doe;->aj:I

    if-eq v6, v7, :cond_4e

    sget v7, Lcom/google/android/gms/internal/ads/doe;->ak:I

    if-ne v6, v7, :cond_54

    .line 280
    :cond_4e
    add-int/lit8 v7, v55, 0x8

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 281
    const/16 v37, 0x0

    .line 282
    const-wide v35, 0x7fffffffffffffffL

    .line 283
    sget v7, Lcom/google/android/gms/internal/ads/doe;->X:I

    if-ne v6, v7, :cond_4f

    .line 284
    const-string/jumbo v28, "application/ttml+xml"

    .line 300
    :goto_27
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v33, -0x1

    const/16 v34, 0x0

    invoke-static/range {v27 .. v37}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/dmw;JLjava/util/List;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    goto/16 :goto_1a

    .line 285
    :cond_4f
    sget v7, Lcom/google/android/gms/internal/ads/doe;->ah:I

    if-ne v6, v7, :cond_50

    .line 286
    const-string/jumbo v28, "application/x-quicktime-tx3g"

    .line 287
    add-int/lit8 v6, v56, -0x8

    add-int/lit8 v6, v6, -0x8

    .line 288
    new-array v7, v6, [B

    .line 289
    const/4 v8, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/dsk;->a([BII)V

    .line 290
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v37

    goto :goto_27

    .line 291
    :cond_50
    sget v7, Lcom/google/android/gms/internal/ads/doe;->ai:I

    if-ne v6, v7, :cond_51

    .line 292
    const-string/jumbo v28, "application/x-mp4-vtt"

    goto :goto_27

    .line 293
    :cond_51
    sget v7, Lcom/google/android/gms/internal/ads/doe;->aj:I

    if-ne v6, v7, :cond_52

    .line 294
    const-string/jumbo v28, "application/ttml+xml"

    .line 295
    const-wide/16 v35, 0x0

    goto :goto_27

    .line 296
    :cond_52
    sget v7, Lcom/google/android/gms/internal/ads/doe;->ak:I

    if-ne v6, v7, :cond_53

    .line 297
    const-string/jumbo v28, "application/x-mp4-cea-608"

    .line 298
    const/4 v6, 0x1

    move-object/from16 v0, v54

    iput v6, v0, Lcom/google/android/gms/internal/ads/dok;->d:I

    goto :goto_27

    .line 299
    :cond_53
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 302
    :cond_54
    sget v7, Lcom/google/android/gms/internal/ads/doe;->az:I

    if-ne v6, v7, :cond_2b

    .line 303
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "application/x-camera-motion"

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v12, 0x0

    invoke-static {v6, v7, v8, v9, v12}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    move-object/from16 v0, v54

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    goto/16 :goto_1a

    .line 308
    :cond_55
    sget v6, Lcom/google/android/gms/internal/ads/doe;->K:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dod;->b(I)Lcom/google/android/gms/internal/ads/dod;

    move-result-object v6

    .line 309
    if-eqz v6, :cond_56

    sget v7, Lcom/google/android/gms/internal/ads/doe;->L:I

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v6

    if-nez v6, :cond_57

    .line 310
    :cond_56
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v7, v6

    .line 329
    :goto_28
    move-object/from16 v0, v54

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    if-nez v6, :cond_5c

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 311
    :cond_57
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 312
    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 313
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    .line 314
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/doe;->c(I)I

    move-result v12

    .line 315
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v13

    .line 316
    new-array v14, v13, [J

    .line 317
    new-array v15, v13, [J

    .line 318
    const/4 v6, 0x0

    move v8, v6

    :goto_29
    if-ge v8, v13, :cond_5b

    .line 320
    const/4 v6, 0x1

    if-ne v12, v6, :cond_58

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->p()J

    move-result-wide v6

    :goto_2a
    aput-wide v6, v14, v8

    .line 321
    const/4 v6, 0x1

    if-ne v12, v6, :cond_59

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->m()J

    move-result-wide v6

    :goto_2b
    aput-wide v6, v15, v8

    .line 322
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->i()S

    move-result v6

    .line 323
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5a

    .line 324
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Unsupported media rate."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 320
    :cond_58
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v6

    goto :goto_2a

    .line 321
    :cond_59
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v6

    int-to-long v6, v6

    goto :goto_2b

    .line 325
    :cond_5a
    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 326
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_29

    .line 327
    :cond_5b
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v7, v6

    goto :goto_28

    .line 330
    :cond_5c
    new-instance v13, Lcom/google/android/gms/internal/ads/dot;

    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/dol;->b(Lcom/google/android/gms/internal/ads/dol;)I

    move-result v14

    move-object/from16 v0, v50

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dok;->b:Lcom/google/android/gms/internal/ads/dlf;

    move-object/from16 v22, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/google/android/gms/internal/ads/dok;->d:I

    move/from16 v23, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dok;->a:[Lcom/google/android/gms/internal/ads/dox;

    move-object/from16 v24, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/google/android/gms/internal/ads/dok;->c:I

    move/from16 v25, v0

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, [J

    move/from16 v15, v48

    move-wide/from16 v18, v10

    move-wide/from16 v20, v46

    invoke-direct/range {v13 .. v27}, Lcom/google/android/gms/internal/ads/dot;-><init>(IIJJJLcom/google/android/gms/internal/ads/dlf;I[Lcom/google/android/gms/internal/ads/dox;I[J[J)V

    goto/16 :goto_1

    :cond_5d
    move-object v8, v9

    move-object/from16 v7, v23

    goto/16 :goto_21

    :cond_5e
    move-object v6, v9

    goto/16 :goto_1d

    :cond_5f
    move-wide/from16 v6, p2

    goto/16 :goto_7

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dot;Lcom/google/android/gms/internal/ads/dod;Lcom/google/android/gms/internal/ads/dnl;)Lcom/google/android/gms/internal/ads/dov;
    .locals 32

    .prologue
    .line 332
    sget v2, Lcom/google/android/gms/internal/ads/doe;->ad:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    .line 333
    if-eqz v3, :cond_0

    .line 334
    new-instance v2, Lcom/google/android/gms/internal/ads/doj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/doj;-><init>(Lcom/google/android/gms/internal/ads/dog;)V

    .line 339
    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/doh;->a()I

    move-result v27

    .line 340
    if-nez v27, :cond_2

    .line 341
    new-instance v2, Lcom/google/android/gms/internal/ads/dov;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dov;-><init>([J[II[J[I)V

    .line 536
    :goto_1
    return-object v2

    .line 335
    :cond_0
    sget v2, Lcom/google/android/gms/internal/ads/doe;->ae:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    .line 336
    if-nez v3, :cond_1

    .line 337
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/dom;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dom;-><init>(Lcom/google/android/gms/internal/ads/dog;)V

    goto :goto_0

    .line 342
    :cond_2
    const/4 v4, 0x0

    .line 343
    sget v3, Lcom/google/android/gms/internal/ads/doe;->af:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    .line 344
    if-nez v3, :cond_3

    .line 345
    const/4 v4, 0x1

    .line 346
    sget v3, Lcom/google/android/gms/internal/ads/doe;->ag:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    .line 347
    :cond_3
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 348
    sget v3, Lcom/google/android/gms/internal/ads/doe;->ac:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 349
    sget v3, Lcom/google/android/gms/internal/ads/doe;->Z:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    move-object/from16 v28, v0

    .line 350
    sget v3, Lcom/google/android/gms/internal/ads/doe;->aa:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v3

    .line 351
    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 352
    :goto_2
    sget v5, Lcom/google/android/gms/internal/ads/doe;->ab:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/dod;->a(I)Lcom/google/android/gms/internal/ads/dog;

    move-result-object v5

    .line 353
    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 354
    :goto_3
    new-instance v29, Lcom/google/android/gms/internal/ads/doi;

    move-object/from16 v0, v29

    invoke-direct {v0, v7, v6, v4}, Lcom/google/android/gms/internal/ads/doi;-><init>(Lcom/google/android/gms/internal/ads/dsk;Lcom/google/android/gms/internal/ads/dsk;Z)V

    .line 355
    const/16 v4, 0xc

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 356
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    .line 357
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v26

    .line 358
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v11

    .line 359
    const/4 v9, 0x0

    .line 360
    const/4 v8, 0x0

    .line 361
    const/4 v7, 0x0

    .line 362
    if-eqz v5, :cond_4

    .line 363
    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 364
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v8

    .line 365
    :cond_4
    const/4 v6, -0x1

    .line 366
    const/4 v4, 0x0

    .line 367
    if-eqz v3, :cond_5

    .line 368
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 369
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v4

    .line 370
    if-lez v4, :cond_8

    .line 371
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 373
    :cond_5
    :goto_4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/doh;->c()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dot;->f:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 374
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-nez v13, :cond_9

    if-nez v8, :cond_9

    if-nez v4, :cond_9

    const/4 v10, 0x1

    move v12, v10

    .line 375
    :goto_5
    const/4 v10, 0x0

    .line 376
    const-wide/16 v14, 0x0

    .line 377
    if-nez v12, :cond_16

    .line 378
    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 v19, v0

    .line 379
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 380
    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 381
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 382
    const-wide/16 v24, 0x0

    .line 383
    const/16 v22, 0x0

    .line 384
    const/4 v12, 0x0

    move/from16 v23, v12

    move/from16 v20, v4

    move/from16 v21, v6

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 385
    :goto_7
    if-nez v22, :cond_a

    .line 386
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/doi;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 387
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/doi;->d:J

    move-wide/from16 v24, v0

    .line 388
    move-object/from16 v0, v29

    iget v4, v0, Lcom/google/android/gms/internal/ads/doi;->c:I

    move/from16 v22, v4

    goto :goto_7

    .line 351
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 353
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 372
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 374
    :cond_9
    const/4 v10, 0x0

    move v12, v10

    goto :goto_5

    .line 389
    :cond_a
    if-eqz v5, :cond_33

    move v4, v7

    move v6, v8

    .line 390
    :goto_8
    if-nez v9, :cond_b

    if-lez v6, :cond_b

    .line 391
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v9

    .line 392
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v4

    .line 393
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 394
    :cond_b
    add-int/lit8 v7, v9, -0x1

    move v9, v7

    .line 395
    :goto_9
    aput-wide v24, v19, v23

    .line 396
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/doh;->b()I

    move-result v7

    aput v7, v18, v23

    .line 397
    aget v7, v18, v23

    if-le v7, v10, :cond_c

    .line 398
    aget v7, v18, v23

    move v10, v7

    .line 399
    :cond_c
    int-to-long v0, v4

    move-wide/from16 v30, v0

    add-long v30, v30, v14

    aput-wide v30, v17, v23

    .line 400
    if-nez v3, :cond_e

    const/4 v7, 0x1

    :goto_a
    aput v7, v16, v23

    .line 401
    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 402
    const/4 v7, 0x1

    aput v7, v16, v23

    .line 403
    add-int/lit8 v7, v20, -0x1

    .line 404
    if-lez v7, :cond_32

    .line 405
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move/from16 v20, v7

    move/from16 v21, v8

    .line 406
    :cond_d
    :goto_b
    int-to-long v0, v11

    move-wide/from16 v30, v0

    add-long v14, v14, v30

    .line 407
    add-int/lit8 v7, v26, -0x1

    .line 408
    if-nez v7, :cond_31

    if-lez v13, :cond_31

    .line 409
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v8

    .line 410
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v7

    .line 411
    add-int/lit8 v13, v13, -0x1

    move v11, v7

    move v12, v8

    .line 412
    :goto_c
    aget v7, v18, v23

    int-to-long v0, v7

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    .line 413
    add-int/lit8 v22, v22, -0x1

    .line 414
    add-int/lit8 v23, v23, 0x1

    move v7, v4

    move v8, v6

    move/from16 v26, v12

    goto/16 :goto_6

    .line 400
    :cond_e
    const/4 v7, 0x0

    goto :goto_a

    .line 415
    :cond_f
    if-nez v9, :cond_10

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 416
    :goto_e
    if-lez v8, :cond_12

    .line 417
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 418
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    .line 419
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 415
    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    .line 417
    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    .line 420
    :cond_12
    if-nez v20, :cond_13

    if-nez v26, :cond_13

    if-nez v22, :cond_13

    if-eqz v13, :cond_14

    .line 421
    :cond_13
    const-string/jumbo v2, "AtomParsers"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dot;->a:I

    const/16 v4, 0xd7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Inconsistent stbl box for track "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingSamplesInChunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v7, v16

    move-object/from16 v6, v17

    move v5, v10

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    .line 465
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    if-eqz v2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/dnl;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 466
    :cond_15
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dsn;->a([JJJ)V

    .line 467
    new-instance v2, Lcom/google/android/gms/internal/ads/dov;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dov;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 423
    :cond_16
    move-object/from16 v0, v29

    iget v3, v0, Lcom/google/android/gms/internal/ads/doi;->a:I

    new-array v13, v3, [J

    .line 424
    move-object/from16 v0, v29

    iget v3, v0, Lcom/google/android/gms/internal/ads/doi;->a:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 425
    :goto_11
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/doi;->a()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 426
    move-object/from16 v0, v29

    iget v3, v0, Lcom/google/android/gms/internal/ads/doi;->b:I

    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/doi;->d:J

    aput-wide v4, v13, v3

    .line 427
    move-object/from16 v0, v29

    iget v3, v0, Lcom/google/android/gms/internal/ads/doi;->b:I

    move-object/from16 v0, v29

    iget v4, v0, Lcom/google/android/gms/internal/ads/doi;->c:I

    aput v4, v16, v3

    goto :goto_11

    .line 428
    :cond_17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/doh;->b()I

    move-result v17

    .line 429
    int-to-long v0, v11

    move-wide/from16 v18, v0

    .line 430
    const/16 v2, 0x2000

    div-int v20, v2, v17

    .line 431
    const/4 v3, 0x0

    .line 432
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v2, 0x0

    move v7, v3

    :goto_12
    if-ge v2, v4, :cond_18

    aget v3, v16, v2

    .line 433
    move/from16 v0, v20

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v3

    add-int/2addr v3, v7

    .line 434
    add-int/lit8 v2, v2, 0x1

    move v7, v3

    goto :goto_12

    .line 435
    :cond_18
    new-array v3, v7, [J

    .line 436
    new-array v4, v7, [I

    .line 437
    const/4 v5, 0x0

    .line 438
    new-array v6, v7, [J

    .line 439
    new-array v7, v7, [I

    .line 440
    const/4 v9, 0x0

    .line 441
    const/4 v8, 0x0

    .line 442
    const/4 v2, 0x0

    :goto_13
    move-object/from16 v0, v16

    array-length v10, v0

    if-ge v2, v10, :cond_1a

    .line 443
    aget v12, v16, v2

    .line 444
    aget-wide v10, v13, v2

    .line 445
    :goto_14
    if-lez v12, :cond_19

    .line 446
    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 447
    aput-wide v10, v3, v8

    .line 448
    mul-int v22, v17, v21

    aput v22, v4, v8

    .line 449
    aget v22, v4, v8

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 450
    int-to-long v0, v9

    move-wide/from16 v22, v0

    mul-long v22, v22, v18

    aput-wide v22, v6, v8

    .line 451
    const/16 v22, 0x1

    aput v22, v7, v8

    .line 452
    aget v22, v4, v8

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v10, v10, v22

    .line 453
    add-int v9, v9, v21

    .line 454
    sub-int v12, v12, v21

    .line 455
    add-int/lit8 v8, v8, 0x1

    .line 456
    goto :goto_14

    .line 457
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 458
    :cond_1a
    new-instance v2, Lcom/google/android/gms/internal/ads/don;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/don;-><init>([J[II[J[ILcom/google/android/gms/internal/ads/doo;)V

    .line 460
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/don;->a:[J

    .line 461
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/don;->b:[I

    .line 462
    iget v5, v2, Lcom/google/android/gms/internal/ads/don;->c:I

    .line 463
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/don;->d:[J

    .line 464
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/don;->e:[I

    goto/16 :goto_10

    .line 468
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dot;->b:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1d

    array-length v2, v6

    const/4 v8, 0x2

    if-lt v2, v8, :cond_1d

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->i:[J

    const/4 v8, 0x0

    aget-wide v16, v2, v8

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dot;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    .line 472
    const/4 v2, 0x0

    aget-wide v10, v6, v2

    cmp-long v2, v10, v16

    if-gtz v2, :cond_1d

    const/4 v2, 0x1

    aget-wide v10, v6, v2

    cmp-long v2, v16, v10

    if-gez v2, :cond_1d

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget-wide v10, v6, v2

    cmp-long v2, v10, v8

    if-gez v2, :cond_1d

    cmp-long v2, v8, v14

    if-gtz v2, :cond_1d

    .line 473
    sub-long/2addr v14, v8

    .line 474
    const/4 v2, 0x0

    aget-wide v8, v6, v2

    sub-long v8, v16, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->f:Lcom/google/android/gms/internal/ads/dlf;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dlf;->m:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v16

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->f:Lcom/google/android/gms/internal/ads/dlf;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dlf;->m:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    move-wide v8, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v8

    .line 476
    const-wide/16 v10, 0x0

    cmp-long v2, v16, v10

    if-nez v2, :cond_1c

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1d

    :cond_1c
    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v16, v10

    if-gtz v2, :cond_1d

    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1d

    .line 477
    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/gms/internal/ads/dnl;->a:I

    .line 478
    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lcom/google/android/gms/internal/ads/dnl;->b:I

    .line 479
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dsn;->a([JJJ)V

    .line 480
    new-instance v2, Lcom/google/android/gms/internal/ads/dov;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dov;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 481
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_1f

    .line 482
    const/4 v2, 0x0

    :goto_15
    array-length v8, v6

    if-ge v2, v8, :cond_1e

    .line 483
    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dot;->i:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 485
    :cond_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/dov;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dov;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 486
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dot;->b:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_20

    const/4 v2, 0x1

    .line 487
    :goto_16
    const/4 v11, 0x0

    .line 488
    const/4 v10, 0x0

    .line 489
    const/4 v9, 0x0

    .line 490
    const/4 v8, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    :goto_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    array-length v8, v8

    if-ge v14, v8, :cond_22

    .line 491
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dot;->i:[J

    aget-wide v18, v8, v14

    .line 492
    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_30

    .line 493
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    aget-wide v8, v8, v14

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dot;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v8

    .line 494
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/gms/internal/ads/dsn;->b([JJZZ)I

    move-result v12

    .line 495
    add-long v8, v8, v18

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v2, v10}, Lcom/google/android/gms/internal/ads/dsn;->b([JJZZ)I

    move-result v10

    .line 496
    sub-int v8, v10, v12

    add-int v11, v17, v8

    .line 497
    move/from16 v0, v16

    if-eq v0, v12, :cond_21

    const/4 v8, 0x1

    :goto_18
    or-int v9, v15, v8

    .line 499
    :goto_19
    add-int/lit8 v8, v14, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_17

    .line 486
    :cond_20
    const/4 v2, 0x0

    goto :goto_16

    .line 497
    :cond_21
    const/4 v8, 0x0

    goto :goto_18

    .line 500
    :cond_22
    move/from16 v0, v17

    move/from16 v1, v27

    if-eq v0, v1, :cond_25

    const/4 v8, 0x1

    :goto_1a
    or-int v24, v15, v8

    .line 501
    if-eqz v24, :cond_26

    move/from16 v0, v17

    new-array v8, v0, [J

    move-object/from16 v23, v8

    .line 502
    :goto_1b
    if-eqz v24, :cond_27

    move/from16 v0, v17

    new-array v8, v0, [I

    move-object/from16 v22, v8

    .line 503
    :goto_1c
    if-eqz v24, :cond_28

    const/4 v12, 0x0

    .line 504
    :goto_1d
    if-eqz v24, :cond_29

    move/from16 v0, v17

    new-array v5, v0, [I

    move-object/from16 v16, v5

    .line 505
    :goto_1e
    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 506
    const-wide/16 v10, 0x0

    .line 507
    const/4 v9, 0x0

    .line 508
    const/4 v8, 0x0

    move/from16 v17, v8

    move v14, v9

    move-wide/from16 v18, v10

    move v5, v12

    :goto_1f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    array-length v8, v8

    move/from16 v0, v17

    if-ge v0, v8, :cond_2b

    .line 509
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dot;->i:[J

    aget-wide v26, v8, v17

    .line 510
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dot;->h:[J

    aget-wide v8, v8, v17

    .line 511
    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_2f

    .line 512
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dot;->d:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    .line 513
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/gms/internal/ads/dsn;->b([JJZZ)I

    move-result v10

    .line 514
    const/4 v11, 0x0

    invoke-static {v6, v12, v13, v2, v11}, Lcom/google/android/gms/internal/ads/dsn;->b([JJZZ)I

    move-result v28

    .line 515
    if-eqz v24, :cond_23

    .line 516
    sub-int v11, v28, v10

    .line 517
    move-object/from16 v0, v23

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    move-object/from16 v0, v22

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    move-object/from16 v0, v16

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    move/from16 v21, v10

    move/from16 v20, v14

    .line 520
    :goto_20
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_2a

    .line 521
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/dot;->d:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v30

    .line 522
    aget-wide v10, v6, v21

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/dot;->c:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v10

    .line 523
    add-long v10, v10, v30

    aput-wide v10, v25, v20

    .line 524
    if-eqz v24, :cond_24

    aget v10, v22, v20

    if-le v10, v5, :cond_24

    .line 525
    aget v5, v4, v21

    .line 526
    :cond_24
    add-int/lit8 v20, v20, 0x1

    .line 527
    add-int/lit8 v10, v21, 0x1

    move/from16 v21, v10

    goto :goto_20

    .line 500
    :cond_25
    const/4 v8, 0x0

    goto/16 :goto_1a

    :cond_26
    move-object/from16 v23, v3

    .line 501
    goto/16 :goto_1b

    :cond_27
    move-object/from16 v22, v4

    .line 502
    goto/16 :goto_1c

    :cond_28
    move v12, v5

    .line 503
    goto/16 :goto_1d

    :cond_29
    move-object/from16 v16, v7

    .line 504
    goto/16 :goto_1e

    :cond_2a
    move/from16 v10, v20

    .line 528
    :goto_21
    add-long v12, v18, v8

    .line 529
    add-int/lit8 v8, v17, 0x1

    move/from16 v17, v8

    move v14, v10

    move-wide/from16 v18, v12

    goto/16 :goto_1f

    .line 530
    :cond_2b
    const/4 v3, 0x0

    .line 531
    const/4 v2, 0x0

    :goto_22
    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v2, v4, :cond_2d

    if-nez v3, :cond_2d

    .line 532
    aget v4, v16, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_23
    or-int/2addr v3, v4

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 532
    :cond_2c
    const/4 v4, 0x0

    goto :goto_23

    .line 534
    :cond_2d
    if-nez v3, :cond_2e

    .line 535
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_2e
    new-instance v2, Lcom/google/android/gms/internal/ads/dov;

    move-object/from16 v3, v23

    move-object/from16 v4, v22

    move-object/from16 v6, v25

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dov;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2f
    move v10, v14

    goto :goto_21

    :cond_30
    move v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    goto/16 :goto_19

    :cond_31
    move v12, v7

    goto/16 :goto_c

    :cond_32
    move/from16 v20, v7

    goto/16 :goto_b

    :cond_33
    move v4, v7

    move v6, v8

    goto/16 :goto_9
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dog;Z)Lcom/google/android/gms/internal/ads/dpi;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x8

    .line 537
    if-eqz p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-object v0

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dog;->a:Lcom/google/android/gms/internal/ads/dsk;

    .line 540
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 541
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->b()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 542
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v2

    .line 543
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v3

    .line 544
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v4

    .line 545
    sget v5, Lcom/google/android/gms/internal/ads/doe;->ao:I

    if-ne v4, v5, :cond_5

    .line 546
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 547
    add-int/2addr v2, v3

    .line 548
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 549
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 550
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v3

    .line 551
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v4

    .line 552
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->l()I

    move-result v5

    .line 553
    sget v6, Lcom/google/android/gms/internal/ads/doe;->ap:I

    if-ne v5, v6, :cond_4

    .line 554
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 555
    add-int v2, v3, v4

    .line 556
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 557
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 558
    :cond_2
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 559
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/doq;->a(Lcom/google/android/gms/internal/ads/dsk;)Lcom/google/android/gms/internal/ads/dpi$a;

    move-result-object v4

    .line 560
    if-eqz v4, :cond_2

    .line 561
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 563
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/dpi;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/dpi;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 565
    :cond_4
    add-int/lit8 v3, v4, -0x8

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    goto :goto_2

    .line 569
    :cond_5
    add-int/lit8 v2, v3, -0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    goto :goto_1
.end method
