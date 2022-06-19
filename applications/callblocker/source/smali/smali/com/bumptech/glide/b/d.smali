.class public Lcom/bumptech/glide/b/d;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lcom/bumptech/glide/b/c;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->a:[B

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/b/d;->d:I

    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 201
    move v0, v3

    .line 202
    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->o()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->c:I

    if-gt v2, p1, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v2

    .line 204
    sparse-switch v2, :sswitch_data_0

    .line 254
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iput v1, v2, Lcom/bumptech/glide/b/c;->b:I

    goto :goto_0

    .line 210
    :sswitch_0
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    new-instance v4, Lcom/bumptech/glide/b/b;

    invoke-direct {v4}, Lcom/bumptech/glide/b/b;-><init>()V

    iput-object v4, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->f()V

    goto :goto_0

    .line 216
    :sswitch_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v2

    .line 217
    sparse-switch v2, :sswitch_data_1

    .line 244
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->k()V

    goto :goto_0

    .line 220
    :sswitch_2
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    new-instance v4, Lcom/bumptech/glide/b/b;

    invoke-direct {v4}, Lcom/bumptech/glide/b/b;-><init>()V

    iput-object v4, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    .line 221
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->e()V

    goto :goto_0

    .line 224
    :sswitch_3
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->l()V

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    .line 226
    :goto_1
    const/16 v5, 0xb

    if-ge v2, v5, :cond_1

    .line 227
    iget-object v5, p0, Lcom/bumptech/glide/b/d;->a:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "NETSCAPE2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->g()V

    goto :goto_0

    .line 233
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->k()V

    goto :goto_0

    .line 237
    :sswitch_4
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->k()V

    goto :goto_0

    .line 240
    :sswitch_5
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->k()V

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 250
    goto :goto_0

    .line 257
    :cond_3
    return-void

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 217
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private b(I)[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 416
    mul-int/lit8 v1, p1, 0x3

    .line 417
    const/4 v0, 0x0

    .line 418
    new-array v4, v1, [B

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 425
    const/16 v1, 0x100

    new-array v0, v1, [I

    move v1, v2

    move v3, v2

    .line 428
    :goto_0
    if-ge v3, p1, :cond_1

    .line 429
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    .line 430
    add-int/lit8 v6, v2, 0x1

    aget-byte v1, v4, v2

    and-int/lit16 v7, v1, 0xff

    .line 431
    add-int/lit8 v1, v6, 0x1

    aget-byte v2, v4, v6

    and-int/lit16 v6, v2, 0xff

    .line 432
    add-int/lit8 v2, v3, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v3
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 433
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    const-string/jumbo v2, "GifHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const-string/jumbo v2, "GifHeaderParser"

    const-string/jumbo v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lcom/bumptech/glide/b/c;->b:I

    .line 441
    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 153
    new-instance v0, Lcom/bumptech/glide/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    .line 154
    iput v1, p0, Lcom/bumptech/glide/b/d;->d:I

    .line 155
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 193
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/bumptech/glide/b/d;->a(I)V

    .line 194
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 264
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    .line 276
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    and-int/lit8 v3, v1, 0x1c

    shr-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/bumptech/glide/b/b;->g:I

    .line 280
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    iget v2, v2, Lcom/bumptech/glide/b/b;->g:I

    if-nez v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    iput v0, v2, Lcom/bumptech/glide/b/b;->g:I

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v2, v2, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, v2, Lcom/bumptech/glide/b/b;->f:Z

    .line 286
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v0

    .line 288
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 289
    const/16 v0, 0xa

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/bumptech/glide/b/b;->i:I

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->h:I

    .line 295
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    .line 296
    return-void

    .line 284
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/b/b;->a:I

    .line 304
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/b/b;->b:I

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/b/b;->c:I

    .line 306
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/b/b;->d:I

    .line 320
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v3

    .line 321
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    .line 322
    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v3, 0x7

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 323
    iget-object v5, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v5, v5, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, v5, Lcom/bumptech/glide/b/b;->e:Z

    .line 324
    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/b/d;->b(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    .line 332
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/b;->j:I

    .line 335
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->j()V

    .line 337
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0

    :cond_1
    move v1, v2

    .line 323
    goto :goto_1

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    goto :goto_2

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget v1, v0, Lcom/bumptech/glide/b/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/b/c;->c:I

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->d:Lcom/bumptech/glide/b/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->l()V

    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    .line 354
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 355
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 356
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/b/c;->m:I

    .line 358
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/b/d;->d:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :cond_2
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/b/c;->b:I

    .line 379
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->i()V

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-boolean v0, v0, Lcom/bumptech/glide/b/c;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->i:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/b/d;->b(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/b/c;->a:[I

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->a:[I

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->j:I

    aget v1, v1, v2

    iput v1, v0, Lcom/bumptech/glide/b/c;->l:I

    goto :goto_1
.end method

.method private i()V
    .locals 6

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->f:I

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->g:I

    .line 399
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v1

    .line 400
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/bumptech/glide/b/c;->h:Z

    .line 401
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Lcom/bumptech/glide/b/c;->i:I

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->j:I

    .line 405
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/b/c;->k:I

    .line 406
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    .line 451
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->k()V

    .line 452
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 462
    iget-object v2, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 463
    if-gtz v0, :cond_0

    .line 464
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->m()I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/b/d;->d:I

    .line 472
    iget v1, p0, Lcom/bumptech/glide/b/d;->d:I

    if-lez v1, :cond_1

    move v1, v0

    move v2, v0

    .line 475
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/b/d;->d:I

    if-ge v2, v0, :cond_1

    .line 476
    iget v0, p0, Lcom/bumptech/glide/b/d;->d:I

    sub-int v1, v0, v2

    .line 477
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/b/d;->a:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    add-int v0, v2, v1

    move v2, v0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    const-string/jumbo v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-string/jumbo v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error Reading Block n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " blockSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/b/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/b/c;->b:I

    .line 489
    :cond_1
    return-void
.end method

.method private m()I
    .locals 3

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 501
    :goto_0
    return v0

    .line 498
    :catch_0
    move-exception v1

    .line 499
    iget-object v1, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lcom/bumptech/glide/b/c;->b:I

    goto :goto_0
.end method

.method private n()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/b/d;
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->c()V

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 132
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    .line 147
    iput-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    .line 148
    return-void
.end method

.method public b()Lcom/bumptech/glide/b/c;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    .line 174
    :goto_0
    return-object v0

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->h()V

    .line 167
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/b/d;->d()V

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-gez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/b/c;->b:I

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/b/d;->c:Lcom/bumptech/glide/b/c;

    goto :goto_0
.end method
