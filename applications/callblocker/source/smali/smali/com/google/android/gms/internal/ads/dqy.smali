.class public final Lcom/google/android/gms/internal/ads/dqy;
.super Lcom/google/android/gms/internal/ads/drd;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/drh;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/drb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/dqy;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dqy;-><init>(Lcom/google/android/gms/internal/ads/drh;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/drh;)V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drd;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqy;->b:Lcom/google/android/gms/internal/ads/drh;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/drb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/drb;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqy;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    return-void
.end method

.method private static a(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 197
    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    .line 199
    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 202
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    goto :goto_0
.end method

.method private static b(IZ)Z
    .locals 2

    .prologue
    .line 200
    and-int/lit8 v0, p0, 0x3

    .line 201
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a([Lcom/google/android/gms/internal/ads/dll;[Lcom/google/android/gms/internal/ads/dqv;[[[I)[Lcom/google/android/gms/internal/ads/dre;
    .locals 34

    .prologue
    .line 7
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .line 8
    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dre;

    move-object/from16 v21, v0

    .line 9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dqy;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/drb;

    .line 10
    const/4 v15, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 13
    const/4 v4, 0x2

    aget-object v5, p1, v19

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dll;->a()I

    move-result v5

    if-ne v4, v5, :cond_42

    .line 14
    if-nez v3, :cond_1b

    .line 15
    aget-object v22, p2, v19

    aget-object v23, p3, v19

    iget v0, v2, Lcom/google/android/gms/internal/ads/drb;->e:I

    move/from16 v24, v0

    iget v0, v2, Lcom/google/android/gms/internal/ads/drb;->f:I

    move/from16 v25, v0

    iget v0, v2, Lcom/google/android/gms/internal/ads/drb;->g:I

    move/from16 v26, v0

    iget v0, v2, Lcom/google/android/gms/internal/ads/drb;->j:I

    move/from16 v16, v0

    iget v0, v2, Lcom/google/android/gms/internal/ads/drb;->k:I

    move/from16 v17, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/drb;->l:Z

    move/from16 v27, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/drb;->h:Z

    move/from16 v28, v0

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/drb;->i:Z

    move/from16 v29, v0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v4, -0x1

    .line 22
    const/4 v6, -0x1

    .line 23
    const/4 v3, 0x0

    move v12, v3

    :goto_1
    move-object/from16 v0, v22

    iget v3, v0, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ge v12, v3, :cond_1a

    .line 24
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v10

    .line 26
    new-instance v14, Ljava/util/ArrayList;

    iget v3, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    const/4 v3, 0x0

    :goto_2
    iget v8, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v3, v8, :cond_0

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 30
    :cond_0
    const v3, 0x7fffffff

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    const v3, 0x7fffffff

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    :cond_1
    move-object v13, v14

    .line 58
    :goto_3
    aget-object v18, v23, v12

    .line 59
    const/4 v8, 0x0

    move v3, v6

    :goto_4
    iget v6, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v8, v6, :cond_19

    .line 60
    aget v6, v18, v8

    move/from16 v0, v29

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 61
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v30

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_2

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move/from16 v0, v24

    if-gt v6, v0, :cond_12

    :cond_2
    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_3

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move/from16 v0, v25

    if-gt v6, v0, :cond_12

    :cond_3
    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_4

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    move/from16 v0, v26

    if-gt v6, v0, :cond_12

    :cond_4
    const/4 v6, 0x1

    move v14, v6

    .line 63
    :goto_5
    if-nez v14, :cond_5

    if-eqz v28, :cond_8

    .line 64
    :cond_5
    if-eqz v14, :cond_13

    const/4 v6, 0x2

    .line 65
    :goto_6
    aget v11, v18, v8

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v31

    .line 66
    if-eqz v31, :cond_6

    .line 67
    add-int/lit16 v6, v6, 0x3e8

    .line 68
    :cond_6
    if-le v6, v5, :cond_14

    const/4 v11, 0x1

    .line 69
    :goto_7
    if-ne v6, v5, :cond_7

    .line 70
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/dlf;->a()I

    move-result v11

    .line 71
    if-eq v11, v3, :cond_15

    .line 72
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/dlf;->a()I

    move-result v11

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/dqy;->a(II)I

    move-result v11

    .line 74
    :goto_8
    if-eqz v31, :cond_17

    if-eqz v14, :cond_17

    .line 75
    if-lez v11, :cond_16

    const/4 v11, 0x1

    .line 76
    :cond_7
    :goto_9
    if-eqz v11, :cond_8

    .line 80
    move-object/from16 v0, v30

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    .line 81
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/dlf;->a()I

    move-result v3

    move v5, v6

    move v7, v8

    move-object v9, v10

    .line 82
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 32
    :cond_9
    const v8, 0x7fffffff

    .line 33
    const/4 v3, 0x0

    :goto_a
    iget v11, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v3, v11, :cond_e

    .line 34
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v30

    .line 35
    move-object/from16 v0, v30

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-lez v11, :cond_a

    move-object/from16 v0, v30

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    if-lez v11, :cond_a

    .line 36
    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move/from16 v32, v0

    .line 37
    if-eqz v27, :cond_41

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_b

    const/4 v11, 0x1

    move v13, v11

    :goto_b
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    const/4 v11, 0x1

    :goto_c
    if-eq v13, v11, :cond_41

    move/from16 v13, v16

    move/from16 v18, v17

    .line 41
    :goto_d
    mul-int v11, v31, v13

    mul-int v33, v32, v18

    move/from16 v0, v33

    if-lt v11, v0, :cond_d

    .line 42
    new-instance v11, Landroid/graphics/Point;

    mul-int v13, v18, v32

    move/from16 v0, v31

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v13

    move/from16 v0, v18

    invoke-direct {v11, v0, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 45
    :goto_e
    move-object/from16 v0, v30

    iget v13, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move/from16 v18, v0

    mul-int v13, v13, v18

    .line 46
    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3f7ae148    # 0.98f

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v18

    move/from16 v1, v31

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v30

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move/from16 v18, v0

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    const v30, 0x3f7ae148    # 0.98f

    mul-float v11, v11, v30

    float-to-int v11, v11

    move/from16 v0, v18

    if-lt v0, v11, :cond_a

    if-ge v13, v8, :cond_a

    move v8, v13

    .line 48
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 37
    :cond_b
    const/4 v11, 0x0

    move v13, v11

    goto :goto_b

    :cond_c
    const/4 v11, 0x0

    goto :goto_c

    .line 43
    :cond_d
    new-instance v11, Landroid/graphics/Point;

    mul-int v18, v13, v31

    move/from16 v0, v18

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v11, v0, v13}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_e

    .line 49
    :cond_e
    const v3, 0x7fffffff

    if-eq v8, v3, :cond_11

    .line 50
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v11, v3

    :goto_f
    if-ltz v11, :cond_11

    .line 51
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dlf;->a()I

    move-result v3

    .line 53
    const/4 v13, -0x1

    if-eq v3, v13, :cond_f

    if-le v3, v8, :cond_10

    .line 54
    :cond_f
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    :cond_10
    add-int/lit8 v3, v11, -0x1

    move v11, v3

    goto :goto_f

    :cond_11
    move-object v13, v14

    .line 56
    goto/16 :goto_3

    .line 62
    :cond_12
    const/4 v6, 0x0

    move v14, v6

    goto/16 :goto_5

    .line 64
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_6

    .line 68
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 73
    :cond_15
    move-object/from16 v0, v30

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/ads/dqy;->a(II)I

    move-result v11

    goto/16 :goto_8

    .line 75
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_17
    if-gez v11, :cond_18

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 83
    :cond_19
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v6, v3

    goto/16 :goto_1

    .line 84
    :cond_1a
    if-nez v9, :cond_1c

    const/4 v3, 0x0

    .line 88
    :goto_10
    aput-object v3, v21, v19

    .line 89
    aget-object v3, v21, v19

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    .line 90
    :cond_1b
    :goto_11
    aget-object v4, p2, v19

    iget v4, v4, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-lez v4, :cond_1e

    const/4 v4, 0x1

    :goto_12
    or-int/2addr v4, v15

    .line 91
    :goto_13
    add-int/lit8 v5, v19, 0x1

    move/from16 v19, v5

    move v15, v4

    goto/16 :goto_0

    .line 85
    :cond_1c
    new-instance v3, Lcom/google/android/gms/internal/ads/dra;

    invoke-direct {v3, v9, v7}, Lcom/google/android/gms/internal/ads/dra;-><init>(Lcom/google/android/gms/internal/ads/dqs;I)V

    goto :goto_10

    .line 89
    :cond_1d
    const/4 v3, 0x0

    goto :goto_11

    .line 90
    :cond_1e
    const/4 v4, 0x0

    goto :goto_12

    .line 92
    :cond_1f
    const/4 v11, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v3, 0x0

    move v12, v3

    :goto_14
    move/from16 v0, v20

    if-ge v12, v0, :cond_3f

    .line 95
    aget-object v3, p1, v12

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dll;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 172
    aget-object v3, p1, v12

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dll;->a()I

    aget-object v13, p2, v12

    aget-object v14, p3, v12

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/drb;->i:Z

    move/from16 v16, v0

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v5, 0x0

    .line 175
    const/4 v4, 0x0

    .line 176
    const/4 v3, 0x0

    move v9, v3

    :goto_15
    iget v3, v13, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ge v9, v3, :cond_3c

    .line 177
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v8

    .line 178
    aget-object v17, v14, v9

    .line 179
    const/4 v6, 0x0

    :goto_16
    iget v3, v8, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v6, v3, :cond_3b

    .line 180
    aget v3, v17, v6

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 181
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v3

    .line 182
    iget v3, v3, Lcom/google/android/gms/internal/ads/dlf;->p:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    .line 183
    :goto_17
    if-eqz v3, :cond_3a

    const/4 v3, 0x2

    .line 184
    :goto_18
    aget v18, v17, v6

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 185
    add-int/lit16 v3, v3, 0x3e8

    .line 186
    :cond_20
    if-le v3, v4, :cond_40

    move v5, v6

    move-object v7, v8

    .line 190
    :goto_19
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    goto :goto_16

    :pswitch_0
    move v4, v10

    move v5, v11

    .line 195
    :goto_1a
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    move v10, v4

    move v11, v5

    goto :goto_14

    .line 97
    :pswitch_1
    if-nez v11, :cond_3d

    .line 98
    aget-object v9, p2, v12

    aget-object v11, p3, v12

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/drb;->i:Z

    .line 99
    if-eqz v15, :cond_21

    .line 101
    :cond_21
    const/4 v6, -0x1

    .line 102
    const/4 v5, -0x1

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v3, 0x0

    :goto_1b
    iget v7, v9, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ge v3, v7, :cond_29

    .line 105
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v14

    .line 106
    aget-object v16, v11, v3

    .line 107
    const/4 v7, 0x0

    :goto_1c
    iget v8, v14, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v7, v8, :cond_28

    .line 108
    aget v8, v16, v7

    invoke-static {v8, v13}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 109
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v17

    .line 110
    aget v18, v16, v7

    .line 111
    move-object/from16 v0, v17

    iget v8, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_24

    const/4 v8, 0x1

    .line 112
    :goto_1d
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dqy;->a(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 113
    if-eqz v8, :cond_25

    .line 114
    const/4 v8, 0x4

    .line 119
    :goto_1e
    const/16 v17, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 120
    add-int/lit16 v8, v8, 0x3e8

    .line 123
    :cond_22
    if-le v8, v4, :cond_23

    move v4, v8

    move v5, v7

    move v6, v3

    .line 127
    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 111
    :cond_24
    const/4 v8, 0x0

    goto :goto_1d

    .line 115
    :cond_25
    const/4 v8, 0x3

    goto :goto_1e

    .line 116
    :cond_26
    if-eqz v8, :cond_27

    .line 117
    const/4 v8, 0x2

    goto :goto_1e

    .line 118
    :cond_27
    const/4 v8, 0x1

    goto :goto_1e

    .line 128
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 129
    :cond_29
    const/4 v3, -0x1

    if-ne v6, v3, :cond_2a

    .line 130
    const/4 v3, 0x0

    .line 133
    :goto_1f
    aput-object v3, v21, v12

    .line 134
    aget-object v3, v21, v12

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    :goto_20
    move v4, v10

    move v5, v3

    goto :goto_1a

    .line 131
    :cond_2a
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v4

    .line 132
    new-instance v3, Lcom/google/android/gms/internal/ads/dra;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/dra;-><init>(Lcom/google/android/gms/internal/ads/dqs;I)V

    goto :goto_1f

    .line 134
    :cond_2b
    const/4 v3, 0x0

    goto :goto_20

    .line 135
    :pswitch_2
    if-nez v10, :cond_3d

    .line 136
    aget-object v13, p2, v12

    aget-object v14, p3, v12

    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/drb;->i:Z

    move/from16 v16, v0

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    const/4 v4, 0x0

    move v10, v4

    :goto_21
    iget v4, v13, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ge v10, v4, :cond_36

    .line 141
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v8

    .line 142
    aget-object v17, v14, v10

    .line 143
    const/4 v6, 0x0

    :goto_22
    iget v4, v8, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v6, v4, :cond_35

    .line 144
    aget v4, v17, v6

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 145
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v18

    .line 146
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    .line 147
    :goto_23
    move-object/from16 v0, v18

    iget v9, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2f

    const/4 v9, 0x1

    .line 148
    :goto_24
    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/dqy;->a(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 149
    if-eqz v4, :cond_30

    .line 150
    const/4 v4, 0x6

    .line 160
    :goto_25
    aget v9, v17, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/dqy;->b(IZ)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 161
    add-int/lit16 v4, v4, 0x3e8

    .line 162
    :cond_2c
    if-le v4, v3, :cond_2d

    move v3, v4

    move v5, v6

    move-object v7, v8

    .line 166
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 146
    :cond_2e
    const/4 v4, 0x0

    goto :goto_23

    .line 147
    :cond_2f
    const/4 v9, 0x0

    goto :goto_24

    .line 151
    :cond_30
    if-nez v9, :cond_31

    .line 152
    const/4 v4, 0x5

    goto :goto_25

    .line 153
    :cond_31
    const/4 v4, 0x4

    goto :goto_25

    .line 154
    :cond_32
    if-eqz v4, :cond_33

    .line 155
    const/4 v4, 0x3

    goto :goto_25

    .line 156
    :cond_33
    if-eqz v9, :cond_2d

    .line 157
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/dqy;->a(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 158
    const/4 v4, 0x2

    goto :goto_25

    .line 159
    :cond_34
    const/4 v4, 0x1

    goto :goto_25

    .line 167
    :cond_35
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_21

    .line 168
    :cond_36
    if-nez v7, :cond_37

    const/4 v3, 0x0

    .line 170
    :goto_26
    aput-object v3, v21, v12

    .line 171
    aget-object v3, v21, v12

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    :goto_27
    move v4, v3

    move v5, v11

    goto/16 :goto_1a

    .line 169
    :cond_37
    new-instance v3, Lcom/google/android/gms/internal/ads/dra;

    invoke-direct {v3, v7, v5}, Lcom/google/android/gms/internal/ads/dra;-><init>(Lcom/google/android/gms/internal/ads/dqs;I)V

    goto :goto_26

    .line 171
    :cond_38
    const/4 v3, 0x0

    goto :goto_27

    .line 182
    :cond_39
    const/4 v3, 0x0

    goto/16 :goto_17

    .line 183
    :cond_3a
    const/4 v3, 0x1

    goto/16 :goto_18

    .line 191
    :cond_3b
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_15

    .line 192
    :cond_3c
    if-nez v7, :cond_3e

    const/4 v3, 0x0

    .line 194
    :goto_28
    aput-object v3, v21, v12

    :cond_3d
    move v4, v10

    move v5, v11

    goto/16 :goto_1a

    .line 193
    :cond_3e
    new-instance v3, Lcom/google/android/gms/internal/ads/dra;

    invoke-direct {v3, v7, v5}, Lcom/google/android/gms/internal/ads/dra;-><init>(Lcom/google/android/gms/internal/ads/dqs;I)V

    goto :goto_28

    .line 196
    :cond_3f
    return-object v21

    :cond_40
    move v3, v4

    goto/16 :goto_19

    :cond_41
    move/from16 v13, v17

    move/from16 v18, v16

    goto/16 :goto_d

    :cond_42
    move v4, v15

    goto/16 :goto_13

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
