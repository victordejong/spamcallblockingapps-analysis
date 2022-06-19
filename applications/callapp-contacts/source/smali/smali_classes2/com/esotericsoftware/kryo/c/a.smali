.class public final Lcom/esotericsoftware/kryo/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static a:Ljava/util/Random;


# instance fields
.field public b:I

.field c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:Z

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/c/a;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/a;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/c/a;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 v1, p1, 0x1

    or-int/2addr p1, v1

    shr-int/lit8 v1, p1, 0x2

    or-int/2addr p1, v1

    shr-int/lit8 v1, p1, 0x4

    or-int/2addr p1, v1

    shr-int/lit8 v1, p1, 0x8

    or-int/2addr p1, v1

    shr-int/lit8 v1, p1, 0x10

    or-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 72
    :goto_0
    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_2

    .line 75
    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->i:F

    ushr-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_1
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/a;->h:Z

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 80
    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->k:I

    add-int/lit8 p2, p1, -0x1

    .line 81
    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->g:I

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->j:I

    const/4 p1, 0x3

    .line 83
    iget p2, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->l:I

    .line 84
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->m:I

    .line 86
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/a;->l:I

    add-int/2addr p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    .line 87
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "loadFactor must be > 0: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initialCapacity is too large: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initialCapacity must be >= 0: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/a<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 92
    iget v0, p1, Lcom/esotericsoftware/kryo/c/a;->e:I

    iget v1, p1, Lcom/esotericsoftware/kryo/c/a;->i:F

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/a;-><init>(IF)V

    .line 93
    iget v0, p1, Lcom/esotericsoftware/kryo/c/a;->f:I

    iput v0, p0, Lcom/esotericsoftware/kryo/c/a;->f:I

    .line 94
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget p1, p1, Lcom/esotericsoftware/kryo/c/a;->b:I

    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;ITK;ITK;ITK;ITK;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 247
    iget-object v1, v0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    .line 248
    iget-object v2, v0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    .line 249
    iget v3, v0, Lcom/esotericsoftware/kryo/c/a;->g:I

    .line 250
    iget-boolean v4, v0, Lcom/esotericsoftware/kryo/c/a;->h:Z

    .line 255
    iget v5, v0, Lcom/esotericsoftware/kryo/c/a;->m:I

    if-eqz v4, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    const/4 v7, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 p1, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    const/16 v17, 0x0

    .line 259
    :goto_1
    sget-object v10, Lcom/esotericsoftware/kryo/c/a;->a:Ljava/util/Random;

    invoke-virtual {v10, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    move/from16 v18, v6

    const/4 v6, 0x1

    if-eqz v10, :cond_3

    if-eq v10, v6, :cond_2

    const/4 v9, 0x2

    if-eq v10, v9, :cond_1

    .line 280
    aget-object v9, v2, v15

    .line 281
    aput-object v7, v1, v15

    .line 282
    aput-object v8, v2, v15

    move-object v8, v9

    move-object/from16 v7, v16

    goto :goto_2

    .line 274
    :cond_1
    aget-object v9, v2, v13

    .line 275
    aput-object v7, v1, v13

    .line 276
    aput-object v8, v2, v13

    move-object v8, v9

    move-object v7, v14

    goto :goto_2

    .line 268
    :cond_2
    aget-object v9, v2, v11

    .line 269
    aput-object v7, v1, v11

    .line 270
    aput-object v8, v2, v11

    move-object v8, v9

    move-object v7, v12

    goto :goto_2

    .line 262
    :cond_3
    aget-object v10, v2, v9

    .line 263
    aput-object v7, v1, v9

    .line 264
    aput-object v8, v2, v9

    move-object/from16 v7, p1

    move-object v8, v10

    .line 287
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    and-int v10, v9, v3

    .line 289
    aget-object v11, v1, v10

    if-nez v11, :cond_5

    .line 291
    aput-object v7, v1, v10

    .line 292
    aput-object v8, v2, v10

    .line 293
    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v2, v0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v1, v2, :cond_4

    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_4
    return-void

    .line 297
    :cond_5
    invoke-virtual {v0, v9}, Lcom/esotericsoftware/kryo/c/a;->a(I)I

    move-result v12

    .line 298
    aget-object v13, v1, v12

    if-nez v13, :cond_7

    .line 300
    aput-object v7, v1, v12

    .line 301
    aput-object v8, v2, v12

    .line 302
    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v2, v0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v1, v2, :cond_6

    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_6
    return-void

    .line 306
    :cond_7
    invoke-virtual {v0, v9}, Lcom/esotericsoftware/kryo/c/a;->b(I)I

    move-result v14

    .line 307
    aget-object v19, v1, v14

    if-nez v19, :cond_9

    .line 309
    aput-object v7, v1, v14

    .line 310
    aput-object v8, v2, v14

    .line 311
    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v2, v0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v1, v2, :cond_8

    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_8
    return-void

    :cond_9
    if-eqz v4, :cond_c

    .line 316
    invoke-virtual {v0, v9}, Lcom/esotericsoftware/kryo/c/a;->c(I)I

    move-result v9

    .line 317
    aget-object v15, v1, v9

    if-nez v15, :cond_b

    .line 319
    aput-object v7, v1, v9

    .line 320
    aput-object v8, v2, v9

    .line 321
    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v2, v0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v1, v2, :cond_a

    iget v1, v0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v16, v15

    move v15, v9

    :cond_c
    add-int/lit8 v6, v17, 0x1

    if-eq v6, v5, :cond_d

    move/from16 v17, v6

    move v9, v10

    move-object/from16 p1, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    move/from16 v6, v18

    move-object/from16 v14, v19

    goto/16 :goto_1

    .line 332
    :cond_d
    invoke-direct {v0, v7, v8}, Lcom/esotericsoftware/kryo/c/a;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    .line 107
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    .line 108
    iget v2, v11, Lcom/esotericsoftware/kryo/c/a;->g:I

    .line 109
    iget-boolean v3, v11, Lcom/esotericsoftware/kryo/c/a;->h:Z

    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    and-int v5, v4, v2

    .line 114
    aget-object v6, v0, v5

    .line 115
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object v1, v0, v5

    .line 117
    aput-object p2, v0, v5

    return-object v1

    .line 121
    :cond_0
    invoke-virtual {v11, v4}, Lcom/esotericsoftware/kryo/c/a;->a(I)I

    move-result v7

    .line 122
    aget-object v8, v0, v7

    .line 123
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object v1, v0, v7

    .line 125
    aput-object p2, v0, v7

    return-object v1

    .line 129
    :cond_1
    invoke-virtual {v11, v4}, Lcom/esotericsoftware/kryo/c/a;->b(I)I

    move-result v9

    .line 130
    aget-object v10, v0, v9

    .line 131
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object v1, v0, v9

    .line 133
    aput-object p2, v0, v9

    return-object v1

    :cond_2
    const/4 v2, -0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {v11, v4}, Lcom/esotericsoftware/kryo/c/a;->c(I)I

    move-result v2

    .line 141
    aget-object v4, v0, v2

    .line 142
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 143
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 144
    aput-object p2, v0, v2

    return-object v1

    :cond_3
    move v13, v2

    move-object v14, v4

    goto :goto_0

    :cond_4
    move-object v14, v12

    const/4 v13, -0x1

    .line 150
    :goto_0
    iget v2, v11, Lcom/esotericsoftware/kryo/c/a;->e:I

    iget v4, v11, Lcom/esotericsoftware/kryo/c/a;->f:I

    add-int/2addr v4, v2

    :goto_1
    if-ge v2, v4, :cond_6

    .line 151
    aget-object v15, v0, v2

    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 152
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 153
    aput-object p2, v0, v2

    return-object v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-nez v6, :cond_8

    .line 160
    aput-object v1, v0, v5

    .line 161
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 162
    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v1, v11, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v0, v1, :cond_7

    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_7
    return-object v12

    :cond_8
    if-nez v8, :cond_a

    .line 167
    aput-object v1, v0, v7

    .line 168
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 169
    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v1, v11, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v0, v1, :cond_9

    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_9
    return-object v12

    :cond_a
    if-nez v10, :cond_c

    .line 174
    aput-object v1, v0, v9

    .line 175
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, v0, v9

    .line 176
    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v1, v11, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v0, v1, :cond_b

    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_b
    return-object v12

    :cond_c
    if-eqz v3, :cond_e

    if-nez v14, :cond_e

    .line 181
    aput-object v1, v0, v13

    .line 182
    iget-object v0, v11, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, v0, v13

    .line 183
    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget v1, v11, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt v0, v1, :cond_d

    iget v0, v11, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v11, v0}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_d
    return-object v12

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move v7, v9

    move-object v8, v10

    move v9, v13

    move-object v10, v14

    .line 187
    invoke-direct/range {v0 .. v10}, Lcom/esotericsoftware/kryo/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-object v12
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 201
    iget v1, p0, Lcom/esotericsoftware/kryo/c/a;->g:I

    and-int v5, v0, v1

    .line 202
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v6, v1, v5

    if-nez v6, :cond_1

    .line 204
    aput-object p1, v1, v5

    .line 205
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, p1, v5

    .line 206
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c/a;->a(I)I

    move-result v7

    .line 211
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v8, v1, v7

    if-nez v8, :cond_3

    .line 213
    aput-object p1, v1, v7

    .line 214
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, p1, v7

    .line 215
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt p1, p2, :cond_2

    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_2
    return-void

    .line 219
    :cond_3
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c/a;->b(I)I

    move-result v9

    .line 220
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v10, v1, v9

    if-nez v10, :cond_5

    .line 222
    aput-object p1, v1, v9

    .line 223
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, p1, v9

    .line 224
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt p1, p2, :cond_4

    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 230
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/c/a;->h:Z

    if-eqz v3, :cond_8

    .line 231
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/c/a;->c(I)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-nez v2, :cond_7

    .line 234
    aput-object p1, v1, v0

    .line 235
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 236
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/a;->k:I

    if-lt p1, p2, :cond_6

    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    :cond_6
    return-void

    :cond_7
    move v11, v0

    move-object v12, v2

    goto :goto_0

    :cond_8
    move-object v12, v2

    const/4 v11, -0x1

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 241
    invoke-direct/range {v2 .. v12}, Lcom/esotericsoftware/kryo/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method private d(I)V
    .locals 6

    .line 579
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    iget v1, p0, Lcom/esotericsoftware/kryo/c/a;->f:I

    add-int/2addr v0, v1

    .line 581
    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    int-to-float v1, p1

    .line 582
    iget v2, p0, Lcom/esotericsoftware/kryo/c/a;->i:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/a;->k:I

    add-int/lit8 v1, p1, -0x1

    .line 583
    iput v1, p0, Lcom/esotericsoftware/kryo/c/a;->g:I

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/esotericsoftware/kryo/c/a;->j:I

    int-to-double v1, p1

    .line 585
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/esotericsoftware/kryo/c/a;->l:I

    const/16 v3, 0x8

    .line 586
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/a;->m:I

    .line 589
    iget v1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    ushr-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/c/a;->h:Z

    .line 591
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    .line 592
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    .line 594
    iget v4, p0, Lcom/esotericsoftware/kryo/c/a;->l:I

    add-int v5, p1, v4

    new-array v5, v5, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    add-int/2addr p1, v4

    .line 595
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    .line 597
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    .line 598
    iput v2, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    .line 599
    iput v2, p0, Lcom/esotericsoftware/kryo/c/a;->f:I

    if-lez p1, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 602
    aget-object p1, v1, v2

    if-eqz p1, :cond_1

    .line 603
    aget-object v4, v3, v2

    invoke-direct {p0, p1, v4}, Lcom/esotericsoftware/kryo/c/a;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 336
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->f:I

    iget v1, p0, Lcom/esotericsoftware/kryo/c/a;->l:I

    if-ne v0, v1, :cond_0

    .line 338
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/c/a;->d(I)V

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 343
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    add-int/2addr v1, v0

    .line 344
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 345
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v0, v0, 0x1

    .line 346
    iput v0, p0, Lcom/esotericsoftware/kryo/c/a;->f:I

    .line 347
    iget p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 1

    const v0, -0x41e0eb4f

    mul-int p1, p1, v0

    .line 610
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->j:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->g:I

    and-int/2addr p1, v0

    return p1
.end method

.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    .line 372
    iget v1, p0, Lcom/esotericsoftware/kryo/c/a;->e:I

    iget v2, p0, Lcom/esotericsoftware/kryo/c/a;->f:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 373
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b(I)I
    .locals 1

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    .line 615
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->j:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->g:I

    and-int/2addr p1, v0

    return p1
.end method

.method final c(I)I
    .locals 1

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    .line 620
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->j:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->g:I

    and-int/2addr p1, v0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 624
    iget v0, p0, Lcom/esotericsoftware/kryo/c/a;->b:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/a;->c:[Ljava/lang/Object;

    .line 628
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/a;->d:[Ljava/lang/Object;

    .line 629
    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_2

    .line 631
    aget-object v3, v1, v4

    if-eqz v3, :cond_1

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_4

    .line 639
    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    const-string v6, ", "

    .line 641
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    const/16 v1, 0x7d

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
