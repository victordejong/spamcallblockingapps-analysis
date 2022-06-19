.class public final Lcom/google/android/gms/internal/ads/dsf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:[B

.field private static final b:[F

.field private static final c:Ljava/lang/Object;

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dsf;->a:[B

    .line 108
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/dsf;->b:[F

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dsf;->c:Ljava/lang/Object;

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/dsf;->d:[I

    return-void

    .line 107
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 108
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BII)Lcom/google/android/gms/internal/ads/dsi;
    .locals 22

    .prologue
    .line 22
    new-instance v16, Lcom/google/android/gms/internal/ads/dsj;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dsj;-><init>([BII)V

    .line 23
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dsj;->a(I)V

    .line 24
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dsj;->b(I)I

    move-result v7

    .line 25
    const/16 v4, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dsj;->a(I)V

    .line 26
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    const/16 v8, 0x64

    if-eq v7, v8, :cond_0

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_0

    const/16 v8, 0x7a

    if-eq v7, v8, :cond_0

    const/16 v8, 0xf4

    if-eq v7, v8, :cond_0

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_0

    const/16 v8, 0x53

    if-eq v7, v8, :cond_0

    const/16 v8, 0x56

    if-eq v7, v8, :cond_0

    const/16 v8, 0x76

    if-eq v7, v8, :cond_0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_0

    const/16 v8, 0x8a

    if-ne v7, v8, :cond_16

    .line 30
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v10

    .line 31
    const/4 v6, 0x3

    if-ne v10, v6, :cond_1

    .line 32
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v4

    .line 33
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    .line 34
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    .line 35
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/dsj;->a(I)V

    .line 36
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v6

    .line 37
    if-eqz v6, :cond_7

    .line 38
    const/4 v6, 0x3

    if-eq v10, v6, :cond_3

    const/16 v6, 0x8

    .line 39
    :goto_0
    const/4 v7, 0x0

    move v12, v7

    :goto_1
    if-ge v12, v6, :cond_7

    .line 40
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v7

    .line 41
    if-eqz v7, :cond_6

    .line 42
    const/4 v7, 0x6

    if-ge v12, v7, :cond_4

    const/16 v7, 0x10

    .line 43
    :goto_2
    const/16 v8, 0x8

    .line 44
    const/16 v9, 0x8

    .line 45
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_6

    .line 46
    if-eqz v9, :cond_2

    .line 47
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->c()I

    move-result v9

    .line 48
    add-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x100

    rem-int/lit16 v9, v9, 0x100

    .line 49
    :cond_2
    if-nez v9, :cond_5

    .line 50
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 38
    :cond_3
    const/16 v6, 0xc

    goto :goto_0

    .line 42
    :cond_4
    const/16 v7, 0x40

    goto :goto_2

    :cond_5
    move v8, v9

    .line 49
    goto :goto_4

    .line 51
    :cond_6
    add-int/lit8 v7, v12, 0x1

    move v12, v7

    goto :goto_1

    :cond_7
    move v9, v4

    move v6, v10

    .line 52
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v4

    add-int/lit8 v11, v4, 0x4

    .line 53
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v12

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v14, 0x0

    .line 56
    if-nez v12, :cond_b

    .line 57
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v4

    add-int/lit8 v13, v4, 0x4

    .line 66
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    .line 67
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dsj;->a(I)V

    .line 68
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    .line 69
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    .line 70
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v10

    .line 71
    if-eqz v10, :cond_c

    const/4 v4, 0x1

    :goto_6
    rsub-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v8

    .line 72
    if-nez v10, :cond_9

    .line 73
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dsj;->a(I)V

    .line 74
    :cond_9
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dsj;->a(I)V

    .line 75
    shl-int/lit8 v15, v7, 0x4

    .line 76
    shl-int/lit8 v8, v4, 0x4

    .line 77
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v4

    .line 78
    if-eqz v4, :cond_15

    .line 79
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v17

    .line 80
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v18

    .line 81
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v19

    .line 82
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v20

    .line 83
    if-nez v6, :cond_e

    .line 84
    const/4 v6, 0x1

    .line 85
    if-eqz v10, :cond_d

    const/4 v4, 0x1

    :goto_7
    rsub-int/lit8 v4, v4, 0x2

    .line 90
    :goto_8
    add-int v7, v17, v18

    mul-int/2addr v6, v7

    sub-int v6, v15, v6

    .line 91
    add-int v7, v19, v20

    mul-int/2addr v4, v7

    sub-int v7, v8, v4

    .line 92
    :goto_9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v8

    .line 94
    if-eqz v8, :cond_14

    .line 95
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v8

    .line 96
    if-eqz v8, :cond_14

    .line 97
    const/16 v8, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dsj;->b(I)I

    move-result v8

    .line 98
    const/16 v15, 0xff

    if-ne v8, v15, :cond_12

    .line 99
    const/16 v8, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/dsj;->b(I)I

    move-result v8

    .line 100
    const/16 v15, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/dsj;->b(I)I

    move-result v15

    .line 101
    if-eqz v8, :cond_a

    if-eqz v15, :cond_a

    .line 102
    int-to-float v4, v8

    int-to-float v8, v15

    div-float/2addr v4, v8

    :cond_a
    move v8, v4

    .line 106
    :goto_a
    new-instance v4, Lcom/google/android/gms/internal/ads/dsi;

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/ads/dsi;-><init>(IIIFZZIIIZ)V

    return-object v4

    .line 58
    :cond_b
    const/4 v4, 0x1

    if-ne v12, v4, :cond_8

    .line 59
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->a()Z

    move-result v14

    .line 60
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->c()I

    .line 61
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->c()I

    .line 62
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 63
    const/4 v4, 0x0

    :goto_b
    int-to-long v0, v4

    move-wide/from16 v20, v0

    cmp-long v7, v20, v18

    if-gez v7, :cond_8

    .line 64
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/dsj;->b()I

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 71
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 85
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 86
    :cond_e
    const/4 v4, 0x3

    if-ne v6, v4, :cond_f

    const/4 v7, 0x1

    .line 87
    :goto_c
    const/4 v4, 0x1

    if-ne v6, v4, :cond_10

    const/4 v4, 0x2

    move v6, v4

    .line 89
    :goto_d
    if-eqz v10, :cond_11

    const/4 v4, 0x1

    :goto_e
    rsub-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v6

    move v6, v7

    goto :goto_8

    .line 86
    :cond_f
    const/4 v7, 0x2

    goto :goto_c

    .line 87
    :cond_10
    const/4 v4, 0x1

    move v6, v4

    goto :goto_d

    .line 89
    :cond_11
    const/4 v4, 0x0

    goto :goto_e

    .line 103
    :cond_12
    sget-object v15, Lcom/google/android/gms/internal/ads/dsf;->b:[F

    array-length v15, v15

    if-ge v8, v15, :cond_13

    .line 104
    sget-object v4, Lcom/google/android/gms/internal/ads/dsf;->b:[F

    aget v4, v4, v8

    move v8, v4

    goto :goto_a

    .line 105
    :cond_13
    const-string/jumbo v15, "NalUnitUtil"

    const/16 v16, 0x2e

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v16, "Unexpected aspect_ratio_idc value: "

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v8, v4

    goto :goto_a

    :cond_15
    move v7, v8

    move v6, v15

    goto/16 :goto_9

    :cond_16
    move v9, v4

    goto/16 :goto_5
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 4
    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 6
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 7
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    :goto_1
    return-void

    .line 14
    :cond_0
    if-nez v4, :cond_1

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    :cond_1
    if-eqz v4, :cond_2

    move v0, v1

    .line 18
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method
