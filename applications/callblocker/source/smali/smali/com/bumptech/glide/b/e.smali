.class public Lcom/bumptech/glide/b/e;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/b/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[I

.field private final c:[I

.field private final d:Lcom/bumptech/glide/b/a$a;

.field private e:Ljava/nio/ByteBuffer;

.field private f:[B

.field private g:[S

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[I

.field private l:I

.field private m:Lcom/bumptech/glide/b/c;

.field private n:Landroid/graphics/Bitmap;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/Boolean;

.field private u:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/bumptech/glide/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->c:[I

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->u:Landroid/graphics/Bitmap$Config;

    .line 138
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    .line 139
    new-instance v0, Lcom/bumptech/glide/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;)V

    .line 133
    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V

    .line 134
    return-void
.end method

.method private a(III)I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 644
    move v0, p1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    .line 653
    :goto_0
    iget v7, p0, Lcom/bumptech/glide/b/e;->q:I

    add-int/2addr v7, p1

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/bumptech/glide/b/e;->j:[B

    array-length v7, v7

    if-ge v0, v7, :cond_1

    if-ge v0, p2, :cond_1

    .line 654
    iget-object v7, p0, Lcom/bumptech/glide/b/e;->j:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    .line 655
    iget-object v8, p0, Lcom/bumptech/glide/b/e;->b:[I

    aget v7, v8, v7

    .line 656
    if-eqz v7, :cond_0

    .line 657
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 658
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    .line 659
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 660
    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 661
    add-int/lit8 v1, v1, 0x1

    .line 653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    add-int v0, p1, p3

    .line 667
    :goto_1
    add-int v7, p1, p3

    iget v8, p0, Lcom/bumptech/glide/b/e;->q:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/bumptech/glide/b/e;->j:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    if-ge v0, p2, :cond_3

    .line 668
    iget-object v7, p0, Lcom/bumptech/glide/b/e;->j:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    .line 669
    iget-object v8, p0, Lcom/bumptech/glide/b/e;->b:[I

    aget v7, v8, v7

    .line 670
    if-eqz v7, :cond_2

    .line 671
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 672
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    .line 673
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 674
    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 675
    add-int/lit8 v1, v1, 0x1

    .line 667
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 678
    :cond_3
    if-nez v1, :cond_4

    .line 681
    :goto_2
    return v2

    :cond_4
    div-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    div-int v2, v5, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    div-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    div-int v1, v3, v1

    or-int v2, v0, v1

    goto :goto_2
.end method

.method private a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->k:[I

    .line 421
    if-nez p2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    invoke-interface {v0, v3}, Lcom/bumptech/glide/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    .line 426
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 432
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 434
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 438
    :cond_2
    if-eqz p2, :cond_8

    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    if-lez v0, :cond_8

    .line 441
    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 444
    iget-boolean v0, p1, Lcom/bumptech/glide/b/b;->f:Z

    if-nez v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->l:I

    .line 446
    iget-object v3, p1, Lcom/bumptech/glide/b/b;->k:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->j:I

    iget v4, p1, Lcom/bumptech/glide/b/b;->h:I

    if-ne v3, v4, :cond_3

    move v0, v2

    .line 456
    :cond_3
    :goto_0
    iget v3, p2, Lcom/bumptech/glide/b/b;->d:I

    iget v4, p0, Lcom/bumptech/glide/b/e;->q:I

    div-int/2addr v3, v4

    .line 457
    iget v4, p2, Lcom/bumptech/glide/b/b;->b:I

    iget v5, p0, Lcom/bumptech/glide/b/e;->q:I

    div-int/2addr v4, v5

    .line 458
    iget v5, p2, Lcom/bumptech/glide/b/b;->c:I

    iget v6, p0, Lcom/bumptech/glide/b/e;->q:I

    div-int/2addr v5, v6

    .line 459
    iget v6, p2, Lcom/bumptech/glide/b/b;->a:I

    iget v7, p0, Lcom/bumptech/glide/b/e;->q:I

    div-int/2addr v6, v7

    .line 460
    iget v7, p0, Lcom/bumptech/glide/b/e;->s:I

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    .line 461
    iget v6, p0, Lcom/bumptech/glide/b/e;->s:I

    mul-int/2addr v3, v6

    add-int v6, v4, v3

    .line 462
    :goto_1
    if-ge v4, v6, :cond_8

    .line 463
    add-int v7, v4, v5

    move v3, v4

    .line 464
    :goto_2
    if-ge v3, v7, :cond_6

    .line 465
    aput v0, v1, v3

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 449
    :cond_4
    iget v0, p0, Lcom/bumptech/glide/b/e;->l:I

    if-nez v0, :cond_5

    .line 453
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    :cond_5
    move v0, v2

    goto :goto_0

    .line 462
    :cond_6
    iget v3, p0, Lcom/bumptech/glide/b/e;->s:I

    add-int/2addr v4, v3

    goto :goto_1

    .line 468
    :cond_7
    iget v0, p2, Lcom/bumptech/glide/b/b;->g:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 470
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v6, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v7, p0, Lcom/bumptech/glide/b/e;->r:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 476
    :cond_8
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;->c(Lcom/bumptech/glide/b/b;)V

    .line 478
    iget-boolean v0, p1, Lcom/bumptech/glide/b/b;->e:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/bumptech/glide/b/e;->q:I

    if-eq v0, v8, :cond_d

    .line 479
    :cond_9
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;->b(Lcom/bumptech/glide/b/b;)V

    .line 485
    :goto_3
    iget-boolean v0, p0, Lcom/bumptech/glide/b/e;->o:Z

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/bumptech/glide/b/b;->g:I

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/bumptech/glide/b/b;->g:I

    if-ne v0, v8, :cond_c

    .line 487
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 488
    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    .line 490
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v6, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v7, p0, Lcom/bumptech/glide/b/e;->r:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 495
    :cond_c
    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    iget v3, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v6, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v7, p0, Lcom/bumptech/glide/b/e;->r:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 497
    return-object v0

    .line 481
    :cond_d
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/b;)V

    goto :goto_3
.end method

.method private a(Lcom/bumptech/glide/b/b;)V
    .locals 17

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/b/e;->k:[I

    .line 502
    move-object/from16 v0, p1

    iget v9, v0, Lcom/bumptech/glide/b/b;->d:I

    .line 503
    move-object/from16 v0, p1

    iget v10, v0, Lcom/bumptech/glide/b/b;->b:I

    .line 504
    move-object/from16 v0, p1

    iget v11, v0, Lcom/bumptech/glide/b/b;->c:I

    .line 505
    move-object/from16 v0, p1

    iget v12, v0, Lcom/bumptech/glide/b/b;->a:I

    .line 507
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/b/e;->l:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 508
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bumptech/glide/b/e;->s:I

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/b/e;->j:[B

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/b/e;->b:[I

    .line 511
    const/4 v3, -0x1

    .line 512
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v9, :cond_5

    .line 513
    add-int v2, v7, v10

    .line 514
    mul-int v4, v2, v13

    .line 516
    add-int v6, v4, v12

    .line 518
    add-int v2, v6, v11

    .line 519
    add-int v5, v4, v13

    if-ge v5, v2, :cond_0

    .line 521
    add-int v2, v4, v13

    .line 524
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/bumptech/glide/b/b;->c:I

    mul-int/2addr v4, v7

    move v5, v4

    .line 526
    :goto_2
    if-ge v6, v2, :cond_4

    .line 527
    aget-byte v4, v14, v5

    .line 528
    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    .line 529
    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 530
    aget v16, v15, v16

    .line 531
    if-eqz v16, :cond_3

    .line 532
    aput v16, v8, v6

    .line 537
    :cond_1
    :goto_3
    add-int/lit8 v4, v5, 0x1

    .line 538
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .line 539
    goto :goto_2

    .line 507
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v3, v4

    .line 534
    goto :goto_3

    .line 512
    :cond_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 542
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    if-eq v3, v1, :cond_6

    const/4 v1, 0x1

    .line 543
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    .line 544
    return-void

    .line 542
    :cond_6
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private b(Lcom/bumptech/glide/b/b;)V
    .locals 23

    .prologue
    .line 547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/b/e;->k:[I

    .line 548
    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->d:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/b/e;->q:I

    div-int v13, v2, v3

    .line 549
    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->b:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/b/e;->q:I

    div-int v14, v2, v3

    .line 550
    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/b/e;->q:I

    div-int v15, v2, v3

    .line 551
    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/b/e;->q:I

    div-int v16, v2, v3

    .line 553
    const/4 v5, 0x1

    .line 554
    const/16 v4, 0x8

    .line 555
    const/4 v3, 0x0

    .line 556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/b/e;->l:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 557
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/b/e;->q:I

    move/from16 v17, v0

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/b/e;->s:I

    move/from16 v18, v0

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/b/e;->r:I

    move/from16 v19, v0

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->j:[B

    move-object/from16 v20, v0

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->b:[I

    move-object/from16 v21, v0

    .line 563
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    .line 564
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_b

    .line 566
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/bumptech/glide/b/b;->e:Z

    if-eqz v7, :cond_f

    .line 567
    if-lt v3, v13, :cond_0

    .line 568
    add-int/lit8 v5, v5, 0x1

    .line 569
    packed-switch v5, :pswitch_data_0

    .line 586
    :cond_0
    :goto_2
    add-int v9, v3, v4

    move v7, v3

    move v10, v4

    move v11, v5

    .line 588
    :goto_3
    add-int v5, v7, v14

    .line 589
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    .line 590
    :goto_4
    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    .line 591
    mul-int v5, v5, v18

    .line 593
    add-int v7, v5, v16

    .line 595
    add-int v3, v7, v15

    .line 596
    add-int v22, v5, v18

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 598
    add-int v3, v5, v18

    .line 601
    :cond_1
    mul-int v5, v8, v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bumptech/glide/b/b;->c:I

    move/from16 v22, v0

    mul-int v5, v5, v22

    .line 602
    if-eqz v4, :cond_8

    move-object v4, v6

    .line 604
    :goto_5
    if-ge v7, v3, :cond_6

    .line 605
    aget-byte v6, v20, v5

    and-int/lit16 v6, v6, 0xff

    .line 606
    aget v6, v21, v6

    .line 607
    if-eqz v6, :cond_5

    .line 608
    aput v6, v12, v7

    .line 612
    :cond_2
    :goto_6
    add-int v5, v5, v17

    .line 613
    add-int/lit8 v7, v7, 0x1

    .line 614
    goto :goto_5

    .line 556
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 571
    :pswitch_0
    const/4 v3, 0x4

    .line 572
    goto :goto_2

    .line 574
    :pswitch_1
    const/4 v3, 0x2

    .line 575
    const/4 v4, 0x4

    .line 576
    goto :goto_2

    .line 578
    :pswitch_2
    const/4 v3, 0x1

    .line 579
    const/4 v4, 0x2

    .line 580
    goto :goto_2

    .line 589
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_4

    .line 609
    :cond_5
    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    .line 610
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_6

    :cond_6
    move-object v6, v4

    .line 564
    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    move v4, v10

    move v5, v11

    goto :goto_1

    .line 617
    :cond_8
    sub-int v4, v3, v7

    mul-int v4, v4, v17

    add-int v22, v5, v4

    move-object v4, v6

    .line 618
    :goto_8
    if-ge v7, v3, :cond_e

    .line 622
    move-object/from16 v0, p1

    iget v6, v0, Lcom/bumptech/glide/b/b;->c:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v1, v6}, Lcom/bumptech/glide/b/e;->a(III)I

    move-result v6

    .line 623
    if-eqz v6, :cond_a

    .line 624
    aput v6, v12, v7

    .line 628
    :cond_9
    :goto_9
    add-int v5, v5, v17

    .line 629
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_8

    .line 625
    :cond_a
    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    .line 626
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_9

    .line 635
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    .line 636
    if-nez v6, :cond_d

    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    .line 639
    :cond_c
    return-void

    .line 637
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_a

    :cond_e
    move-object v6, v4

    goto :goto_7

    :cond_f
    move v7, v8

    move v9, v3

    move v10, v4

    move v11, v5

    goto/16 :goto_3

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Lcom/bumptech/glide/b/b;)V
    .locals 26

    .prologue
    .line 692
    if-eqz p1, :cond_0

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 697
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v2, v2, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v1, v2

    .line 701
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->j:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->j:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    .line 703
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a$a;->a(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->j:[B

    .line 705
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->j:[B

    move-object/from16 v18, v0

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->g:[S

    if-nez v2, :cond_3

    .line 707
    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->g:[S

    .line 709
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->g:[S

    move-object/from16 v19, v0

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->h:[B

    if-nez v2, :cond_4

    .line 711
    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->h:[B

    .line 713
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->h:[B

    move-object/from16 v20, v0

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/b/e;->i:[B

    if-nez v2, :cond_5

    .line 715
    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/b/e;->i:[B

    .line 717
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->i:[B

    move-object/from16 v21, v0

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->j()I

    move-result v22

    .line 721
    const/4 v2, 0x1

    shl-int v23, v2, v22

    .line 722
    add-int/lit8 v24, v23, 0x1

    .line 723
    add-int/lit8 v6, v23, 0x2

    .line 724
    const/4 v10, -0x1

    .line 725
    add-int/lit8 v4, v22, 0x1

    .line 726
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x1

    .line 728
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v2, v0, :cond_7

    .line 730
    const/4 v3, 0x0

    aput-short v3, v19, v2

    .line 731
    int-to-byte v3, v2

    aput-byte v3, v20, v2

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 697
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bumptech/glide/b/b;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/bumptech/glide/b/b;->d:I

    mul-int/2addr v1, v2

    goto/16 :goto_0

    .line 733
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/b/e;->f:[B

    move-object/from16 v25, v0

    .line 735
    const/4 v9, 0x0

    move v7, v9

    move v2, v9

    move v8, v9

    move v11, v9

    move v13, v9

    move v14, v9

    move v3, v9

    move v15, v9

    .line 736
    :goto_2
    if-ge v14, v1, :cond_8

    .line 738
    if-nez v3, :cond_a

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/b/e;->k()I

    move-result v3

    .line 740
    if-gtz v3, :cond_9

    .line 741
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/b/e;->p:I

    .line 817
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 818
    return-void

    .line 744
    :cond_9
    const/4 v2, 0x0

    .line 747
    :cond_a
    aget-byte v9, v25, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v15

    add-int/2addr v9, v13

    .line 748
    add-int/lit8 v15, v15, 0x8

    .line 749
    add-int/lit8 v16, v2, 0x1

    .line 750
    add-int/lit8 v17, v3, -0x1

    move v12, v11

    move v13, v9

    .line 752
    :goto_3
    if-lt v15, v4, :cond_12

    .line 754
    and-int v11, v13, v5

    .line 755
    shr-int/2addr v13, v4

    .line 756
    sub-int/2addr v15, v4

    .line 759
    move/from16 v0, v23

    if-ne v11, v0, :cond_b

    .line 761
    add-int/lit8 v4, v22, 0x1

    .line 762
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x1

    .line 763
    add-int/lit8 v6, v23, 0x2

    .line 764
    const/4 v11, -0x1

    move v10, v11

    .line 765
    goto :goto_3

    .line 766
    :cond_b
    move/from16 v0, v24

    if-ne v11, v0, :cond_c

    move/from16 v2, v16

    move v11, v12

    move/from16 v3, v17

    .line 767
    goto :goto_2

    .line 768
    :cond_c
    const/4 v2, -0x1

    if-ne v10, v2, :cond_d

    .line 769
    aget-byte v2, v20, v11

    aput-byte v2, v18, v7

    .line 770
    add-int/lit8 v7, v7, 0x1

    .line 771
    add-int/lit8 v9, v14, 0x1

    move v12, v11

    move v14, v9

    move v10, v11

    .line 774
    goto :goto_3

    .line 778
    :cond_d
    if-lt v11, v6, :cond_11

    .line 779
    int-to-byte v2, v12

    aput-byte v2, v21, v8

    .line 780
    add-int/lit8 v3, v8, 0x1

    move v2, v10

    .line 784
    :goto_4
    move/from16 v0, v23

    if-lt v2, v0, :cond_e

    .line 785
    aget-byte v8, v20, v2

    aput-byte v8, v21, v3

    .line 786
    add-int/lit8 v3, v3, 0x1

    .line 787
    aget-short v2, v19, v2

    goto :goto_4

    .line 789
    :cond_e
    aget-byte v2, v20, v2

    and-int/lit16 v12, v2, 0xff

    .line 791
    int-to-byte v2, v12

    aput-byte v2, v18, v7

    .line 792
    add-int/lit8 v2, v7, 0x1

    .line 793
    add-int/lit8 v9, v14, 0x1

    move v7, v2

    move v8, v3

    .line 795
    :goto_5
    if-lez v8, :cond_f

    .line 797
    add-int/lit8 v3, v8, -0x1

    aget-byte v2, v21, v3

    aput-byte v2, v18, v7

    .line 798
    add-int/lit8 v2, v7, 0x1

    .line 799
    add-int/lit8 v9, v9, 0x1

    move v7, v2

    move v8, v3

    goto :goto_5

    .line 803
    :cond_f
    const/16 v2, 0x1000

    if-ge v6, v2, :cond_10

    .line 804
    int-to-short v2, v10

    aput-short v2, v19, v6

    .line 805
    int-to-byte v2, v12

    aput-byte v2, v20, v6

    .line 806
    add-int/lit8 v6, v6, 0x1

    .line 807
    and-int v2, v6, v5

    if-nez v2, :cond_10

    const/16 v2, 0x1000

    if-ge v6, v2, :cond_10

    .line 808
    add-int/lit8 v2, v4, 0x1

    .line 809
    add-int v3, v5, v6

    :goto_6
    move v14, v9

    move v10, v11

    move v4, v2

    move v5, v3

    .line 812
    goto :goto_3

    :cond_10
    move v2, v4

    move v3, v5

    goto :goto_6

    :cond_11
    move v3, v8

    move v2, v11

    goto :goto_4

    :cond_12
    move/from16 v2, v16

    move v11, v12

    move/from16 v3, v17

    goto/16 :goto_2
.end method

.method private j()I
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private k()I
    .locals 5

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/bumptech/glide/b/e;->j()I

    move-result v0

    .line 834
    if-gtz v0, :cond_0

    .line 838
    :goto_0
    return v0

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bumptech/glide/b/e;->f:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private l()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 844
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget v2, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v3, p0, Lcom/bumptech/glide/b/e;->r:I

    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 845
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 846
    return-object v0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->u:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 171
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    if-ge p1, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    iget v0, v0, Lcom/bumptech/glide/b/b;->i:I

    .line 174
    :cond_0
    return v0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .prologue
    .line 404
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->u:Landroid/graphics/Bitmap$Config;

    .line 410
    return-void
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 352
    monitor-enter p0

    if-gtz p3, :cond_0

    .line 353
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/b/e;->p:I

    .line 358
    iput-object p1, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/e;->l:I

    .line 361
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    .line 362
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/b/e;->o:Z

    .line 367
    iget-object v0, p1, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 368
    iget v0, v0, Lcom/bumptech/glide/b/b;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/b/e;->o:Z

    .line 374
    :cond_2
    iput v1, p0, Lcom/bumptech/glide/b/e;->q:I

    .line 375
    iget v0, p1, Lcom/bumptech/glide/b/c;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/e;->s:I

    .line 376
    iget v0, p1, Lcom/bumptech/glide/b/c;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/e;->r:I

    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget v1, p1, Lcom/bumptech/glide/b/c;->f:I

    iget v2, p1, Lcom/bumptech/glide/b/c;->g:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->j:[B

    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget v1, p0, Lcom/bumptech/glide/b/e;->s:I

    iget v2, p0, Lcom/bumptech/glide/b/e;->r:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->k:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/bumptech/glide/b/e;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v1, v1, Lcom/bumptech/glide/b/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/e;->l:I

    .line 166
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/e;->l:I

    if-gez v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/b/e;->l:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/e;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/bumptech/glide/b/e;->l:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/e;->l:I

    .line 199
    return-void
.end method

.method public g()I
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->j:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->k:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized h()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v0, v0, Lcom/bumptech/glide/b/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/b/e;->l:I

    if-gez v0, :cond_2

    .line 235
    :cond_0
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget v3, v3, Lcom/bumptech/glide/b/c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/b/e;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/e;->p:I

    .line 243
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/b/e;->p:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/bumptech/glide/b/e;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 244
    :cond_3
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/b/e;->p:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    .line 284
    :goto_0
    monitor-exit p0

    return-object v0

    .line 249
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/bumptech/glide/b/e;->p:I

    .line 251
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->f:[B

    if-nez v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/b/e;->f:[B

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget-object v0, v0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/b/e;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/b;

    .line 257
    iget v1, p0, Lcom/bumptech/glide/b/e;->l:I

    add-int/lit8 v1, v1, -0x1

    .line 258
    if-ltz v1, :cond_b

    .line 259
    iget-object v3, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget-object v3, v3, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/b;

    move-object v3, v1

    .line 263
    :goto_1
    iget-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/bumptech/glide/b/b;->k:[I

    :goto_2
    iput-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    .line 264
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    if-nez v1, :cond_9

    .line 265
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    sget-object v0, Lcom/bumptech/glide/b/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No valid color table found for frame #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/b/e;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/b/e;->p:I

    move-object v0, v2

    .line 270
    goto :goto_0

    .line 263
    :cond_8
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    iget-object v1, v1, Lcom/bumptech/glide/b/c;->a:[I

    goto :goto_2

    .line 274
    :cond_9
    iget-boolean v1, v0, Lcom/bumptech/glide/b/b;->f:Z

    if-eqz v1, :cond_a

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/b/e;->c:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bumptech/glide/b/e;->b:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->c:[I

    iput-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    .line 280
    iget-object v1, p0, Lcom/bumptech/glide/b/e;->b:[I

    iget v2, v0, Lcom/bumptech/glide/b/b;->h:I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 284
    :cond_a
    invoke-direct {p0, v0, v3}, Lcom/bumptech/glide/b/e;->a(Lcom/bumptech/glide/b/b;Lcom/bumptech/glide/b/b;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move-object v3, v2

    goto :goto_1
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iput-object v2, p0, Lcom/bumptech/glide/b/e;->m:Lcom/bumptech/glide/b/c;

    .line 322
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->j:[B

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->j:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a([B)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->k:[I

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->k:[I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a([I)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 331
    :cond_2
    iput-object v2, p0, Lcom/bumptech/glide/b/e;->n:Landroid/graphics/Bitmap;

    .line 332
    iput-object v2, p0, Lcom/bumptech/glide/b/e;->e:Ljava/nio/ByteBuffer;

    .line 333
    iput-object v2, p0, Lcom/bumptech/glide/b/e;->t:Ljava/lang/Boolean;

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->f:[B

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/b/e;->d:Lcom/bumptech/glide/b/a$a;

    iget-object v1, p0, Lcom/bumptech/glide/b/e;->f:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/b/a$a;->a([B)V

    .line 337
    :cond_3
    return-void
.end method
