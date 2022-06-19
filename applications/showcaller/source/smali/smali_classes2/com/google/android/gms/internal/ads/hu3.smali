.class final Lcom/google/android/gms/internal/ads/hu3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wa;->X(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/hu3;->a:[B

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/xt3;Lcom/google/android/gms/internal/ads/kr3;JLcom/google/android/gms/internal/ads/zzn;ZZLcom/google/android/gms/internal/ads/nu2;)Ljava/util/List;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/xt3;",
            "Lcom/google/android/gms/internal/ads/kr3;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzn;",
            "ZZ",
            "Lcom/google/android/gms/internal/ads/nu2<",
            "Lcom/google/android/gms/internal/ads/xu3;",
            "Lcom/google/android/gms/internal/ads/xu3;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/av3;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    .line 1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xt3;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_93

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xt3;->d:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/xt3;

    .line 4
    iget v2, v11, Lcom/google/android/gms/internal/ads/zt3;->a:I

    const v3, 0x7472616b

    if-eq v2, v3, :cond_0

    move-object v0, v13

    move/from16 v31, v15

    goto/16 :goto_68

    :cond_0
    const v2, 0x6d766864

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646961

    .line 7
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v4

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/hu3;->e(Lcom/google/android/gms/internal/ads/la;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/hu3;->f(I)I

    move-result v9

    const-string v7, "AtomParsers"

    const/4 v5, 0x4

    move/from16 v31, v15

    const/4 v6, -0x1

    if-ne v9, v6, :cond_1

    move-object/from16 v0, p7

    move-object/from16 v45, v7

    move-object v2, v11

    move-object/from16 v32, v13

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_3c

    :cond_1
    const v15, 0x746b6864

    .line 12
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v15

    .line 13
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v14, 0x8

    .line 15
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zt3;->a(I)I

    move-result v18

    const/16 v14, 0x10

    if-nez v18, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    .line 17
    :goto_2
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 18
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v4

    .line 19
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v21

    if-nez v18, :cond_3

    const/4 v8, 0x4

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    :goto_3
    const/4 v10, 0x0

    :goto_4
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v8, :cond_7

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v26

    add-int v27, v21, v10

    .line 20
    aget-byte v5, v26, v27

    if-eq v5, v6, :cond_6

    if-nez v18, :cond_4

    .line 21
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v26

    goto :goto_5

    :cond_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->d()J

    move-result-wide v26

    :goto_5
    const-wide/16 v29, 0x0

    cmp-long v5, v26, v29

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    move-object v8, v7

    move-wide/from16 v6, v26

    goto :goto_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x4

    goto :goto_4

    .line 22
    :cond_7
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :goto_6
    move-object v8, v7

    move-wide/from16 v6, v24

    .line 23
    :goto_7
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 24
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v5

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v10

    const/4 v14, 0x4

    .line 26
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 27
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v14

    .line 28
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v15

    const/high16 v0, 0x10000

    move-object/from16 v26, v8

    const/high16 v8, -0x10000

    if-nez v5, :cond_b

    if-ne v10, v0, :cond_a

    if-ne v14, v8, :cond_9

    if-nez v15, :cond_8

    const/16 v0, 0x5a

    goto :goto_a

    :cond_8
    const/4 v5, 0x0

    const/high16 v10, 0x10000

    const/high16 v14, -0x10000

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    const/high16 v10, 0x10000

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :cond_b
    :goto_8
    if-nez v5, :cond_f

    if-ne v10, v8, :cond_e

    if-ne v14, v0, :cond_c

    if-nez v15, :cond_d

    const/16 v0, 0x10e

    goto :goto_a

    :cond_c
    move v0, v14

    :cond_d
    const/4 v5, 0x0

    const/high16 v10, -0x10000

    goto :goto_9

    :cond_e
    move v0, v14

    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    move v0, v14

    :goto_9
    if-ne v5, v8, :cond_10

    if-nez v10, :cond_10

    if-nez v0, :cond_10

    if-ne v15, v8, :cond_10

    const/16 v0, 0xb4

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    new-instance v14, Lcom/google/android/gms/internal/ads/gu3;

    .line 29
    invoke-direct {v14, v4, v6, v7, v0}, Lcom/google/android/gms/internal/ads/gu3;-><init>(IJI)V

    cmp-long v0, p2, v24

    if-nez v0, :cond_11

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/gu3;->b(Lcom/google/android/gms/internal/ads/gu3;)J

    move-result-wide v4

    move-wide/from16 v32, v4

    goto :goto_b

    :cond_11
    move-wide/from16 v32, p2

    :goto_b
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v2, 0x8

    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zt3;->a(I)I

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x8

    goto :goto_c

    :cond_12
    const/16 v2, 0x10

    .line 32
    :goto_c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v29

    cmp-long v0, v32, v24

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    const-wide/32 v34, 0xf4240

    move-wide/from16 v36, v29

    .line 34
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v4

    move-wide/from16 v24, v4

    :goto_d
    const v0, 0x6d696e66

    .line 35
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7374626c

    .line 37
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v2

    .line 38
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x6d646864

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v3

    .line 40
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v4, 0x8

    .line 42
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zt3;->a(I)I

    move-result v4

    if-nez v4, :cond_14

    const/16 v5, 0x8

    goto :goto_e

    :cond_14
    const/16 v5, 0x10

    .line 44
    :goto_e
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v5

    if-nez v4, :cond_15

    const/4 v4, 0x4

    goto :goto_f

    :cond_15
    const/16 v4, 0x8

    .line 46
    :goto_f
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    .line 48
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v7, v3, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v3, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const v3, 0x73747364

    .line 50
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v2

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/gu3;->a(Lcom/google/android/gms/internal/ads/gu3;)I

    move-result v7

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/gu3;->c(Lcom/google/android/gms/internal/ads/gu3;)I

    move-result v6

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/16 v4, 0xc

    .line 53
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    new-instance v2, Lcom/google/android/gms/internal/ads/du3;

    .line 55
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/du3;-><init>(I)V

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_4f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v15

    move-object/from16 v32, v13

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v13

    if-lez v13, :cond_16

    move/from16 v33, v3

    const/4 v4, 0x1

    goto :goto_11

    :cond_16
    move/from16 v33, v3

    const/4 v4, 0x0

    :goto_11
    const-string v3, "childAtomSize must be positive"

    .line 57
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    const v4, 0x61766331

    move/from16 v34, v6

    const v6, 0x656e6376

    if-eq v3, v4, :cond_22

    const v4, 0x61766333

    if-eq v3, v4, :cond_22

    if-eq v3, v6, :cond_22

    const v4, 0x6d317620

    if-eq v3, v4, :cond_22

    const v4, 0x6d703476

    if-eq v3, v4, :cond_22

    const v4, 0x68766331

    if-eq v3, v4, :cond_22

    const v4, 0x68657631

    if-eq v3, v4, :cond_22

    const v4, 0x73323633

    if-eq v3, v4, :cond_22

    const v4, 0x48323633

    if-eq v3, v4, :cond_22

    const v4, 0x76703038

    if-eq v3, v4, :cond_22

    const v4, 0x76703039

    if-eq v3, v4, :cond_22

    const v4, 0x61763031

    if-eq v3, v4, :cond_22

    const v4, 0x64766176

    if-eq v3, v4, :cond_22

    const v4, 0x64766131

    if-eq v3, v4, :cond_22

    const v4, 0x64766865

    if-eq v3, v4, :cond_22

    const v4, 0x64766831

    if-ne v3, v4, :cond_17

    goto/16 :goto_18

    :cond_17
    const v4, 0x6d703461

    if-eq v3, v4, :cond_21

    const v4, 0x656e6361

    if-eq v3, v4, :cond_21

    const v4, 0x61632d33

    if-eq v3, v4, :cond_21

    const v4, 0x65632d33

    if-eq v3, v4, :cond_21

    const v4, 0x61632d34

    if-eq v3, v4, :cond_21

    const v4, 0x64747363

    if-eq v3, v4, :cond_21

    const v4, 0x64747365

    if-eq v3, v4, :cond_21

    const v4, 0x64747368

    if-eq v3, v4, :cond_21

    const v4, 0x6474736c

    if-eq v3, v4, :cond_21

    const v4, 0x64747378

    if-eq v3, v4, :cond_21

    const v4, 0x73616d72

    if-eq v3, v4, :cond_21

    const v4, 0x73617762

    if-eq v3, v4, :cond_21

    const v4, 0x6c70636d

    if-eq v3, v4, :cond_21

    const v4, 0x736f7774

    if-eq v3, v4, :cond_21

    const v4, 0x74776f73

    if-eq v3, v4, :cond_21

    const v4, 0x2e6d7032

    if-eq v3, v4, :cond_21

    const v4, 0x2e6d7033

    if-eq v3, v4, :cond_21

    const v4, 0x6d686131

    if-eq v3, v4, :cond_21

    const v4, 0x6d686d31

    if-eq v3, v4, :cond_21

    const v4, 0x616c6163

    if-eq v3, v4, :cond_21

    const v4, 0x616c6177

    if-eq v3, v4, :cond_21

    const v4, 0x756c6177

    if-eq v3, v4, :cond_21

    const v4, 0x4f707573

    if-eq v3, v4, :cond_21

    const v4, 0x664c6143

    if-ne v3, v4, :cond_18

    goto/16 :goto_17

    :cond_18
    const v4, 0x54544d4c

    if-eq v3, v4, :cond_1c

    const v4, 0x74783367

    if-eq v3, v4, :cond_1c

    const v4, 0x77767474

    if-eq v3, v4, :cond_1c

    const v4, 0x73747070

    if-eq v3, v4, :cond_1c

    const v4, 0x63363038

    if-ne v3, v4, :cond_19

    goto :goto_13

    :cond_19
    const v4, 0x6d657474

    if-ne v3, v4, :cond_1a

    add-int/lit8 v3, v15, 0x10

    .line 59
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/la;->g(C)Ljava/lang/String;

    .line 61
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/la;->g(C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/ads/s4;

    .line 62
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/s4;->e(I)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    goto :goto_12

    :cond_1a
    const v4, 0x63616d6d

    if-ne v3, v4, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/ads/s4;

    .line 63
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 64
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/s4;->e(I)Lcom/google/android/gms/internal/ads/s4;

    const-string v4, "application/x-camera-motion"

    .line 65
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    :cond_1b
    :goto_12
    move/from16 v17, v0

    move-object/from16 v20, v5

    move v1, v7

    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move/from16 v23, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move/from16 v3, v34

    move-object v9, v2

    goto/16 :goto_16

    :cond_1c
    :goto_13
    add-int/lit8 v4, v15, 0x10

    .line 67
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const v4, 0x54544d4c

    const-wide v35, 0x7fffffffffffffffL

    if-ne v3, v4, :cond_1d

    const-string v3, "application/ttml+xml"

    :goto_14
    move-object/from16 v37, v10

    const/4 v4, 0x0

    move-wide/from16 v46, v35

    move/from16 v36, v9

    move-wide/from16 v9, v46

    goto :goto_15

    :cond_1d
    const v4, 0x74783367

    if-ne v3, v4, :cond_1e

    add-int/lit8 v3, v13, -0x10

    .line 68
    new-array v4, v3, [B

    const/4 v6, 0x0

    .line 69
    invoke-virtual {v8, v4, v6, v3}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    const-string v4, "application/x-quicktime-tx3g"

    move-object/from16 v37, v10

    move-object/from16 v46, v4

    move-object v4, v3

    move-object/from16 v3, v46

    move-wide/from16 v47, v35

    move/from16 v36, v9

    move-wide/from16 v9, v47

    goto :goto_15

    :cond_1e
    const v4, 0x77767474

    if-ne v3, v4, :cond_1f

    const-string v3, "application/x-mp4-vtt"

    goto :goto_14

    :cond_1f
    const v4, 0x73747070

    if-ne v3, v4, :cond_20

    const-string v3, "application/ttml+xml"

    move/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    goto :goto_15

    :cond_20
    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/du3;->d:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_14

    .line 71
    :goto_15
    new-instance v6, Lcom/google/android/gms/internal/ads/s4;

    .line 72
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 73
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/s4;->e(I)Lcom/google/android/gms/internal/ads/s4;

    .line 74
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 75
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 76
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/ads/s4;->r(J)Lcom/google/android/gms/internal/ads/s4;

    .line 77
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    move/from16 v17, v0

    move-object v9, v2

    move-object/from16 v20, v5

    move v1, v7

    move-object/from16 v40, v11

    move/from16 v23, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move/from16 v3, v34

    move/from16 v22, v36

    move-object/from16 v39, v37

    :goto_16
    move-object v14, v8

    goto/16 :goto_36

    :cond_21
    :goto_17
    move/from16 v36, v9

    move-object/from16 v37, v10

    move-object v10, v2

    move-object v2, v8

    const/16 v6, 0xc

    const/4 v9, 0x2

    move v4, v15

    move-object/from16 v20, v5

    const/4 v1, 0x4

    move v5, v13

    move/from16 v1, v34

    move v6, v7

    move-object/from16 v18, v14

    move v14, v7

    move-object/from16 v46, v26

    move/from16 v26, v1

    move-object/from16 v1, v46

    move-object/from16 v7, v20

    move/from16 v27, v14

    move-object v14, v8

    move/from16 v8, p6

    move/from16 v22, v36

    move-object/from16 v36, v1

    const/4 v1, 0x2

    move-object/from16 v9, p4

    move-object/from16 v17, v10

    move-object/from16 v39, v37

    move-object/from16 v40, v11

    move v11, v0

    .line 79
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/hu3;->g(Lcom/google/android/gms/internal/ads/la;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/du3;I)V

    move/from16 v23, v13

    move-object/from16 v9, v17

    move/from16 v3, v26

    move/from16 v1, v27

    move-object/from16 v45, v36

    move/from16 v17, v0

    goto/16 :goto_36

    :cond_22
    :goto_18
    move-object/from16 v17, v2

    move-object/from16 v20, v5

    move/from16 v27, v7

    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v18, v14

    move-object/from16 v36, v26

    move/from16 v26, v34

    const/4 v1, 0x2

    move-object v14, v8

    add-int/lit8 v2, v15, 0x10

    .line 80
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/16 v2, 0x10

    .line 81
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 82
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v4

    .line 83
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v5

    const/16 v7, 0x32

    .line 84
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v7

    if-ne v3, v6, :cond_25

    .line 85
    invoke-static {v14, v15, v13}, Lcom/google/android/gms/internal/ads/hu3;->i(Lcom/google/android/gms/internal/ads/la;II)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 86
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v12, :cond_23

    move-object/from16 v9, v17

    const/4 v8, 0x0

    goto :goto_19

    .line 87
    :cond_23
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/yu3;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/yu3;->b:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v8

    move-object/from16 v9, v17

    .line 88
    :goto_19
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/du3;->a:[Lcom/google/android/gms/internal/ads/yu3;

    .line 89
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/yu3;

    aput-object v3, v10, v0

    move v3, v6

    goto :goto_1a

    :cond_24
    move-object/from16 v9, v17

    move-object v8, v12

    const v3, 0x656e6376

    .line 90
    :goto_1a
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_1b

    :cond_25
    move-object/from16 v9, v17

    move-object v8, v12

    :goto_1b
    const v6, 0x6d317620

    if-ne v3, v6, :cond_26

    const-string v6, "video/mpeg"

    move-object/from16 v46, v6

    move v6, v3

    move-object/from16 v3, v46

    goto :goto_1c

    :cond_26
    const v6, 0x48323633

    if-ne v3, v6, :cond_27

    const-string v3, "video/3gpp"

    goto :goto_1c

    :cond_27
    move v6, v3

    const/4 v3, 0x0

    :goto_1c
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v7

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/high16 v44, 0x3f800000    # 1.0f

    move-object v7, v3

    const/4 v3, 0x0

    :goto_1d
    sub-int v1, v11, v15

    if-ge v1, v13, :cond_4d

    .line 91
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v1

    .line 92
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v17

    sub-int v12, v17, v15

    if-ne v12, v13, :cond_28

    goto/16 :goto_35

    :cond_28
    const/4 v12, 0x0

    goto :goto_1e

    :cond_29
    move/from16 v12, v17

    :goto_1e
    if-lez v12, :cond_2a

    move/from16 v17, v0

    move/from16 v23, v13

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2a
    move/from16 v17, v0

    move/from16 v23, v13

    const/4 v0, 0x0

    :goto_1f
    const-string v13, "childAtomSize must be positive"

    .line 93
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 94
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v0

    const v13, 0x61766343

    if-ne v0, v13, :cond_2d

    if-nez v7, :cond_2b

    const/4 v0, 0x1

    goto :goto_20

    :cond_2b
    const/4 v0, 0x0

    :goto_20
    const/4 v2, 0x0

    .line 95
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x8

    .line 96
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 97
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/eq3;->a(Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/eq3;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eq3;->a:Ljava/util/List;

    iget v2, v0, Lcom/google/android/gms/internal/ads/eq3;->b:I

    iput v2, v9, Lcom/google/android/gms/internal/ads/du3;->c:I

    if-nez v3, :cond_2c

    iget v2, v0, Lcom/google/android/gms/internal/ads/eq3;->e:F

    move/from16 v44, v2

    :cond_2c
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eq3;->f:Ljava/lang/String;

    const-string v2, "video/avc"

    goto :goto_22

    :cond_2d
    const v13, 0x68766343

    if-ne v0, v13, :cond_2f

    if-nez v7, :cond_2e

    const/4 v0, 0x1

    goto :goto_21

    :cond_2e
    const/4 v0, 0x0

    :goto_21
    const/4 v2, 0x0

    .line 98
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x8

    .line 99
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 100
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/lr3;->a(Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/lr3;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lr3;->a:Ljava/util/List;

    iget v2, v0, Lcom/google/android/gms/internal/ads/lr3;->b:I

    iput v2, v9, Lcom/google/android/gms/internal/ads/du3;->c:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lr3;->c:Ljava/lang/String;

    const-string v2, "video/hevc"

    :goto_22
    move-object/from16 v41, v0

    move-object v7, v2

    move-object/from16 v45, v36

    move-object v2, v1

    :goto_23
    move/from16 v36, v6

    goto/16 :goto_34

    :cond_2f
    const v13, 0x64766343

    if-eq v0, v13, :cond_4b

    const v13, 0x64767643

    if-ne v0, v13, :cond_30

    goto/16 :goto_32

    :cond_30
    const v13, 0x76706343

    if-ne v0, v13, :cond_33

    if-nez v7, :cond_31

    const/4 v0, 0x1

    goto :goto_24

    :cond_31
    const/4 v0, 0x0

    :goto_24
    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    const v0, 0x76703038

    if-ne v6, v0, :cond_32

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_26

    :cond_32
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_26

    :cond_33
    const v13, 0x61763143

    if-ne v0, v13, :cond_35

    if-nez v7, :cond_34

    const/4 v0, 0x1

    goto :goto_25

    :cond_34
    const/4 v0, 0x0

    :goto_25
    const/4 v13, 0x0

    .line 102
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    const-string v0, "video/av01"

    :goto_26
    move-object v7, v0

    :goto_27
    move-object/from16 v45, v36

    goto :goto_23

    :cond_35
    const v13, 0x64323633

    if-ne v0, v13, :cond_37

    if-nez v7, :cond_36

    const/4 v0, 0x1

    goto :goto_28

    :cond_36
    const/4 v0, 0x0

    :goto_28
    const/4 v13, 0x0

    .line 103
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    const-string v0, "video/3gpp"

    goto :goto_26

    :cond_37
    const v13, 0x65736473

    if-ne v0, v13, :cond_3a

    if-nez v7, :cond_38

    const/4 v0, 0x1

    goto :goto_29

    :cond_38
    const/4 v0, 0x0

    :goto_29
    const/4 v7, 0x0

    .line 104
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 105
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/hu3;->h(Lcom/google/android/gms/internal/ads/la;I)Landroid/util/Pair;

    move-result-object v0

    .line 106
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 107
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_39

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    :cond_39
    move-object v7, v1

    goto :goto_27

    :cond_3a
    const v13, 0x70617370

    if-ne v0, v13, :cond_3b

    add-int/lit8 v1, v1, 0x8

    .line 109
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 110
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v0

    int-to-float v0, v0

    .line 111
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move/from16 v44, v0

    move-object/from16 v45, v36

    const/4 v3, 0x1

    goto/16 :goto_23

    :cond_3b
    const v13, 0x73763364

    if-ne v0, v13, :cond_3e

    add-int/lit8 v0, v1, 0x8

    :goto_2a
    sub-int v13, v0, v1

    if-ge v13, v12, :cond_3d

    .line 112
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 113
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v13

    move/from16 v28, v1

    .line 114
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v1

    move/from16 v37, v3

    const v3, 0x70726f6a

    if-ne v1, v3, :cond_3c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v1

    add-int/2addr v13, v0

    .line 115
    invoke-static {v1, v0, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_2b

    :cond_3c
    add-int/2addr v0, v13

    move/from16 v1, v28

    move/from16 v3, v37

    goto :goto_2a

    :cond_3d
    move/from16 v37, v3

    const/4 v0, 0x0

    :goto_2b
    move-object/from16 v42, v0

    goto :goto_2c

    :cond_3e
    move/from16 v37, v3

    const v1, 0x73743364

    if-ne v0, v1, :cond_44

    .line 116
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    const/4 v1, 0x3

    .line 117
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    if-nez v0, :cond_43

    .line 118
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    if-eqz v0, :cond_42

    const/4 v3, 0x1

    if-eq v0, v3, :cond_41

    const/4 v3, 0x2

    if-eq v0, v3, :cond_40

    if-eq v0, v1, :cond_3f

    goto :goto_2c

    :cond_3f
    const/4 v10, 0x3

    goto :goto_2c

    :cond_40
    const/4 v10, 0x2

    goto :goto_2c

    :cond_41
    const/4 v10, 0x1

    goto :goto_2c

    :cond_42
    const/4 v10, 0x0

    :cond_43
    :goto_2c
    move-object/from16 v45, v36

    move/from16 v3, v37

    goto/16 :goto_23

    :cond_44
    const/4 v1, 0x3

    const v3, 0x636f6c72

    if-ne v0, v3, :cond_4a

    .line 119
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v0

    const v3, 0x6e636c78

    if-eq v0, v3, :cond_47

    const v3, 0x6e636c63

    if-ne v0, v3, :cond_45

    goto :goto_2e

    .line 120
    :cond_45
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zt3;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unsupported color type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_46

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 121
    :cond_46
    new-instance v0, Ljava/lang/String;

    .line 122
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2d
    move-object/from16 v3, v36

    .line 123
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v45, v3

    goto :goto_31

    :cond_47
    :goto_2e
    move-object/from16 v3, v36

    .line 124
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v13

    .line 125
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v16

    const/4 v1, 0x2

    .line 126
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    const v1, 0x6e636c78

    if-ne v0, v1, :cond_48

    .line 127
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_2f

    :cond_48
    const/4 v0, 0x0

    :goto_2f
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/gm3;->a(I)I

    move-result v1

    const/4 v13, 0x1

    if-eq v13, v0, :cond_49

    const/4 v0, 0x2

    goto :goto_30

    :cond_49
    const/4 v0, 0x1

    :goto_30
    new-instance v13, Lcom/google/android/gms/internal/ads/gm3;

    move/from16 v36, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/gm3;->b(I)I

    move-result v6

    move-object/from16 v45, v3

    const/4 v3, 0x0

    .line 128
    invoke-direct {v13, v1, v0, v6, v3}, Lcom/google/android/gms/internal/ads/gm3;-><init>(III[B)V

    move-object/from16 v43, v13

    goto :goto_33

    :cond_4a
    move-object/from16 v45, v36

    :goto_31
    move/from16 v36, v6

    goto :goto_33

    :cond_4b
    :goto_32
    move/from16 v37, v3

    move-object/from16 v45, v36

    move/from16 v36, v6

    .line 129
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/rq3;->a(Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/rq3;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rq3;->a:Ljava/lang/String;

    const-string v7, "video/dolby-vision"

    move-object/from16 v41, v0

    :cond_4c
    :goto_33
    move/from16 v3, v37

    :goto_34
    add-int/2addr v11, v12

    move-object/from16 v12, p4

    move/from16 v0, v17

    move/from16 v13, v23

    move/from16 v6, v36

    move-object/from16 v36, v45

    goto/16 :goto_1d

    :cond_4d
    :goto_35
    move/from16 v17, v0

    move/from16 v23, v13

    move-object/from16 v45, v36

    if-eqz v7, :cond_4e

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    .line 131
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    move/from16 v1, v27

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->e(I)Lcom/google/android/gms/internal/ads/s4;

    .line 133
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    move-object/from16 v3, v41

    .line 134
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/s4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 135
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/s4;->s(I)Lcom/google/android/gms/internal/ads/s4;

    .line 136
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/s4;->t(I)Lcom/google/android/gms/internal/ads/s4;

    move/from16 v3, v44

    .line 137
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/s4;->w(F)Lcom/google/android/gms/internal/ads/s4;

    move/from16 v3, v26

    .line 138
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/s4;->v(I)Lcom/google/android/gms/internal/ads/s4;

    move-object/from16 v4, v42

    .line 139
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/s4;->x([B)Lcom/google/android/gms/internal/ads/s4;

    .line 140
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/s4;->y(I)Lcom/google/android/gms/internal/ads/s4;

    .line 141
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 142
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/s4;->q(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/s4;

    move-object/from16 v2, v43

    .line 143
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/s4;->z(Lcom/google/android/gms/internal/ads/gm3;)Lcom/google/android/gms/internal/ads/s4;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    goto :goto_36

    :cond_4e
    move/from16 v3, v26

    move/from16 v1, v27

    :goto_36
    add-int v15, v15, v23

    .line 145
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    add-int/lit8 v0, v17, 0x1

    move-object/from16 v12, p4

    move v7, v1

    move v6, v3

    move-object v2, v9

    move-object v8, v14

    move-object/from16 v14, v18

    move-object/from16 v5, v20

    move/from16 v9, v22

    move-object/from16 v13, v32

    move/from16 v3, v33

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    move-object/from16 v26, v45

    const/16 v4, 0xc

    const/4 v15, 0x3

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_4f
    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v32, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move-object v9, v2

    const v0, 0x65647473

    move-object/from16 v2, v40

    .line 146
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v0

    if-eqz v0, :cond_55

    const v1, 0x656c7374

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v0

    if-nez v0, :cond_50

    const/4 v8, 0x0

    goto :goto_3a

    .line 148
    :cond_50
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v1, 0x8

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zt3;->a(I)I

    move-result v1

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v3, :cond_54

    const/4 v7, 0x1

    if-ne v1, v7, :cond_51

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->d()J

    move-result-wide v10

    goto :goto_38

    :cond_51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->B()J

    move-result-wide v10

    :goto_38
    aput-wide v10, v4, v6

    if-ne v1, v7, :cond_52

    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->F()J

    move-result-wide v10

    goto :goto_39

    :cond_52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    int-to-long v10, v8

    :goto_39
    aput-wide v10, v5, v6

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->y()S

    move-result v8

    if-ne v8, v7, :cond_53

    const/4 v7, 0x2

    .line 155
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 156
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 157
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_54
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    :goto_3a
    if-eqz v8, :cond_55

    .line 159
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    .line 160
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    goto :goto_3b

    :cond_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3b
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    if-nez v3, :cond_56

    move-object/from16 v0, p7

    goto/16 :goto_1

    :cond_56
    new-instance v8, Lcom/google/android/gms/internal/ads/xu3;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/gu3;->a(Lcom/google/android/gms/internal/ads/gu3;)I

    move-result v17

    move-object/from16 v3, v39

    .line 161
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 162
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    iget v4, v9, Lcom/google/android/gms/internal/ads/du3;->d:I

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/du3;->a:[Lcom/google/android/gms/internal/ads/yu3;

    iget v6, v9, Lcom/google/android/gms/internal/ads/du3;->c:I

    move-object/from16 v16, v8

    move/from16 v18, v22

    move-wide/from16 v21, v29

    move-wide/from16 v23, v24

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/ads/xu3;-><init>(IIJJJLcom/google/android/gms/internal/ads/u4;I[Lcom/google/android/gms/internal/ads/yu3;I[J[J)V

    move-object/from16 v0, p7

    .line 163
    :goto_3c
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/nu2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/xu3;

    if-eqz v4, :cond_92

    const v1, 0x6d646961

    .line 164
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v1

    .line 165
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x6d696e66

    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v1

    .line 167
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7374626c

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xt3;->f(I)Lcom/google/android/gms/internal/ads/xt3;

    move-result-object v1

    .line 169
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7374737a

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v2

    if-eqz v2, :cond_57

    new-instance v3, Lcom/google/android/gms/internal/ads/eu3;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    .line 171
    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/internal/ads/eu3;-><init>(Lcom/google/android/gms/internal/ads/yt3;Lcom/google/android/gms/internal/ads/u4;)V

    goto :goto_3d

    :cond_57
    const v2, 0x73747a32

    .line 172
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 173
    new-instance v3, Lcom/google/android/gms/internal/ads/fu3;

    .line 174
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/fu3;-><init>(Lcom/google/android/gms/internal/ads/yt3;)V

    .line 175
    :goto_3d
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bu3;->zza()I

    move-result v2

    if-nez v2, :cond_58

    new-instance v1, Lcom/google/android/gms/internal/ads/av3;

    const/4 v2, 0x0

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v1

    .line 176
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/av3;-><init>(Lcom/google/android/gms/internal/ads/xu3;[J[II[J[IJ)V

    :goto_3e
    move-object/from16 v0, v32

    goto/16 :goto_67

    :cond_58
    const v5, 0x7374636f

    .line 177
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v5

    if-nez v5, :cond_59

    const v5, 0x636f3634

    .line 178
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v5

    .line 179
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_3f

    :cond_59
    move-object v6, v5

    const/4 v5, 0x0

    .line 180
    :goto_3f
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const v7, 0x73747363

    .line 181
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v7

    .line 182
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const v8, 0x73747473

    .line 184
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v8

    .line 185
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const v9, 0x73747373

    .line 187
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v9

    if-eqz v9, :cond_5a

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    goto :goto_40

    :cond_5a
    const/4 v9, 0x0

    :goto_40
    const v10, 0x63747473

    .line 188
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    goto :goto_41

    :cond_5b
    const/4 v1, 0x0

    :goto_41
    new-instance v10, Lcom/google/android/gms/internal/ads/au3;

    .line 189
    invoke-direct {v10, v7, v6, v5}, Lcom/google/android/gms/internal/ads/au3;-><init>(Lcom/google/android/gms/internal/ads/la;Lcom/google/android/gms/internal/ads/la;Z)V

    const/16 v5, 0xc

    .line 190
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 191
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    .line 192
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v7

    .line 193
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v11

    if-eqz v1, :cond_5c

    .line 194
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 195
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v12

    goto :goto_42

    :cond_5c
    const/4 v12, 0x0

    :goto_42
    if-eqz v9, :cond_5e

    .line 196
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 197
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v5

    if-lez v5, :cond_5d

    .line 198
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v13

    const/4 v14, -0x1

    add-int/2addr v13, v14

    goto :goto_44

    :cond_5d
    const/4 v14, -0x1

    const/4 v9, 0x0

    goto :goto_43

    :cond_5e
    const/4 v14, -0x1

    const/4 v5, 0x0

    :goto_43
    const/4 v13, -0x1

    :goto_44
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bu3;->b()I

    move-result v15

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    .line 199
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    if-eq v15, v14, :cond_65

    const-string v14, "audio/raw"

    .line 200
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5f

    const-string v14, "audio/g711-mlaw"

    .line 201
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5f

    const-string v14, "audio/g711-alaw"

    .line 202
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_5f
    if-nez v6, :cond_65

    if-nez v12, :cond_64

    if-nez v5, :cond_64

    iget v0, v10, Lcom/google/android/gms/internal/ads/au3;->a:I

    new-array v1, v0, [J

    new-array v3, v0, [I

    .line 203
    :goto_45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/au3;->a()Z

    move-result v5

    if-eqz v5, :cond_60

    iget v5, v10, Lcom/google/android/gms/internal/ads/au3;->b:I

    iget-wide v6, v10, Lcom/google/android/gms/internal/ads/au3;->d:J

    .line 204
    aput-wide v6, v1, v5

    iget v6, v10, Lcom/google/android/gms/internal/ads/au3;->c:I

    .line 205
    aput v6, v3, v5

    goto :goto_45

    :cond_60
    int-to-long v5, v11

    const/16 v7, 0x2000

    .line 206
    div-int/2addr v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_46
    if-ge v8, v0, :cond_61

    .line 207
    aget v10, v3, v8

    .line 208
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/wa;->b0(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 209
    :cond_61
    new-array v8, v9, [J

    .line 210
    new-array v10, v9, [I

    .line 211
    new-array v11, v9, [J

    .line 212
    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_47
    if-ge v12, v0, :cond_63

    .line 213
    aget v17, v3, v12

    .line 214
    aget-wide v18, v1, v12

    move/from16 v46, v17

    move/from16 v17, v0

    move/from16 v0, v46

    :goto_48
    if-lez v0, :cond_62

    .line 215
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 216
    aput-wide v18, v8, v16

    move-object/from16 v21, v1

    mul-int v1, v15, v20

    .line 217
    aput v1, v10, v16

    .line 218
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v1, v7

    move-object/from16 v22, v8

    int-to-long v7, v13

    mul-long v7, v7, v5

    .line 219
    aput-wide v7, v11, v16

    const/4 v7, 0x1

    .line 220
    aput v7, v9, v16

    .line 221
    aget v7, v10, v16

    int-to-long v7, v7

    add-long v18, v18, v7

    add-int v13, v13, v20

    sub-int v0, v0, v20

    add-int/lit8 v16, v16, 0x1

    move v7, v1

    move-object/from16 v1, v21

    move-object/from16 v8, v22

    goto :goto_48

    :cond_62
    move-object/from16 v21, v1

    move v1, v7

    move-object/from16 v22, v8

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v21

    goto :goto_47

    :cond_63
    move-object/from16 v22, v8

    int-to-long v0, v13

    mul-long v5, v5, v0

    move-wide v0, v5

    move-object v12, v9

    move-object v15, v11

    move-object/from16 v9, v22

    move-object v11, v4

    goto/16 :goto_57

    :cond_64
    const/4 v6, 0x0

    .line 222
    :cond_65
    new-array v0, v2, [J

    new-array v14, v2, [I

    new-array v15, v2, [J

    move/from16 v16, v5

    new-array v5, v2, [I

    move-object/from16 v19, v4

    move/from16 v17, v7

    move v4, v11

    move/from16 v20, v12

    move v12, v13

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move v13, v6

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v2, :cond_71

    const/16 v26, 0x1

    :goto_4a
    if-nez v18, :cond_67

    .line 223
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/au3;->a()Z

    move-result v26

    if-eqz v26, :cond_66

    move/from16 v27, v11

    move/from16 v28, v12

    iget-wide v11, v10, Lcom/google/android/gms/internal/ads/au3;->d:J

    move/from16 v29, v2

    iget v2, v10, Lcom/google/android/gms/internal/ads/au3;->c:I

    move/from16 v18, v2

    move-wide/from16 v22, v11

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v2, v29

    goto :goto_4a

    :cond_66
    move/from16 v29, v2

    move/from16 v27, v11

    move/from16 v28, v12

    const/4 v2, 0x0

    goto :goto_4b

    :cond_67
    move/from16 v29, v2

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v2, v18

    :goto_4b
    if-nez v26, :cond_68

    const-string v2, "Unexpected end of chunk data"

    move-object/from16 v11, v45

    .line 224
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 226
    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 227
    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    .line 228
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v2, v6

    move-object/from16 v36, v11

    move/from16 v12, v27

    goto/16 :goto_50

    :cond_68
    move-object/from16 v11, v45

    if-eqz v1, :cond_6b

    :goto_4c
    if-nez v21, :cond_6a

    if-lez v20, :cond_69

    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v21

    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v27

    add-int/lit8 v20, v20, -0x1

    goto :goto_4c

    :cond_69
    const/4 v12, -0x1

    const/16 v21, 0x0

    goto :goto_4d

    :cond_6a
    const/4 v12, -0x1

    :goto_4d
    add-int/lit8 v21, v21, -0x1

    :cond_6b
    move/from16 v12, v27

    .line 231
    aput-wide v22, v0, v6

    move-object/from16 v26, v0

    .line 232
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bu3;->c()I

    move-result v0

    aput v0, v14, v6

    if-le v0, v7, :cond_6c

    move v7, v0

    :cond_6c
    move-object v0, v10

    move-object/from16 v36, v11

    int-to-long v10, v12

    add-long v10, v24, v10

    .line 233
    aput-wide v10, v15, v6

    if-nez v9, :cond_6d

    const/4 v10, 0x1

    goto :goto_4e

    :cond_6d
    const/4 v10, 0x0

    .line 234
    :goto_4e
    aput v10, v5, v6

    move/from16 v10, v28

    if-ne v6, v10, :cond_6e

    const/4 v11, 0x1

    .line 235
    aput v11, v5, v6

    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_6e

    .line 236
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v10

    const/4 v11, -0x1

    add-int/2addr v10, v11

    :cond_6e
    move-object v11, v9

    move/from16 v18, v10

    int-to-long v9, v4

    add-long v24, v24, v9

    add-int/lit8 v9, v17, -0x1

    if-nez v9, :cond_70

    if-lez v13, :cond_6f

    .line 238
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v4

    .line 239
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v9

    add-int/lit8 v13, v13, -0x1

    move/from16 v17, v4

    move v4, v9

    goto :goto_4f

    :cond_6f
    const/16 v17, 0x0

    goto :goto_4f

    :cond_70
    move/from16 v17, v9

    .line 240
    :goto_4f
    aget v9, v14, v6

    int-to-long v9, v9

    add-long v22, v22, v9

    const/4 v9, -0x1

    add-int/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    move-object v10, v0

    move-object v9, v11

    move v11, v12

    move/from16 v12, v18

    move-object/from16 v0, v26

    move-object/from16 v45, v36

    move/from16 v18, v2

    move/from16 v2, v29

    goto/16 :goto_49

    :cond_71
    move-object/from16 v26, v0

    move/from16 v29, v2

    move-object/from16 v36, v45

    move v12, v11

    :goto_50
    int-to-long v3, v12

    add-long v3, v24, v3

    if-eqz v1, :cond_73

    :goto_51
    if-lez v20, :cond_73

    .line 241
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v6

    if-eqz v6, :cond_72

    const/4 v1, 0x0

    goto :goto_52

    .line 242
    :cond_72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->D()I

    add-int/lit8 v20, v20, -0x1

    goto :goto_51

    :cond_73
    const/4 v1, 0x1

    :goto_52
    if-nez v16, :cond_79

    if-nez v17, :cond_78

    if-nez v18, :cond_77

    if-nez v13, :cond_76

    if-nez v21, :cond_75

    if-nez v1, :cond_74

    move-object/from16 v11, v19

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_53

    :cond_74
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v11, v19

    goto/16 :goto_56

    :cond_75
    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_53
    const/4 v13, 0x0

    goto :goto_54

    :cond_76
    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_54

    :cond_77
    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_54

    :cond_78
    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    goto :goto_54

    :cond_79
    move/from16 v6, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    .line 243
    :goto_54
    iget v12, v11, Lcom/google/android/gms/internal/ads/xu3;->a:I

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-eq v0, v1, :cond_7a

    const-string v0, ", ctts invalid"

    goto :goto_55

    :cond_7a
    const-string v0, ""

    :goto_55
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v17, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x106

    .line 244
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v36

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    move-wide v0, v3

    move-object v12, v5

    move-object v10, v14

    move-object/from16 v9, v16

    move/from16 v2, v17

    move v14, v7

    :goto_57
    const-wide/32 v5, 0xf4240

    .line 246
    iget-wide v7, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move-wide v3, v0

    .line 247
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v16

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    if-nez v3, :cond_7b

    const-wide/32 v0, 0xf4240

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    .line 248
    invoke-static {v15, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/wa;->i([JJJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/av3;

    move-object v3, v1

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide/from16 v10, v16

    .line 249
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/av3;-><init>(Lcom/google/android/gms/internal/ads/xu3;[J[II[J[IJ)V

    goto/16 :goto_3e

    :cond_7b
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7e

    iget v4, v11, Lcom/google/android/gms/internal/ads/xu3;->b:I

    if-ne v4, v5, :cond_7e

    .line 250
    array-length v4, v15

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7e

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/xu3;->i:[J

    .line 251
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 252
    aget-wide v7, v5, v6

    .line 253
    aget-wide v16, v3, v6

    move-wide/from16 v22, v7

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move v5, v2

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/xu3;->d:J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v2

    .line 254
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v2

    add-long v7, v22, v2

    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 255
    invoke-static {v3, v6, v2}, Lcom/google/android/gms/internal/ads/wa;->c0(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x4

    .line 256
    invoke-static {v4, v6, v2}, Lcom/google/android/gms/internal/ads/wa;->c0(III)I

    move-result v2

    .line 257
    aget-wide v16, v15, v6

    cmp-long v4, v16, v22

    if-gtz v4, :cond_7d

    aget-wide v3, v15, v3

    cmp-long v13, v22, v3

    if-gez v13, :cond_7d

    aget-wide v2, v15, v2

    cmp-long v4, v2, v7

    if-gez v4, :cond_7d

    cmp-long v2, v7, v0

    if-gtz v2, :cond_7d

    .line 258
    aget-wide v2, v15, v6

    sub-long v16, v22, v2

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    iget v2, v2, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v2, v2

    move v6, v5

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    .line 259
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v2

    sub-long v16, v0, v7

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    .line 260
    iget v4, v4, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v4, v4

    iget-wide v7, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    .line 261
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v13, v2, v7

    if-nez v13, :cond_7c

    cmp-long v13, v4, v7

    if-eqz v13, :cond_7f

    :cond_7c
    const-wide/32 v7, 0x7fffffff

    cmp-long v13, v2, v7

    if-gtz v13, :cond_7f

    const-wide/32 v7, 0x7fffffff

    cmp-long v13, v4, v7

    if-gtz v13, :cond_7f

    long-to-int v0, v2

    move-object/from16 v2, p1

    iput v0, v2, Lcom/google/android/gms/internal/ads/kr3;->b:I

    long-to-int v0, v4

    iput v0, v2, Lcom/google/android/gms/internal/ads/kr3;->c:I

    const-wide/32 v0, 0xf4240

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    .line 262
    invoke-static {v15, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/wa;->i([JJJ)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    const/4 v1, 0x0

    .line 263
    aget-wide v3, v0, v1

    iget-wide v7, v11, Lcom/google/android/gms/internal/ads/xu3;->d:J

    const-wide/32 v5, 0xf4240

    .line 264
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v0

    new-instance v13, Lcom/google/android/gms/internal/ads/av3;

    move-object v3, v13

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide v10, v0

    .line 265
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/av3;-><init>(Lcom/google/android/gms/internal/ads/xu3;[J[II[J[IJ)V

    goto :goto_5a

    :cond_7d
    move-object/from16 v2, p1

    move v6, v5

    goto :goto_58

    :cond_7e
    move v6, v2

    :cond_7f
    move-object/from16 v2, p1

    :goto_58
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    .line 266
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_82

    const/4 v5, 0x0

    aget-wide v7, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v13, v7, v3

    if-nez v13, :cond_81

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/xu3;->i:[J

    .line 267
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    aget-wide v6, v3, v5

    const/4 v3, 0x0

    .line 269
    :goto_59
    array-length v4, v15

    if-ge v3, v4, :cond_80

    .line 270
    aget-wide v4, v15, v3

    sub-long v16, v4, v6

    const-wide/32 v18, 0xf4240

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move-wide/from16 v20, v4

    .line 271
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v4

    aput-wide v4, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_80
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    sub-long v16, v0, v6

    const-wide/32 v18, 0xf4240

    move-wide/from16 v20, v3

    .line 272
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v0

    new-instance v13, Lcom/google/android/gms/internal/ads/av3;

    move-object v3, v13

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide v10, v0

    .line 273
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/av3;-><init>(Lcom/google/android/gms/internal/ads/xu3;[J[II[J[IJ)V

    :goto_5a
    move-object v1, v13

    goto/16 :goto_3e

    :cond_81
    const/4 v4, 0x1

    :cond_82
    iget v0, v11, Lcom/google/android/gms/internal/ads/xu3;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    const/4 v3, 0x1

    goto :goto_5b

    :cond_83
    const/4 v3, 0x0

    :goto_5b
    new-array v0, v4, [I

    new-array v1, v4, [I

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/xu3;->i:[J

    .line 274
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 275
    :goto_5c
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    move/from16 v16, v14

    .line 276
    array-length v14, v2

    if-ge v5, v14, :cond_87

    move-object v14, v9

    move-object/from16 v17, v10

    .line 277
    aget-wide v9, v4, v5

    const-wide/16 v18, -0x1

    cmp-long v20, v9, v18

    if-eqz v20, :cond_86

    .line 278
    aget-wide v21, v2, v5

    move v2, v13

    move-object/from16 v18, v14

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move/from16 v19, v6

    move/from16 v20, v7

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/xu3;->d:J

    move-wide/from16 v23, v13

    move-wide/from16 v25, v6

    .line 279
    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v6

    const/4 v13, 0x1

    .line 280
    invoke-static {v15, v9, v10, v13, v13}, Lcom/google/android/gms/internal/ads/wa;->d([JJZZ)I

    move-result v14

    aput v14, v0, v5

    add-long/2addr v9, v6

    const/4 v14, 0x0

    .line 281
    invoke-static {v15, v9, v10, v3, v14}, Lcom/google/android/gms/internal/ads/wa;->e([JJZZ)I

    move-result v6

    aput v6, v1, v5

    .line 282
    :goto_5d
    aget v6, v0, v5

    aget v7, v1, v5

    if-ge v6, v7, :cond_84

    aget v9, v12, v6

    and-int/2addr v9, v13

    if-nez v9, :cond_84

    add-int/lit8 v6, v6, 0x1

    .line 283
    aput v6, v0, v5

    const/4 v13, 0x1

    goto :goto_5d

    :cond_84
    sub-int v9, v7, v6

    add-int v9, v20, v9

    if-eq v8, v6, :cond_85

    const/4 v6, 0x1

    goto :goto_5e

    :cond_85
    const/4 v6, 0x0

    :goto_5e
    or-int/2addr v2, v6

    move v13, v2

    move v8, v7

    move v7, v9

    goto :goto_5f

    :cond_86
    move/from16 v19, v6

    move/from16 v20, v7

    move v2, v13

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :goto_5f
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move/from16 v6, v19

    goto :goto_5c

    :cond_87
    move v5, v6

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    move v2, v13

    const/4 v14, 0x0

    if-eq v7, v5, :cond_88

    const/4 v3, 0x1

    goto :goto_60

    :cond_88
    const/4 v3, 0x0

    :goto_60
    or-int/2addr v2, v3

    if-eqz v2, :cond_89

    .line 284
    new-array v3, v7, [J

    move-object v5, v3

    goto :goto_61

    :cond_89
    move-object/from16 v5, v18

    :goto_61
    if-eqz v2, :cond_8a

    .line 285
    new-array v3, v7, [I

    move-object v6, v3

    goto :goto_62

    :cond_8a
    move-object/from16 v6, v17

    :goto_62
    const/4 v3, 0x1

    if-ne v3, v2, :cond_8b

    const/4 v3, 0x0

    goto :goto_63

    :cond_8b
    move/from16 v3, v16

    :goto_63
    if-eqz v2, :cond_8c

    .line 286
    new-array v4, v7, [I

    move-object v9, v4

    goto :goto_64

    :cond_8c
    move-object v9, v12

    .line 287
    :goto_64
    new-array v8, v7, [J

    move v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v25, 0x0

    :goto_65
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    .line 288
    array-length v10, v10

    if-ge v3, v10, :cond_90

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/xu3;->i:[J

    .line 289
    aget-wide v27, v10, v3

    .line 290
    aget v10, v0, v3

    .line 291
    aget v13, v1, v3

    if-eqz v2, :cond_8d

    sub-int v14, v13, v10

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    .line 292
    invoke-static {v0, v10, v5, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    .line 293
    invoke-static {v0, v10, v6, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {v12, v10, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_66

    :cond_8d
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    :goto_66
    if-ge v10, v13, :cond_8f

    const-wide/32 v21, 0xf4240

    move-object v14, v12

    move/from16 v17, v13

    iget-wide v12, v11, Lcom/google/android/gms/internal/ads/xu3;->d:J

    move-wide/from16 v19, v25

    move-wide/from16 v23, v12

    .line 295
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v12

    .line 296
    aget-wide v19, v15, v10

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    sub-long v14, v19, v27

    move-object/from16 v20, v0

    move-object/from16 v19, v1

    const-wide/16 v0, 0x0

    .line 297
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    const-wide/32 v35, 0xf4240

    iget-wide v14, v11, Lcom/google/android/gms/internal/ads/xu3;->c:J

    move-wide/from16 v37, v14

    .line 298
    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 299
    aput-wide v12, v8, v4

    if-eqz v2, :cond_8e

    .line 300
    aget v12, v6, v4

    if-le v12, v7, :cond_8e

    .line 301
    aget v7, v20, v10

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    goto :goto_66

    :cond_8f
    move-object/from16 v20, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v12

    move-object/from16 v21, v15

    const-wide/16 v0, 0x0

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    .line 302
    aget-wide v12, v10, v3

    add-long v25, v25, v12

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v17, v20

    move-object/from16 v12, v22

    const/4 v14, 0x0

    goto/16 :goto_65

    :cond_90
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/xu3;->d:J

    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v25

    move-wide/from16 v23, v0

    .line 303
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/av3;

    move-object v3, v2

    move-object v4, v11

    move-wide v10, v0

    .line 304
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/av3;-><init>(Lcom/google/android/gms/internal/ads/xu3;[J[II[J[IJ)V

    move-object v1, v2

    goto/16 :goto_3e

    .line 305
    :goto_67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_91
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 306
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_92
    move-object/from16 v0, v32

    :goto_68
    add-int/lit8 v15, v31, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move-object v13, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_93
    move-object v0, v13

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/yt3;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yt3;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v4

    if-lt v4, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_5

    .line 4
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    add-int v2, v4, v5

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/hu3;->d(Lcom/google/android/gms/internal/ads/la;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v6

    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_3

    .line 9
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    add-int/2addr v6, v7

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v7

    if-ge v7, v6, :cond_1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ou3;->a(Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 16
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    move-object v2, v6

    goto/16 :goto_6

    :cond_3
    add-int/2addr v6, v7

    .line 17
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_1

    :cond_4
    :goto_3
    move-object v2, v1

    goto :goto_6

    :cond_5
    const v7, 0x736d7461

    if-ne v6, v7, :cond_b

    .line 18
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    .line 19
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v7

    if-ge v7, v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v9

    const v10, 0x73617574

    if-ne v9, v10, :cond_9

    const/16 v3, 0xe

    if-ge v8, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x5

    .line 22
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v3

    const/high16 v7, 0x42f00000    # 120.0f

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_8

    goto :goto_5

    :cond_7
    if-ne v3, v6, :cond_8

    const/high16 v7, 0x43700000    # 240.0f

    :cond_8
    const/4 v3, 0x1

    .line 24
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzaiu;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzakq;

    .line 26
    invoke-direct {v9, v7, v6}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(FI)V

    const/4 v6, 0x0

    aput-object v9, v3, v6

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    move-object v3, v8

    goto :goto_6

    :cond_9
    add-int/2addr v7, v8

    .line 27
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_4

    :cond_a
    :goto_5
    move-object v3, v1

    :cond_b
    :goto_6
    add-int/2addr v4, v5

    .line 28
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto/16 :goto_0

    .line 29
    :cond_c
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/xt3;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 14

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/xt3;->e(I)Lcom/google/android/gms/internal/ads/yt3;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hu3;->e(Lcom/google/android/gms/internal/ads/la;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Lcom/google/android/gms/internal/ads/lu2;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/la;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v7

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    if-ge v8, v1, :cond_4

    .line 16
    aget-object v8, v3, v8

    add-int v9, v6, v7

    .line 17
    sget v10, Lcom/google/android/gms/internal/ads/ou3;->b:I

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v10

    if-ge v10, v9, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v11

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v9

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    .line 22
    new-array v12, v11, [B

    .line 23
    invoke-virtual {p0, v12, v4, v11}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzakk;

    .line 24
    invoke-direct {v11, v8, v12, v10, v9}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v10, v11

    .line 25
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_2

    :cond_3
    move-object v11, v2

    :goto_3
    if-eqz v11, :cond_5

    .line 26
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x34

    .line 28
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AtomParsers"

    .line 29
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    add-int/2addr v6, v7

    .line 30
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_1

    .line 31
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v2

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_8
    :goto_5
    return-object v2
.end method

.method public static d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    return-void
.end method

.method private static e(Lcom/google/android/gms/internal/ads/la;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result p0

    return p0
.end method

.method private static f(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static g(Lcom/google/android/gms/internal/ads/la;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/du3;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v9

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    .line 4
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x14

    const/16 v11, 0x10

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_3

    if-ne v9, v13, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v12, :cond_2

    .line 5
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->F()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v7, v14

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v9

    .line 9
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 10
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v14

    .line 11
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->H()I

    move-result v7

    if-ne v9, v13, :cond_4

    .line 13
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :cond_4
    move v9, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v11

    const v14, 0x656e6361

    move/from16 v15, p1

    if-ne v15, v14, :cond_7

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu3;->i(Lcom/google/android/gms/internal/ads/la;II)Landroid/util/Pair;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 15
    iget-object v14, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 16
    :cond_5
    iget-object v10, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/yu3;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/yu3;->b:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v5

    .line 17
    :goto_3
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/du3;->a:[Lcom/google/android/gms/internal/ads/yu3;

    .line 18
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/ads/yu3;

    aput-object v15, v10, p9

    .line 19
    :cond_6
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    goto :goto_4

    :cond_7
    move v14, v15

    :goto_4
    const v10, 0x61632d33

    const v15, 0x616c6163

    const-string v16, "audio/raw"

    const-string v12, "audio/ac4"

    if-ne v14, v10, :cond_8

    const-string v16, "audio/ac3"

    :goto_5
    const/4 v10, -0x1

    goto/16 :goto_9

    :cond_8
    const v10, 0x65632d33

    if-ne v14, v10, :cond_9

    const-string v16, "audio/eac3"

    goto :goto_5

    :cond_9
    const v10, 0x61632d34

    if-ne v14, v10, :cond_a

    move-object/from16 v16, v12

    goto :goto_5

    :cond_a
    const v10, 0x64747363

    if-ne v14, v10, :cond_b

    const-string v16, "audio/vnd.dts"

    goto :goto_5

    :cond_b
    const v10, 0x64747368

    if-eq v14, v10, :cond_1d

    const v10, 0x6474736c

    if-ne v14, v10, :cond_c

    goto/16 :goto_8

    :cond_c
    const v10, 0x64747365

    if-ne v14, v10, :cond_d

    const-string v16, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_5

    :cond_d
    const v10, 0x64747378

    if-ne v14, v10, :cond_e

    const-string v16, "audio/vnd.dts.uhd"

    goto :goto_5

    :cond_e
    const v10, 0x73616d72

    if-ne v14, v10, :cond_f

    const-string v16, "audio/3gpp"

    goto :goto_5

    :cond_f
    const v10, 0x73617762

    if-ne v14, v10, :cond_10

    const-string v16, "audio/amr-wb"

    goto :goto_5

    :cond_10
    const v10, 0x6c70636d

    if-eq v14, v10, :cond_1c

    const v10, 0x736f7774

    if-ne v14, v10, :cond_11

    goto :goto_7

    :cond_11
    const v10, 0x74776f73

    if-ne v14, v10, :cond_12

    const/high16 v10, 0x10000000

    goto :goto_9

    :cond_12
    const v10, 0x2e6d7032

    if-eq v14, v10, :cond_1b

    const v10, 0x2e6d7033

    if-ne v14, v10, :cond_13

    goto :goto_6

    :cond_13
    const v10, 0x6d686131

    if-ne v14, v10, :cond_14

    const-string v16, "audio/mha1"

    goto :goto_5

    :cond_14
    const v10, 0x6d686d31

    if-ne v14, v10, :cond_15

    const-string v16, "audio/mhm1"

    goto :goto_5

    :cond_15
    if-ne v14, v15, :cond_16

    const-string v16, "audio/alac"

    goto :goto_5

    :cond_16
    const v10, 0x616c6177

    if-ne v14, v10, :cond_17

    const-string v16, "audio/g711-alaw"

    goto/16 :goto_5

    :cond_17
    const v10, 0x756c6177

    if-ne v14, v10, :cond_18

    const-string v16, "audio/g711-mlaw"

    goto/16 :goto_5

    :cond_18
    const v10, 0x4f707573

    if-ne v14, v10, :cond_19

    const-string v16, "audio/opus"

    goto/16 :goto_5

    :cond_19
    const v10, 0x664c6143

    if-ne v14, v10, :cond_1a

    const-string v16, "audio/flac"

    goto/16 :goto_5

    :cond_1a
    const/4 v10, -0x1

    const/16 v16, 0x0

    goto :goto_9

    :cond_1b
    :goto_6
    const-string v16, "audio/mpeg"

    goto/16 :goto_5

    :cond_1c
    :goto_7
    const/4 v10, 0x2

    goto :goto_9

    :cond_1d
    :goto_8
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :goto_9
    move-object/from16 v13, v16

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_a
    sub-int v15, v11, v1

    if-ge v15, v2, :cond_2f

    .line 20
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v15

    if-lez v15, :cond_1e

    const/4 v8, 0x1

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    :goto_b
    const-string v1, "childAtomSize must be positive"

    .line 22
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    const v2, 0x6d686143

    if-ne v8, v2, :cond_1f

    add-int/lit8 v1, v15, -0xd

    .line 24
    new-array v2, v1, [B

    add-int/lit8 v8, v11, 0xd

    .line 25
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    move-object/from16 v19, v1

    move/from16 v16, v10

    :goto_c
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_14

    :cond_1f
    const v2, 0x65736473

    if-eq v8, v2, :cond_2c

    if-eqz p6, :cond_23

    const v2, 0x77617665

    if-ne v8, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v2

    :goto_d
    sub-int v8, v2, v11

    if-ge v8, v15, :cond_22

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    if-lez v8, :cond_20

    move/from16 v16, v10

    const/4 v10, 0x1

    goto :goto_e

    :cond_20
    move/from16 v16, v10

    const/4 v10, 0x0

    .line 30
    :goto_e
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v10

    move-object/from16 v20, v1

    const v1, 0x65736473

    if-eq v10, v1, :cond_21

    add-int/2addr v2, v8

    move/from16 v10, v16

    move-object/from16 v1, v20

    goto :goto_d

    :cond_21
    const/4 v1, -0x1

    goto :goto_f

    :cond_22
    move/from16 v16, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_f
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_13

    :cond_23
    move/from16 v16, v10

    const v1, 0x64616333

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v11, 0x8

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 33
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/aq3;->a(Lcom/google/android/gms/internal/ads/la;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    :goto_10
    const/16 v1, 0x14

    goto :goto_c

    :cond_24
    const v1, 0x64656333

    if-ne v8, v1, :cond_25

    add-int/lit8 v1, v11, 0x8

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 35
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/aq3;->b(Lcom/google/android/gms/internal/ads/la;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    goto :goto_10

    :cond_25
    const v1, 0x64616334

    if-ne v8, v1, :cond_27

    add-int/lit8 v1, v11, 0x8

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 37
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/dq3;->b:I

    const/4 v8, 0x1

    .line 38
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    if-eq v8, v2, :cond_26

    const v2, 0xac44

    goto :goto_11

    :cond_26
    const v2, 0xbb80

    :goto_11
    new-instance v8, Lcom/google/android/gms/internal/ads/s4;

    .line 40
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 41
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 42
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const/4 v1, 0x2

    .line 43
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    .line 44
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    .line 45
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/s4;->q(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/s4;

    .line 46
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 47
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    goto :goto_10

    :cond_27
    const v1, 0x64647473

    if-ne v8, v1, :cond_28

    new-instance v1, Lcom/google/android/gms/internal/ads/s4;

    .line 48
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 49
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/s4;->e(I)Lcom/google/android/gms/internal/ads/s4;

    .line 50
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 51
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    .line 52
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    .line 53
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/s4;->q(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/s4;

    .line 54
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    goto :goto_10

    :cond_28
    const v1, 0x644f7073

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v15, -0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/hu3;->a:[B

    .line 56
    array-length v8, v2

    add-int/2addr v8, v1

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v10, v11, 0x8

    .line 57
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 58
    array-length v2, v2

    invoke-virtual {v0, v8, v2, v1}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 59
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/qr3;->a([B)Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto/16 :goto_c

    :cond_29
    const v1, 0x64664c61

    if-ne v8, v1, :cond_2a

    add-int/lit8 v1, v15, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 60
    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v10, 0x0

    .line 61
    aput-byte v8, v2, v10

    const/16 v8, 0x4c

    const/4 v10, 0x1

    .line 62
    aput-byte v8, v2, v10

    const/16 v8, 0x61

    const/16 v17, 0x2

    .line 63
    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    .line 64
    aput-byte v18, v2, v8

    add-int/lit8 v8, v11, 0xc

    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 v8, 0x4

    .line 66
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_12
    const/4 v8, 0x0

    goto/16 :goto_14

    :cond_2a
    const v1, 0x616c6163

    const/4 v10, 0x1

    const/16 v17, 0x2

    if-ne v8, v1, :cond_2b

    add-int/lit8 v2, v15, -0xc

    .line 68
    new-array v7, v2, [B

    add-int/lit8 v8, v11, 0xc

    .line 69
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 v8, 0x0

    .line 70
    invoke-virtual {v0, v7, v8, v2}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 71
    new-instance v2, Lcom/google/android/gms/internal/ads/la;

    .line 72
    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    const/16 v9, 0x9

    .line 73
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v9

    const/16 v1, 0x14

    .line 75
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 78
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 79
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v7

    move-object/from16 v19, v7

    move v7, v9

    move v9, v2

    goto :goto_14

    :cond_2b
    const/16 v1, 0x14

    goto :goto_12

    :cond_2c
    move/from16 v16, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    move v2, v11

    const/4 v1, -0x1

    :goto_13
    if-eq v2, v1, :cond_2e

    .line 81
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/hu3;->h(Lcom/google/android/gms/internal/ads/la;I)Landroid/util/Pair;

    move-result-object v2

    .line 82
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 83
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_2e

    const-string v1, "audio/mp4a-latm"

    .line 84
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 85
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/xp3;->a([B)Lcom/google/android/gms/internal/ads/vp3;

    move-result-object v1

    iget v7, v1, Lcom/google/android/gms/internal/ads/vp3;->a:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/vp3;->b:I

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/vp3;->c:Ljava/lang/String;

    .line 86
    :cond_2d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v19

    :cond_2e
    :goto_14
    add-int/2addr v11, v15

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v10, v16

    goto/16 :goto_a

    :cond_2f
    move/from16 v16, v10

    .line 87
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    if-nez v0, :cond_30

    if-eqz v13, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    .line 88
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 89
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/s4;->e(I)Lcom/google/android/gms/internal/ads/s4;

    .line 90
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 91
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/s4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 92
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/s4;->B(I)Lcom/google/android/gms/internal/ads/s4;

    .line 93
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/s4;->C(I)Lcom/google/android/gms/internal/ads/s4;

    move/from16 v13, v16

    .line 94
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/s4;->D(I)Lcom/google/android/gms/internal/ads/s4;

    move-object/from16 v1, v19

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 96
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/s4;->q(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/s4;

    .line 97
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/s4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/du3;->b:Lcom/google/android/gms/internal/ads/u4;

    :cond_30
    return-void
.end method

.method private static h(Lcom/google/android/gms/internal/ads/la;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/la;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/hu3;->j(Lcom/google/android/gms/internal/ads/la;)I

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/hu3;->j(Lcom/google/android/gms/internal/ads/la;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y9;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mpeg"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/hu3;->j(Lcom/google/android/gms/internal/ads/la;)I

    move-result p1

    .line 19
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    .line 21
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 22
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lcom/google/android/gms/internal/ads/la;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/la;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/yu3;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/lu2;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/la;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zt3;->a(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/la;->s(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v7

    if-ne v7, v5, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/yu3;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/yu3;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/yq3;->a(ZLjava/lang/String;)V

    .line 31
    sget v5, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static j(Lcom/google/android/gms/internal/ads/la;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
