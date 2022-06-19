.class final Lcom/google/android/gms/internal/ads/dgg;
.super Lcom/google/android/gms/internal/ads/dgf;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dgf;-><init>()V

    return-void
.end method

.method private static a([BIJI)I
    .locals 4

    .prologue
    .line 162
    packed-switch p4, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dgd;->a(I)I

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dgd;->a(II)I

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v1

    .line 167
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dgd;->a(III)I

    move-result v0

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method final a(I[BII)I
    .locals 14

    .prologue
    .line 2
    or-int v2, p3, p4

    move-object/from16 v0, p2

    array-length v3, v0

    sub-int v3, v3, p4

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v3, "Array length=%d, index=%d, limit=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    array-length v6, v0

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_0
    move/from16 v0, p3

    int-to-long v2, v0

    .line 6
    move/from16 v0, p4

    int-to-long v12, v0

    .line 7
    if-eqz p1, :cond_d

    .line 8
    cmp-long v4, v2, v12

    if-ltz v4, :cond_2

    .line 76
    :cond_1
    :goto_0
    return p1

    .line 10
    :cond_2
    int-to-byte v11, p1

    .line 11
    const/16 v4, -0x20

    if-ge v11, v4, :cond_4

    .line 12
    const/16 v4, -0x3e

    if-lt v11, v4, :cond_3

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    .line 13
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    const/16 v3, -0x41

    if-le v2, v3, :cond_e

    .line 14
    :cond_3
    const/4 p1, -0x1

    goto :goto_0

    .line 15
    :cond_4
    const/16 v4, -0x10

    if-ge v11, v4, :cond_9

    .line 16
    shr-int/lit8 v4, p1, 0x8

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    .line 17
    if-nez v4, :cond_21

    .line 18
    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    .line 19
    cmp-long v3, v6, v12

    if-ltz v3, :cond_5

    .line 20
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/dgd;->a(II)I

    move-result p1

    goto :goto_0

    :cond_5
    move v4, v2

    move-wide v8, v6

    .line 21
    :goto_1
    const/16 v2, -0x41

    if-gt v4, v2, :cond_8

    const/16 v2, -0x20

    if-ne v11, v2, :cond_6

    const/16 v2, -0x60

    if-lt v4, v2, :cond_8

    :cond_6
    const/16 v2, -0x13

    if-ne v11, v2, :cond_7

    const/16 v2, -0x60

    if-ge v4, v2, :cond_8

    :cond_7
    const-wide/16 v2, 0x1

    add-long v6, v8, v2

    .line 22
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    const/16 v3, -0x41

    if-le v2, v3, :cond_e

    .line 23
    :cond_8
    const/4 p1, -0x1

    goto :goto_0

    .line 25
    :cond_9
    shr-int/lit8 v4, p1, 0x8

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v5, v4

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v5, :cond_a

    .line 28
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    .line 29
    cmp-long v3, v6, v12

    if-ltz v3, :cond_20

    .line 30
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/dgd;->a(II)I

    move-result p1

    goto :goto_0

    .line 31
    :cond_a
    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    move v10, v5

    move-wide v6, v2

    .line 32
    :goto_2
    if-nez v4, :cond_1f

    .line 33
    const-wide/16 v2, 0x1

    add-long v4, v6, v2

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    .line 34
    cmp-long v3, v4, v12

    if-ltz v3, :cond_b

    .line 35
    invoke-static {v11, v10, v2}, Lcom/google/android/gms/internal/ads/dgd;->a(III)I

    move-result p1

    goto/16 :goto_0

    :cond_b
    move-wide v8, v4

    .line 36
    :goto_3
    const/16 v3, -0x41

    if-gt v10, v3, :cond_c

    shl-int/lit8 v3, v11, 0x1c

    add-int/lit8 v4, v10, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_c

    const/16 v3, -0x41

    if-gt v2, v3, :cond_c

    const-wide/16 v2, 0x1

    add-long v6, v8, v2

    .line 37
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    const/16 v3, -0x41

    if-le v2, v3, :cond_e

    .line 38
    :cond_c
    const/4 p1, -0x1

    goto/16 :goto_0

    :cond_d
    move-wide v6, v2

    .line 39
    :cond_e
    sub-long v2, v12, v6

    long-to-int v3, v2

    .line 41
    const/16 v2, 0x10

    if-ge v3, v2, :cond_11

    .line 42
    const/4 v2, 0x0

    .line 49
    :cond_f
    :goto_4
    sub-int/2addr v3, v2

    .line 50
    int-to-long v4, v2

    add-long/2addr v4, v6

    move v2, v3

    .line 51
    :cond_10
    const/4 p1, 0x0

    move v8, v2

    .line 52
    :goto_5
    if-lez v8, :cond_1e

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result p1

    if-ltz p1, :cond_13

    add-int/lit8 v6, v8, -0x1

    move v8, v6

    move-wide v4, v2

    goto :goto_5

    .line 43
    :cond_11
    const/4 v2, 0x0

    move-wide v4, v6

    :goto_6
    if-ge v2, v3, :cond_12

    .line 44
    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v4

    if-ltz v4, :cond_f

    .line 46
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v8

    goto :goto_6

    :cond_12
    move v2, v3

    .line 47
    goto :goto_4

    :cond_13
    move-wide v6, v2

    .line 53
    :goto_7
    if-nez v8, :cond_14

    .line 54
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 55
    :cond_14
    add-int/lit8 v2, v8, -0x1

    .line 56
    const/16 v3, -0x20

    if-ge p1, v3, :cond_16

    .line 57
    if-eqz v2, :cond_1

    .line 59
    add-int/lit8 v2, v2, -0x1

    .line 60
    const/16 v3, -0x3e

    if-lt p1, v3, :cond_15

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    const/16 v6, -0x41

    if-le v3, v6, :cond_10

    .line 61
    :cond_15
    const/4 p1, -0x1

    goto/16 :goto_0

    .line 62
    :cond_16
    const/16 v3, -0x10

    if-ge p1, v3, :cond_1b

    .line 63
    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    .line 64
    move-object/from16 v0, p2

    invoke-static {v0, p1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/dgg;->a([BIJI)I

    move-result p1

    goto/16 :goto_0

    .line 65
    :cond_17
    add-int/lit8 v2, v2, -0x2

    .line 66
    const-wide/16 v4, 0x1

    add-long v8, v6, v4

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    const/16 v4, -0x41

    if-gt v3, v4, :cond_1a

    const/16 v4, -0x20

    if-ne p1, v4, :cond_18

    const/16 v4, -0x60

    if-lt v3, v4, :cond_1a

    :cond_18
    const/16 v4, -0x13

    if-ne p1, v4, :cond_19

    const/16 v4, -0x60

    if-ge v3, v4, :cond_1a

    :cond_19
    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    .line 67
    move-object/from16 v0, p2

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    const/16 v6, -0x41

    if-le v3, v6, :cond_10

    .line 68
    :cond_1a
    const/4 p1, -0x1

    goto/16 :goto_0

    .line 70
    :cond_1b
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1c

    .line 71
    move-object/from16 v0, p2

    invoke-static {v0, p1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/dgg;->a([BIJI)I

    move-result p1

    goto/16 :goto_0

    .line 72
    :cond_1c
    add-int/lit8 v2, v2, -0x3

    .line 73
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    const/16 v6, -0x41

    if-gt v3, v6, :cond_1d

    shl-int/lit8 v6, p1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_1d

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    .line 74
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    const/16 v4, -0x41

    if-gt v3, v4, :cond_1d

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    .line 75
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    const/16 v6, -0x41

    if-le v3, v6, :cond_10

    .line 76
    :cond_1d
    const/4 p1, -0x1

    goto/16 :goto_0

    :cond_1e
    move-wide v6, v4

    goto/16 :goto_7

    :cond_1f
    move v2, v4

    move-wide v8, v6

    goto/16 :goto_3

    :cond_20
    move v10, v2

    goto/16 :goto_2

    :cond_21
    move-wide v8, v2

    goto/16 :goto_1
.end method

.method final a(Ljava/lang/CharSequence;[BII)I
    .locals 14

    .prologue
    .line 124
    move/from16 v0, p3

    int-to-long v4, v0

    .line 125
    move/from16 v0, p4

    int-to-long v2, v0

    add-long v8, v4, v2

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 127
    move/from16 v0, p4

    if-gt v3, v0, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    sub-int v2, v2, p4

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    .line 128
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v3, v3, -0x1

    .line 129
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p3, p4

    const/16 v5, 0x25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Failed writing "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " at index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_1
    const/4 v2, 0x0

    .line 131
    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v6, 0x80

    if-ge v10, v6, :cond_2

    .line 132
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    int-to-byte v10, v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v6

    goto :goto_0

    .line 134
    :cond_2
    if-ne v2, v3, :cond_d

    .line 135
    long-to-int v2, v4

    .line 161
    :goto_1
    return v2

    .line 136
    :goto_2
    if-ge v2, v3, :cond_c

    .line 137
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 138
    const/16 v4, 0x80

    if-ge v10, v4, :cond_3

    cmp-long v4, v6, v8

    if-gez v4, :cond_3

    .line 139
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    int-to-byte v10, v10

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v10}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 160
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-wide v6, v4

    goto :goto_2

    .line 140
    :cond_3
    const/16 v4, 0x800

    if-ge v10, v4, :cond_4

    const-wide/16 v4, 0x2

    sub-long v4, v8, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_4

    .line 141
    const-wide/16 v4, 0x1

    add-long v12, v6, v4

    ushr-int/lit8 v4, v10, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v4}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 142
    const-wide/16 v4, 0x1

    add-long/2addr v4, v12

    and-int/lit8 v6, v10, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v6}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    goto :goto_3

    .line 143
    :cond_4
    const v4, 0xd800

    if-lt v10, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v10, :cond_6

    :cond_5
    const-wide/16 v4, 0x3

    sub-long v4, v8, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_6

    .line 144
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    ushr-int/lit8 v11, v10, 0xc

    or-int/lit16 v11, v11, 0x1e0

    int-to-byte v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 145
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    ushr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 146
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v10}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    goto :goto_3

    .line 147
    :cond_6
    const-wide/16 v4, 0x4

    sub-long v4, v8, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_9

    .line 148
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-nez v5, :cond_8

    .line 149
    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/ads/dgh;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/ads/dgh;-><init>(II)V

    throw v4

    .line 150
    :cond_8
    invoke-static {v10, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    .line 151
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    ushr-int/lit8 v11, v10, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 152
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    ushr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 153
    const-wide/16 v4, 0x1

    add-long v12, v6, v4

    ushr-int/lit8 v4, v10, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v4}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    .line 154
    const-wide/16 v4, 0x1

    add-long/2addr v4, v12

    and-int/lit8 v6, v10, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v6}, Lcom/google/android/gms/internal/ads/dgb;->a([BJB)V

    goto/16 :goto_3

    .line 156
    :cond_9
    const v4, 0xd800

    if-gt v4, v10, :cond_b

    const v4, 0xdfff

    if-gt v10, v4, :cond_b

    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_a

    add-int/lit8 v4, v2, 0x1

    .line 157
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_b

    .line 158
    :cond_a
    new-instance v4, Lcom/google/android/gms/internal/ads/dgh;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/ads/dgh;-><init>(II)V

    throw v4

    .line 159
    :cond_b
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v3, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_c
    long-to-int v2, v6

    goto/16 :goto_1

    :cond_d
    move-wide v6, v4

    goto/16 :goto_2
.end method

.method final a([BII)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 78
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "buffer length=%d, index=%d, size=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    add-int v8, p2, p3

    .line 83
    new-array v4, p3, [C

    move v5, v7

    move v1, p2

    .line 85
    :goto_0
    if-ge v1, v8, :cond_9

    .line 86
    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    .line 87
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dgc;->a(B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    add-int/lit8 v0, v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(B[CI)V

    move v5, v0

    .line 90
    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v2, v1, 0x1

    int-to-long v10, v1

    .line 105
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    add-int/lit8 v1, v5, 0x1

    .line 106
    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(BB[CI)V

    move v5, v1

    .line 91
    :goto_1
    if-ge v2, v8, :cond_8

    .line 92
    add-int/lit8 v1, v2, 0x1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v0

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dgc;->a(B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(B[CI)V

    move v0, v2

    .line 95
    :goto_2
    if-ge v1, v8, :cond_7

    .line 96
    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    .line 97
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dgc;->a(B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    add-int/lit8 v2, v0, 0x1

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/dgc;->a(B[CI)V

    move v0, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dgc;->b(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    if-lt v1, v8, :cond_1

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 107
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dgc;->c(B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    add-int/lit8 v2, v8, -0x1

    if-lt v1, v2, :cond_4

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 110
    :cond_4
    add-int/lit8 v3, v1, 0x1

    int-to-long v10, v1

    .line 111
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v6

    add-int/lit8 v2, v3, 0x1

    int-to-long v10, v3

    .line 112
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    add-int/lit8 v1, v5, 0x1

    .line 113
    invoke-static {v0, v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(BBB[CI)V

    move v5, v1

    goto :goto_1

    .line 114
    :cond_5
    add-int/lit8 v2, v8, -0x2

    if-lt v1, v2, :cond_6

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 116
    :cond_6
    add-int/lit8 v2, v1, 0x1

    int-to-long v10, v1

    .line 117
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v1

    add-int/lit8 v3, v2, 0x1

    int-to-long v10, v2

    .line 118
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v2

    add-int/lit8 v6, v3, 0x1

    int-to-long v10, v3

    .line 119
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a([BJ)B

    move-result v3

    add-int/lit8 v9, v5, 0x1

    .line 120
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dgc;->a(BBBB[CI)V

    .line 121
    add-int/lit8 v0, v9, 0x1

    move v1, v6

    :cond_7
    move v5, v0

    move v2, v1

    .line 122
    goto/16 :goto_1

    .line 123
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v7, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_9
    move v2, v1

    goto/16 :goto_1
.end method
