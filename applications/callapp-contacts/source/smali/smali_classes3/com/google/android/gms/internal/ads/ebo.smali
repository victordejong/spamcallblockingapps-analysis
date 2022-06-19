.class public final Lcom/google/android/gms/internal/ads/ebo;
.super Lcom/google/android/gms/internal/ads/ebp;
.source "SourceFile"


# static fields
.field private static final b:[I


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/ebt;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/ebn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 193
    sput-object v0, Lcom/google/android/gms/internal/ads/ebo;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ebo;-><init>(Lcom/google/android/gms/internal/ads/ebt;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ebt;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ebp;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebo;->c:Lcom/google/android/gms/internal/ads/ebt;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/ebn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ebn;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebo;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    sub-int/2addr p0, p1

    return p0
.end method

.method private static b(IZ)Z
    .locals 1

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final a([Lcom/google/android/gms/internal/ads/dwc;[Lcom/google/android/gms/internal/ads/ebi;[[[I)[Lcom/google/android/gms/internal/ads/ebu;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 7
    array-length v1, v0

    .line 8
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/ebu;

    move-object/from16 v3, p0

    .line 9
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/ebo;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/ebn;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v6, v1, :cond_23

    .line 13
    aget-object v12, v0, v6

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/dwc;->a()I

    move-result v12

    if-ne v8, v12, :cond_22

    if-nez v7, :cond_22

    .line 15
    aget-object v7, p2, v6

    aget-object v12, p3, v6

    iget v13, v4, Lcom/google/android/gms/internal/ads/ebn;->a:I

    iget v14, v4, Lcom/google/android/gms/internal/ads/ebn;->b:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/ebn;->c:I

    iget v9, v4, Lcom/google/android/gms/internal/ads/ebn;->f:I

    iget v8, v4, Lcom/google/android/gms/internal/ads/ebn;->g:I

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/ebn;->h:Z

    iget-boolean v10, v4, Lcom/google/android/gms/internal/ads/ebn;->d:Z

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/ebn;->e:Z

    move/from16 v22, v1

    move-object/from16 v18, v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    .line 22
    :goto_1
    iget v1, v7, Lcom/google/android/gms/internal/ads/ebi;->b:I

    if-ge v3, v1, :cond_1f

    .line 1005
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/ebi;->c:[Lcom/google/android/gms/internal/ads/ebg;

    aget-object v1, v1, v3

    move-object/from16 v23, v7

    .line 25
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v24, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/ebg;->a:I

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v25, v6

    const/4 v2, 0x0

    .line 26
    :goto_2
    iget v6, v1, Lcom/google/android/gms/internal/ads/ebg;->a:I

    if-ge v2, v6, :cond_0

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_c

    if-ne v8, v2, :cond_1

    goto/16 :goto_a

    :cond_1
    move/from16 v26, v4

    const/4 v6, 0x0

    .line 32
    :goto_3
    iget v4, v1, Lcom/google/android/gms/internal/ads/ebg;->a:I

    if-ge v6, v4, :cond_9

    .line 1006
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v4, v4, v6

    move-object/from16 v27, v0

    .line 34
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-lez v0, :cond_7

    iget v0, v4, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-lez v0, :cond_7

    .line 35
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzht;->width:I

    move/from16 v28, v10

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzht;->height:I

    move/from16 v29, v5

    if-eqz v5, :cond_4

    if-le v0, v10, :cond_2

    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_4
    move/from16 v30, v8

    if-le v9, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    if-eq v5, v8, :cond_5

    move v5, v9

    move/from16 v31, v5

    move/from16 v8, v30

    goto :goto_6

    :cond_4
    move/from16 v30, v8

    :cond_5
    move v8, v9

    move/from16 v31, v8

    move/from16 v5, v30

    :goto_6
    mul-int v9, v0, v5

    move/from16 v32, v15

    mul-int v15, v10, v8

    if-lt v9, v15, :cond_6

    .line 41
    new-instance v5, Landroid/graphics/Point;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result v0

    invoke-direct {v5, v8, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_7

    .line 42
    :cond_6
    new-instance v0, Landroid/graphics/Point;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result v8

    invoke-direct {v0, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v5, v0

    .line 44
    :goto_7
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzht;->height:I

    mul-int v0, v0, v8

    .line 45
    iget v8, v4, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const v10, 0x3f7ae148    # 0.98f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-lt v8, v9, :cond_8

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    if-lt v4, v5, :cond_8

    if-ge v0, v2, :cond_8

    move v2, v0

    goto :goto_8

    :cond_7
    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v28, v10

    move/from16 v32, v15

    :cond_8
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v27

    move/from16 v10, v28

    move/from16 v5, v29

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v15, v32

    goto/16 :goto_3

    :cond_9
    move-object/from16 v27, v0

    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v28, v10

    move/from16 v32, v15

    const v0, 0x7fffffff

    if-eq v2, v0, :cond_d

    .line 49
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_9
    if-ltz v0, :cond_d

    .line 50
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2006
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v4, v5, v4

    .line 51
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzht;->zzfd()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    if-le v4, v2, :cond_b

    .line 53
    :cond_a
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_c
    :goto_a
    move-object/from16 v27, v0

    move/from16 v26, v4

    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v28, v10

    move/from16 v32, v15

    .line 57
    :cond_d
    aget-object v0, v12, v3

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v21

    move/from16 v4, v26

    const/4 v2, 0x0

    .line 58
    :goto_b
    iget v9, v1, Lcom/google/android/gms/internal/ads/ebg;->a:I

    if-ge v2, v9, :cond_1e

    .line 59
    aget v9, v0, v2

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 3006
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v9, v9, v2

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzht;->width:I

    const/4 v15, -0x1

    if-eq v10, v15, :cond_e

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-gt v10, v13, :cond_11

    :cond_e
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-eq v10, v15, :cond_f

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-gt v10, v14, :cond_11

    :cond_f
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzht;->zzahk:I

    if-eq v10, v15, :cond_10

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzht;->zzahk:I

    move/from16 v15, v32

    if-gt v10, v15, :cond_12

    goto :goto_c

    :cond_10
    move/from16 v15, v32

    :goto_c
    const/4 v10, 0x1

    goto :goto_d

    :cond_11
    move/from16 v15, v32

    :cond_12
    const/4 v10, 0x0

    :goto_d
    if-nez v10, :cond_14

    if-eqz v28, :cond_13

    goto :goto_e

    :cond_13
    move-object/from16 v21, v0

    move-object/from16 v19, v1

    move/from16 v20, v4

    goto :goto_14

    :cond_14
    :goto_e
    move-object/from16 v19, v1

    move/from16 v20, v4

    if-eqz v10, :cond_15

    const/4 v1, 0x2

    goto :goto_f

    :cond_15
    const/4 v1, 0x1

    .line 64
    :goto_f
    aget v4, v0, v2

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    add-int/lit16 v1, v1, 0x3e8

    :cond_16
    if-le v1, v5, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    :goto_10
    if-ne v1, v5, :cond_1b

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzht;->zzfd()I

    move-result v0

    if-eq v0, v6, :cond_18

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzht;->zzfd()I

    move-result v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/ebo;->a(II)I

    move-result v0

    goto :goto_11

    .line 72
    :cond_18
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzht;->zzahk:I

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/ebo;->a(II)I

    move-result v0

    :goto_11
    if-eqz v4, :cond_19

    if-eqz v10, :cond_19

    if-lez v0, :cond_1a

    goto :goto_12

    :cond_19
    if-gez v0, :cond_1a

    :goto_12
    const/4 v0, 0x1

    goto :goto_13

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    :goto_13
    if-eqz v0, :cond_1d

    .line 79
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzht;->zzahk:I

    .line 80
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzht;->zzfd()I

    move-result v4

    move v8, v0

    move v5, v1

    move v6, v4

    move-object/from16 v27, v19

    move v4, v2

    goto :goto_15

    :cond_1c
    move-object/from16 v21, v0

    move-object/from16 v19, v1

    move/from16 v20, v4

    move/from16 v15, v32

    :cond_1d
    :goto_14
    move/from16 v4, v20

    :goto_15
    add-int/lit8 v2, v2, 0x1

    move/from16 v32, v15

    move-object/from16 v1, v19

    move-object/from16 v0, v21

    goto/16 :goto_b

    :cond_1e
    move/from16 v20, v4

    move/from16 v15, v32

    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v5

    move/from16 v21, v8

    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v0, v27

    move/from16 v10, v28

    move/from16 v5, v29

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v20, v6

    move/from16 v6, v25

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v27, v0

    move-object/from16 v24, v2

    move/from16 v26, v4

    move/from16 v25, v6

    if-nez v27, :cond_20

    const/4 v9, 0x0

    goto :goto_16

    .line 84
    :cond_20
    new-instance v9, Lcom/google/android/gms/internal/ads/ebq;

    move/from16 v1, v26

    move-object/from16 v0, v27

    invoke-direct {v9, v0, v1}, Lcom/google/android/gms/internal/ads/ebq;-><init>(Lcom/google/android/gms/internal/ads/ebg;I)V

    .line 85
    :goto_16
    aput-object v9, v24, v25

    .line 86
    aget-object v0, v24, v25

    if-eqz v0, :cond_21

    const/4 v7, 0x1

    goto :goto_17

    :cond_21
    const/4 v7, 0x0

    goto :goto_17

    :cond_22
    move/from16 v22, v1

    move-object/from16 v24, v2

    move-object/from16 v18, v4

    move/from16 v25, v6

    :goto_17
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v4, v18

    move/from16 v1, v22

    move-object/from16 v2, v24

    goto/16 :goto_0

    :cond_23
    move-object/from16 v24, v2

    move-object/from16 v18, v4

    move v3, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_18
    if-ge v0, v3, :cond_44

    .line 92
    aget-object v4, p1, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dwc;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_38

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2c

    .line 163
    aget-object v4, p1, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dwc;->a()I

    aget-object v4, p2, v0

    aget-object v5, p3, v0

    move-object/from16 v6, v18

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/ebn;->e:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 167
    :goto_19
    iget v12, v4, Lcom/google/android/gms/internal/ads/ebi;->b:I

    if-ge v8, v12, :cond_2a

    .line 7005
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/ebi;->c:[Lcom/google/android/gms/internal/ads/ebg;

    aget-object v12, v12, v8

    .line 169
    aget-object v13, v5, v8

    const/4 v14, 0x0

    .line 170
    :goto_1a
    iget v15, v12, Lcom/google/android/gms/internal/ads/ebg;->a:I

    if-ge v14, v15, :cond_29

    .line 171
    aget v15, v13, v14

    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 7006
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v15, v15, v14

    .line 173
    iget v15, v15, Lcom/google/android/gms/internal/ads/zzht;->zzaie:I

    const/16 v17, 0x1

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_24

    const/4 v15, 0x1

    goto :goto_1b

    :cond_24
    const/4 v15, 0x0

    :goto_1b
    move/from16 v22, v3

    if-eqz v15, :cond_25

    const/4 v15, 0x2

    goto :goto_1c

    :cond_25
    const/4 v15, 0x1

    .line 175
    :goto_1c
    aget v3, v13, v14

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v3

    if-eqz v3, :cond_26

    add-int/lit16 v15, v15, 0x3e8

    :cond_26
    if-le v15, v10, :cond_28

    move-object v11, v12

    move v9, v14

    move v10, v15

    goto :goto_1d

    :cond_27
    move/from16 v22, v3

    move-object/from16 v18, v4

    :cond_28
    :goto_1d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v18

    move/from16 v3, v22

    goto :goto_1a

    :cond_29
    move/from16 v22, v3

    move-object/from16 v18, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_2a
    move/from16 v22, v3

    if-nez v11, :cond_2b

    const/4 v3, 0x0

    goto :goto_1e

    .line 184
    :cond_2b
    new-instance v3, Lcom/google/android/gms/internal/ads/ebq;

    invoke-direct {v3, v11, v9}, Lcom/google/android/gms/internal/ads/ebq;-><init>(Lcom/google/android/gms/internal/ads/ebg;I)V

    .line 185
    :goto_1e
    aput-object v3, v24, v0

    const/4 v5, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    goto/16 :goto_2f

    :cond_2c
    move/from16 v22, v3

    move-object/from16 v6, v18

    if-nez v2, :cond_39

    .line 131
    aget-object v2, p2, v0

    aget-object v3, p3, v0

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/ebn;->e:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 135
    :goto_1f
    iget v11, v2, Lcom/google/android/gms/internal/ads/ebi;->b:I

    if-ge v7, v11, :cond_34

    .line 6005
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/ebi;->c:[Lcom/google/android/gms/internal/ads/ebg;

    aget-object v11, v11, v7

    .line 137
    aget-object v12, v3, v7

    move-object v13, v10

    move v10, v9

    move v9, v8

    const/4 v8, 0x0

    .line 138
    :goto_20
    iget v14, v11, Lcom/google/android/gms/internal/ads/ebg;->a:I

    if-ge v8, v14, :cond_33

    .line 139
    aget v14, v12, v8

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 6006
    iget-object v14, v11, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v14, v14, v8

    .line 141
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzht;->zzaie:I

    const/16 v17, 0x1

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_2d

    const/4 v15, 0x1

    goto :goto_21

    :cond_2d
    const/4 v15, 0x0

    .line 142
    :goto_21
    iget v14, v14, Lcom/google/android/gms/internal/ads/zzht;->zzaie:I

    const/16 v16, 0x2

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_2e

    const/4 v14, 0x1

    goto :goto_22

    :cond_2e
    const/4 v14, 0x0

    :goto_22
    if-eqz v15, :cond_2f

    const/4 v14, 0x3

    goto :goto_23

    :cond_2f
    if-eqz v14, :cond_32

    const/4 v14, 0x1

    .line 151
    :goto_23
    aget v15, v12, v8

    const/4 v5, 0x0

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v15

    if-eqz v15, :cond_30

    add-int/lit16 v14, v14, 0x3e8

    :cond_30
    if-le v14, v10, :cond_32

    move v9, v8

    move-object v13, v11

    move v10, v14

    goto :goto_24

    :cond_31
    const/16 v16, 0x2

    :cond_32
    :goto_24
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x3

    goto :goto_20

    :cond_33
    const/16 v16, 0x2

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    move v9, v10

    move-object v10, v13

    const/4 v5, 0x3

    goto :goto_1f

    :cond_34
    const/16 v16, 0x2

    if-nez v10, :cond_35

    const/4 v2, 0x0

    goto :goto_25

    .line 160
    :cond_35
    new-instance v2, Lcom/google/android/gms/internal/ads/ebq;

    invoke-direct {v2, v10, v8}, Lcom/google/android/gms/internal/ads/ebq;-><init>(Lcom/google/android/gms/internal/ads/ebg;I)V

    .line 161
    :goto_25
    aput-object v2, v24, v0

    .line 162
    aget-object v2, v24, v0

    if-eqz v2, :cond_36

    const/4 v4, 0x1

    goto :goto_26

    :cond_36
    const/4 v4, 0x0

    :goto_26
    move v2, v4

    :cond_37
    :goto_27
    const/4 v5, -0x1

    const/4 v15, 0x0

    goto/16 :goto_2f

    :cond_38
    move/from16 v22, v3

    move-object/from16 v6, v18

    :cond_39
    const/16 v16, 0x2

    goto :goto_27

    :cond_3a
    move/from16 v22, v3

    move-object/from16 v6, v18

    const/16 v16, 0x2

    if-nez v1, :cond_37

    .line 95
    aget-object v1, p2, v0

    aget-object v3, p3, v0

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/ebn;->e:Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 101
    :goto_28
    iget v10, v1, Lcom/google/android/gms/internal/ads/ebi;->b:I

    if-ge v5, v10, :cond_41

    .line 4005
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/ebi;->c:[Lcom/google/android/gms/internal/ads/ebg;

    aget-object v10, v10, v5

    .line 103
    aget-object v11, v3, v5

    move v12, v9

    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    .line 104
    :goto_29
    iget v13, v10, Lcom/google/android/gms/internal/ads/ebg;->a:I

    if-ge v7, v13, :cond_40

    .line 105
    aget v13, v11, v7

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 4006
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v13, v13, v7

    .line 107
    aget v14, v11, v7

    .line 108
    iget v13, v13, Lcom/google/android/gms/internal/ads/zzht;->zzaie:I

    const/4 v15, 0x1

    and-int/2addr v13, v15

    if-eqz v13, :cond_3b

    const/4 v13, 0x1

    goto :goto_2a

    :cond_3b
    const/4 v13, 0x0

    :goto_2a
    if-eqz v13, :cond_3c

    const/4 v13, 0x2

    goto :goto_2b

    :cond_3c
    const/4 v13, 0x1

    :goto_2b
    const/4 v15, 0x0

    .line 114
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/ebo;->b(IZ)Z

    move-result v14

    if-eqz v14, :cond_3d

    add-int/lit16 v13, v13, 0x3e8

    :cond_3d
    if-le v13, v8, :cond_3f

    move v9, v5

    move v12, v7

    move v8, v13

    goto :goto_2c

    :cond_3e
    const/4 v15, 0x0

    :cond_3f
    :goto_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_40
    const/4 v15, 0x0

    add-int/lit8 v5, v5, 0x1

    move v7, v8

    move v8, v9

    move v9, v12

    goto :goto_28

    :cond_41
    const/4 v5, -0x1

    const/4 v15, 0x0

    if-ne v8, v5, :cond_42

    const/4 v3, 0x0

    goto :goto_2d

    .line 5005
    :cond_42
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ebi;->c:[Lcom/google/android/gms/internal/ads/ebg;

    aget-object v1, v1, v8

    .line 127
    new-instance v3, Lcom/google/android/gms/internal/ads/ebq;

    invoke-direct {v3, v1, v9}, Lcom/google/android/gms/internal/ads/ebq;-><init>(Lcom/google/android/gms/internal/ads/ebg;I)V

    .line 128
    :goto_2d
    aput-object v3, v24, v0

    .line 129
    aget-object v1, v24, v0

    if-eqz v1, :cond_43

    const/4 v4, 0x1

    goto :goto_2e

    :cond_43
    const/4 v4, 0x0

    :goto_2e
    move v1, v4

    :goto_2f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v18, v6

    move/from16 v3, v22

    goto/16 :goto_18

    :cond_44
    return-object v24
.end method
