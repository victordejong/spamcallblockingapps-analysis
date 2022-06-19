.class final Landroidx/media2/exoplayer/external/text/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/util/p;

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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 138
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->h:[I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/text/a;
    .locals 12

    .line 212
    iget v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->b:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->c:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->f:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->g:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 1125
    iget v0, v0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 1142
    iget v0, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 217
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 2125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ne v0, v1, :cond_6

    .line 217
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->i:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 222
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 223
    iget v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->f:I

    iget v2, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->g:I

    mul-int v0, v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_5

    .line 226
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 228
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->h:[I

    aget v4, v6, v4

    aput v4, v2, v3

    :goto_1
    move v3, v5

    goto :goto_0

    .line 230
    :cond_2
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_3

    and-int/lit8 v5, v4, 0x3f

    goto :goto_2

    :cond_3
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    .line 235
    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v6

    or-int/2addr v5, v6

    :goto_2
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 236
    :cond_4
    iget-object v4, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->h:[I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v6

    aget v4, v4, v6

    :goto_3
    add-int/2addr v5, v3

    .line 237
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 243
    :cond_5
    iget v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->f:I

    iget v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->g:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 244
    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 246
    new-instance v0, Landroidx/media2/exoplayer/external/text/a;

    iget v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->d:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->b:I

    int-to-float v3, v2

    div-float v6, v1, v3

    const/4 v7, 0x0

    iget v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->e:I

    int-to-float v1, v1

    iget v3, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->c:I

    int-to-float v4, v3

    div-float v8, v1, v4

    const/4 v9, 0x0

    iget v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->f:I

    int-to-float v1, v1

    int-to-float v2, v2

    div-float v10, v1, v2

    iget v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->g:I

    int-to-float v1, v1

    int-to-float v2, v3

    div-float v11, v1, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroidx/media2/exoplayer/external/text/a;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v0

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Landroidx/media2/exoplayer/external/util/p;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 142
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 146
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 148
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->h:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 149
    div-int/lit8 v2, p2, 0x5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v5

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v6

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v7

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v8

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

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

    .line 159
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->h:[I

    shl-int/lit8 v7, v9, 0x18

    const/16 v8, 0xff

    const/4 v9, 0x0

    .line 161
    invoke-static {v12, v9, v8}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    .line 162
    invoke-static {v6, v9, v8}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 163
    invoke-static {v3, v9, v8}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v3

    or-int/2addr v3, v6

    aput v3, v4, v5

    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 165
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->i:Z

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->b:I

    .line 258
    iput v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->c:I

    .line 259
    iput v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->d:I

    .line 260
    iput v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->e:I

    .line 261
    iput v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->f:I

    .line 262
    iput v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->g:I

    .line 263
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 264
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/text/c/a$a;->i:Z

    return-void
.end method
