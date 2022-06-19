.class final Landroidx/j/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroidx/j/a/a;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(Landroidx/j/a/a;II)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Landroidx/j/a/a$a;->c:I

    .line 227
    iput p3, p0, Landroidx/j/a/a$a;->a:I

    .line 228
    invoke-virtual {p0}, Landroidx/j/a/a$a;->c()V

    return-void
.end method

.method private f()I
    .locals 2

    .line 241
    iget v0, p0, Landroidx/j/a/a$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/j/a/a$a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a()I
    .locals 3

    .line 232
    iget v0, p0, Landroidx/j/a/a$a;->f:I

    iget v1, p0, Landroidx/j/a/a$a;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/j/a/a$a;->h:I

    iget v2, p0, Landroidx/j/a/a$a;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    iget v1, p0, Landroidx/j/a/a$a;->j:I

    iget v2, p0, Landroidx/j/a/a$a;->i:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    return v0
.end method

.method final b()Z
    .locals 2

    .line 237
    invoke-direct {p0}, Landroidx/j/a/a$a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()V
    .locals 13

    .line 248
    iget-object v0, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    iget-object v0, v0, Landroidx/j/a/a;->a:[I

    .line 249
    iget-object v1, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    iget-object v1, v1, Landroidx/j/a/a;->b:[I

    .line 258
    iget v2, p0, Landroidx/j/a/a$a;->c:I

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    :goto_0
    iget v10, p0, Landroidx/j/a/a$a;->a:I

    if-gt v2, v10, :cond_6

    .line 259
    aget v10, v0, v2

    .line 260
    aget v11, v1, v10

    add-int/2addr v9, v11

    .line 262
    invoke-static {v10}, Landroidx/j/a/a;->a(I)I

    move-result v11

    .line 263
    invoke-static {v10}, Landroidx/j/a/a;->b(I)I

    move-result v12

    .line 264
    invoke-static {v10}, Landroidx/j/a/a;->c(I)I

    move-result v10

    if-le v11, v6, :cond_0

    move v6, v11

    :cond_0
    if-ge v11, v3, :cond_1

    move v3, v11

    :cond_1
    if-le v12, v7, :cond_2

    move v7, v12

    :cond_2
    if-ge v12, v4, :cond_3

    move v4, v12

    :cond_3
    if-le v10, v8, :cond_4

    move v8, v10

    :cond_4
    if-ge v10, v5, :cond_5

    move v5, v10

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_6
    iput v3, p0, Landroidx/j/a/a$a;->e:I

    .line 286
    iput v6, p0, Landroidx/j/a/a$a;->f:I

    .line 287
    iput v4, p0, Landroidx/j/a/a$a;->g:I

    .line 288
    iput v7, p0, Landroidx/j/a/a$a;->h:I

    .line 289
    iput v5, p0, Landroidx/j/a/a$a;->i:I

    .line 290
    iput v8, p0, Landroidx/j/a/a$a;->j:I

    .line 291
    iput v9, p0, Landroidx/j/a/a$a;->d:I

    return-void
.end method

.method final d()I
    .locals 7

    .line 1320
    iget v0, p0, Landroidx/j/a/a$a;->f:I

    iget v1, p0, Landroidx/j/a/a$a;->e:I

    sub-int/2addr v0, v1

    .line 1321
    iget v1, p0, Landroidx/j/a/a$a;->h:I

    iget v2, p0, Landroidx/j/a/a$a;->g:I

    sub-int/2addr v1, v2

    .line 1322
    iget v2, p0, Landroidx/j/a/a$a;->j:I

    iget v3, p0, Landroidx/j/a/a$a;->i:I

    sub-int/2addr v2, v3

    if-lt v0, v1, :cond_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v1, v2, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 344
    :goto_0
    iget-object v1, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    iget-object v1, v1, Landroidx/j/a/a;->a:[I

    .line 345
    iget-object v2, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    iget-object v2, v2, Landroidx/j/a/a;->b:[I

    .line 350
    iget v3, p0, Landroidx/j/a/a$a;->c:I

    iget v4, p0, Landroidx/j/a/a$a;->a:I

    invoke-static {v1, v0, v3, v4}, Landroidx/j/a/a;->a([IIII)V

    .line 353
    iget v3, p0, Landroidx/j/a/a$a;->c:I

    iget v4, p0, Landroidx/j/a/a$a;->a:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 356
    iget v3, p0, Landroidx/j/a/a$a;->c:I

    iget v4, p0, Landroidx/j/a/a$a;->a:I

    invoke-static {v1, v0, v3, v4}, Landroidx/j/a/a;->a([IIII)V

    .line 358
    iget v0, p0, Landroidx/j/a/a$a;->d:I

    div-int/lit8 v0, v0, 0x2

    .line 359
    iget v3, p0, Landroidx/j/a/a$a;->c:I

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Landroidx/j/a/a$a;->a:I

    if-gt v3, v5, :cond_3

    .line 360
    aget v6, v1, v3

    aget v6, v2, v6

    add-int/2addr v4, v6

    if-lt v4, v0, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 364
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 368
    :cond_3
    iget v0, p0, Landroidx/j/a/a$a;->c:I

    return v0
.end method

.method final e()Landroidx/j/a/b$d;
    .locals 10

    .line 375
    iget-object v0, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    iget-object v0, v0, Landroidx/j/a/a;->a:[I

    .line 376
    iget-object v1, p0, Landroidx/j/a/a$a;->b:Landroidx/j/a/a;

    iget-object v1, v1, Landroidx/j/a/a;->b:[I

    .line 382
    iget v2, p0, Landroidx/j/a/a$a;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, p0, Landroidx/j/a/a$a;->a:I

    if-gt v2, v7, :cond_0

    .line 383
    aget v7, v0, v2

    .line 384
    aget v8, v1, v7

    add-int/2addr v4, v8

    .line 387
    invoke-static {v7}, Landroidx/j/a/a;->a(I)I

    move-result v9

    mul-int v9, v9, v8

    add-int/2addr v3, v9

    .line 388
    invoke-static {v7}, Landroidx/j/a/a;->b(I)I

    move-result v9

    mul-int v9, v9, v8

    add-int/2addr v5, v9

    .line 389
    invoke-static {v7}, Landroidx/j/a/a;->c(I)I

    move-result v7

    mul-int v8, v8, v7

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 392
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v5

    div-float/2addr v2, v1

    .line 393
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v6

    div-float/2addr v3, v1

    .line 394
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 396
    new-instance v3, Landroidx/j/a/b$d;

    invoke-static {v0, v2, v1}, Landroidx/j/a/a;->a(III)I

    move-result v0

    invoke-direct {v3, v0, v4}, Landroidx/j/a/b$d;-><init>(II)V

    return-object v3
.end method
