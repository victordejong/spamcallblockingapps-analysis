.class final Lcom/google/android/exoplayer2/text/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/util/u;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field private final h:[I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 132
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->h:[I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/text/b;
    .locals 7

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->b:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->c:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->f:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->g:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 1127
    iget v0, v0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-eqz v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 1144
    iget v0, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 211
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 2127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ne v0, v1, :cond_6

    .line 211
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->i:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 217
    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->f:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/c/a$a;->g:I

    mul-int v0, v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_5

    .line 220
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 222
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/c/a$a;->h:[I

    aget v4, v6, v4

    aput v4, v2, v3

    :goto_1
    move v3, v5

    goto :goto_0

    .line 224
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_3

    and-int/lit8 v5, v4, 0x3f

    goto :goto_2

    :cond_3
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    .line 229
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    or-int/2addr v5, v6

    :goto_2
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 230
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/c/a$a;->h:[I

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    aget v4, v4, v6

    :goto_3
    add-int/2addr v5, v3

    .line 231
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 237
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->f:I

    iget v3, p0, Lcom/google/android/exoplayer2/text/c/a$a;->g:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 238
    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    new-instance v2, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 2559
    iput-object v0, v2, Lcom/google/android/exoplayer2/text/b$a;->b:Landroid/graphics/Bitmap;

    .line 241
    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->d:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/exoplayer2/text/c/a$a;->b:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 2655
    iput v0, v2, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 2675
    iput v1, v2, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->e:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/exoplayer2/text/c/a$a;->c:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 244
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object v0

    .line 3634
    iput v1, v0, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 245
    iget v1, p0, Lcom/google/android/exoplayer2/text/c/a$a;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/text/c/a$a;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3727
    iput v1, v0, Lcom/google/android/exoplayer2/text/b$a;->g:F

    .line 246
    iget v1, p0, Lcom/google/android/exoplayer2/text/c/a$a;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/text/c/a$a;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3747
    iput v1, v0, Lcom/google/android/exoplayer2/text/b$a;->h:F

    .line 248
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 136
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 142
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/c/a$a;->h:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 143
    div-int/lit8 v2, p2, 0x5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v5

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v7

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v8

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v9

    int-to-double v10, v6

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    mul-double v12, v12, v6

    add-double/2addr v12, v10

    double-to-int v12, v12

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v8, v8, -0x80

    move/from16 p2, v4

    int-to-double v3, v8

    mul-double v13, v13, v3

    sub-double v13, v10, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v15

    sub-double/2addr v13, v6

    double-to-int v6, v13

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double v3, v3, v7

    add-double/2addr v10, v3

    double-to-int v3, v10

    .line 153
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/c/a$a;->h:[I

    shl-int/lit8 v7, v9, 0x18

    const/16 v8, 0xff

    const/4 v9, 0x0

    .line 155
    invoke-static {v12, v9, v8}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    .line 156
    invoke-static {v6, v9, v8}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 157
    invoke-static {v3, v9, v8}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v3

    or-int/2addr v3, v6

    aput v3, v4, v5

    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 159
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/text/c/a$a;->i:Z

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->b:I

    .line 253
    iput v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->c:I

    .line 254
    iput v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->d:I

    .line 255
    iput v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->e:I

    .line 256
    iput v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->f:I

    .line 257
    iput v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->g:I

    .line 258
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 259
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/c/a$a;->i:Z

    return-void
.end method
