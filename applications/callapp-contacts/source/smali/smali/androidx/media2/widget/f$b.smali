.class final Landroidx/media2/widget/f$b;
.super Landroidx/media2/widget/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final g:Landroidx/media2/widget/e;

.field private final h:Landroidx/media2/widget/f$a;


# direct methods
.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/media/MediaFormat;)V
    .locals 0

    .line 90
    invoke-direct {p0, p2}, Landroidx/media2/widget/p;-><init>(Landroid/media/MediaFormat;)V

    .line 92
    iput-object p1, p0, Landroidx/media2/widget/f$b;->h:Landroidx/media2/widget/f$a;

    .line 93
    new-instance p2, Landroidx/media2/widget/e;

    invoke-direct {p2, p1}, Landroidx/media2/widget/e;-><init>(Landroidx/media2/widget/e$h;)V

    iput-object p2, p0, Landroidx/media2/widget/f$b;->g:Landroidx/media2/widget/e;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/widget/p$c;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media2/widget/f$b;->h:Landroidx/media2/widget/f$a;

    return-object v0
.end method

.method public final a([B)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    iget-object v2, v0, Landroidx/media2/widget/f$b;->g:Landroidx/media2/widget/e;

    const/4 v4, 0x0

    .line 1175
    :cond_0
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_13

    .line 1186
    aget-byte v5, v1, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x9f

    const/16 v8, 0x8

    const/16 v9, 0x1f

    const/16 v10, 0xf

    const/16 v11, 0x10

    const/4 v12, 0x7

    const/16 v13, 0x80

    if-ne v5, v11, :cond_6

    .line 1548
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    if-ltz v5, :cond_4

    if-gt v5, v9, :cond_4

    if-ltz v5, :cond_1

    if-le v5, v12, :cond_7

    :cond_1
    if-lt v5, v8, :cond_2

    if-gt v5, v10, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lt v5, v11, :cond_3

    const/16 v6, 0x17

    if-gt v5, v6, :cond_3

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_3
    const/16 v6, 0x18

    if-lt v5, v6, :cond_7

    if-gt v5, v9, :cond_7

    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    :cond_4
    if-lt v5, v13, :cond_7

    if-gt v5, v7, :cond_7

    if-lt v5, v13, :cond_5

    const/16 v6, 0x87

    if-gt v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_5
    const/16 v6, 0x88

    if-lt v5, v6, :cond_7

    const/16 v6, 0x8f

    if-gt v5, v6, :cond_7

    add-int/lit8 v4, v4, 0x5

    goto :goto_1

    :cond_6
    if-ltz v5, :cond_8

    if-gt v5, v9, :cond_8

    .line 1198
    invoke-virtual {v2, v5, v1, v4}, Landroidx/media2/widget/e;->a(I[BI)I

    move-result v4

    :cond_7
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    const/16 v9, 0x20

    const/16 v14, 0x7f

    if-lt v5, v13, :cond_10

    if-gt v5, v7, :cond_10

    const/4 v7, 0x6

    const/4 v15, 0x4

    const/4 v3, 0x3

    const/16 v16, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    add-int/lit16 v5, v5, -0x98

    .line 2489
    aget-byte v7, v1, v4

    and-int/2addr v7, v9

    if-eqz v7, :cond_9

    const/16 v19, 0x1

    goto :goto_2

    :cond_9
    const/16 v19, 0x0

    .line 2490
    :goto_2
    aget-byte v7, v1, v4

    and-int/2addr v7, v11

    if-eqz v7, :cond_a

    const/16 v20, 0x1

    goto :goto_3

    :cond_a
    const/16 v20, 0x0

    .line 2491
    :goto_3
    aget-byte v7, v1, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_b

    const/16 v21, 0x1

    goto :goto_4

    :cond_b
    const/16 v21, 0x0

    .line 2492
    :goto_4
    aget-byte v7, v1, v4

    and-int/lit8 v22, v7, 0x7

    add-int/lit8 v7, v4, 0x1

    .line 2493
    aget-byte v8, v1, v7

    and-int/2addr v8, v13

    if-eqz v8, :cond_c

    const/16 v23, 0x1

    goto :goto_5

    :cond_c
    const/16 v23, 0x0

    .line 2494
    :goto_5
    aget-byte v7, v1, v7

    and-int/lit8 v24, v7, 0x7f

    add-int/lit8 v7, v4, 0x2

    .line 2495
    aget-byte v7, v1, v7

    and-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x3

    .line 2496
    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xf0

    shr-int/lit8 v26, v8, 0x4

    .line 2497
    aget-byte v7, v1, v7

    and-int/lit8 v27, v7, 0xf

    add-int/lit8 v7, v4, 0x4

    .line 2498
    aget-byte v7, v1, v7

    and-int/lit8 v28, v7, 0x3f

    add-int/lit8 v7, v4, 0x5

    .line 2499
    aget-byte v8, v1, v7

    and-int/lit8 v8, v8, 0x38

    shr-int/lit8 v30, v8, 0x3

    .line 2500
    aget-byte v3, v1, v7

    and-int/lit8 v29, v3, 0x7

    add-int/lit8 v4, v4, 0x6

    .line 2502
    new-instance v3, Landroidx/media2/widget/e$b;

    new-instance v7, Landroidx/media2/widget/e$f;

    move-object/from16 v17, v7

    move/from16 v18, v5

    move/from16 v25, v6

    invoke-direct/range {v17 .. v30}, Landroidx/media2/widget/e$f;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v3, v11, v7}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_7

    .line 2444
    :pswitch_2
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xc0

    shr-int/2addr v5, v7

    .line 2445
    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0x30

    shr-int/2addr v6, v15

    .line 2446
    aget-byte v8, v1, v4

    const/16 v9, 0xc

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x2

    .line 2447
    aget-byte v9, v1, v4

    and-int/2addr v9, v3

    .line 2448
    new-instance v11, Landroidx/media2/widget/e$a;

    invoke-direct {v11, v5, v6, v8, v9}, Landroidx/media2/widget/e$a;-><init>(IIII)V

    add-int/lit8 v5, v4, 0x1

    .line 2449
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xc0

    shr-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    aget-byte v8, v1, v7

    and-int/2addr v8, v13

    const/4 v9, 0x5

    shr-int/2addr v8, v9

    or-int v20, v6, v8

    .line 2450
    aget-byte v6, v1, v5

    and-int/lit8 v6, v6, 0x30

    shr-int/2addr v6, v15

    .line 2451
    aget-byte v8, v1, v5

    const/16 v9, 0xc

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x2

    .line 2452
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    .line 2453
    new-instance v9, Landroidx/media2/widget/e$a;

    const/4 v12, 0x0

    invoke-direct {v9, v12, v6, v8, v5}, Landroidx/media2/widget/e$a;-><init>(IIII)V

    .line 2455
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_d

    const/16 v21, 0x1

    goto :goto_6

    :cond_d
    const/16 v21, 0x0

    .line 2456
    :goto_6
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v22, v5, 0x4

    .line 2457
    aget-byte v5, v1, v7

    const/16 v6, 0xc

    and-int/2addr v5, v6

    shr-int/lit8 v23, v5, 0x2

    .line 2458
    aget-byte v5, v1, v7

    and-int/lit8 v24, v5, 0x3

    add-int/lit8 v5, v4, 0x3

    .line 2459
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v26, v7, 0x4

    .line 2460
    aget-byte v7, v1, v5

    and-int/2addr v6, v7

    shr-int/lit8 v25, v6, 0x2

    .line 2461
    aget-byte v5, v1, v5

    and-int/lit8 v27, v5, 0x3

    add-int/lit8 v4, v4, 0x4

    .line 2463
    new-instance v3, Landroidx/media2/widget/e$b;

    new-instance v5, Landroidx/media2/widget/e$g;

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    invoke-direct/range {v17 .. v27}, Landroidx/media2/widget/e$g;-><init>(Landroidx/media2/widget/e$a;Landroidx/media2/widget/e$a;IZIIIIII)V

    invoke-direct {v3, v10, v5}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto :goto_7

    .line 2430
    :pswitch_3
    aget-byte v3, v1, v4

    and-int/2addr v3, v10

    add-int/lit8 v5, v4, 0x1

    .line 2431
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v4, v4, 0x2

    .line 2433
    new-instance v6, Landroidx/media2/widget/e$b;

    const/16 v7, 0xe

    new-instance v8, Landroidx/media2/widget/e$e;

    invoke-direct {v8, v3, v5}, Landroidx/media2/widget/e$e;-><init>(II)V

    invoke-direct {v6, v7, v8}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2399
    :pswitch_4
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xc0

    shr-int/2addr v5, v7

    .line 2400
    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0x30

    shr-int/2addr v6, v15

    .line 2401
    aget-byte v8, v1, v4

    const/16 v9, 0xc

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x2

    .line 2402
    aget-byte v9, v1, v4

    and-int/2addr v9, v3

    .line 2403
    new-instance v10, Landroidx/media2/widget/e$a;

    invoke-direct {v10, v5, v6, v8, v9}, Landroidx/media2/widget/e$a;-><init>(IIII)V

    add-int/lit8 v4, v4, 0x1

    .line 2405
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xc0

    shr-int/2addr v5, v7

    .line 2406
    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0x30

    shr-int/2addr v6, v15

    .line 2407
    aget-byte v7, v1, v4

    const/16 v8, 0xc

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x2

    .line 2408
    aget-byte v9, v1, v4

    and-int/2addr v9, v3

    .line 2409
    new-instance v11, Landroidx/media2/widget/e$a;

    invoke-direct {v11, v5, v6, v7, v9}, Landroidx/media2/widget/e$a;-><init>(IIII)V

    add-int/lit8 v4, v4, 0x1

    .line 2411
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x30

    shr-int/2addr v5, v15

    .line 2412
    aget-byte v6, v1, v4

    and-int/2addr v6, v8

    shr-int/lit8 v6, v6, 0x2

    .line 2413
    aget-byte v7, v1, v4

    and-int/2addr v3, v7

    .line 2414
    new-instance v7, Landroidx/media2/widget/e$a;

    const/4 v9, 0x0

    invoke-direct {v7, v9, v5, v6, v3}, Landroidx/media2/widget/e$a;-><init>(IIII)V

    add-int/lit8 v4, v4, 0x1

    .line 2417
    new-instance v3, Landroidx/media2/widget/e$b;

    const/16 v5, 0xd

    new-instance v6, Landroidx/media2/widget/e$d;

    invoke-direct {v6, v10, v11, v7}, Landroidx/media2/widget/e$d;-><init>(Landroidx/media2/widget/e$a;Landroidx/media2/widget/e$a;Landroidx/media2/widget/e$a;)V

    invoke-direct {v3, v5, v6}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v9, 0x0

    .line 2377
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v20, v5, 0x4

    .line 2378
    aget-byte v5, v1, v4

    and-int/lit8 v18, v5, 0x3

    .line 2379
    aget-byte v5, v1, v4

    const/16 v6, 0xc

    and-int/2addr v5, v6

    shr-int/lit8 v19, v5, 0x2

    add-int/lit8 v5, v4, 0x1

    .line 2380
    aget-byte v6, v1, v5

    and-int/2addr v6, v13

    if-eqz v6, :cond_e

    const/16 v24, 0x1

    goto :goto_8

    :cond_e
    const/16 v24, 0x0

    .line 2381
    :goto_8
    aget-byte v6, v1, v5

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_f

    const/16 v23, 0x1

    goto :goto_9

    :cond_f
    const/16 v23, 0x0

    .line 2382
    :goto_9
    aget-byte v6, v1, v5

    and-int/lit8 v6, v6, 0x38

    shr-int/lit8 v22, v6, 0x3

    .line 2383
    aget-byte v3, v1, v5

    and-int/lit8 v21, v3, 0x7

    add-int/lit8 v4, v4, 0x2

    .line 2385
    new-instance v3, Landroidx/media2/widget/e$b;

    new-instance v5, Landroidx/media2/widget/e$c;

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Landroidx/media2/widget/e$c;-><init>(IIIIIZZ)V

    const/16 v6, 0xc

    invoke-direct {v3, v6, v5}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v9, 0x0

    .line 2368
    new-instance v3, Landroidx/media2/widget/e$b;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_7
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 2359
    new-instance v3, Landroidx/media2/widget/e$b;

    const/16 v5, 0xa

    invoke-direct {v3, v5, v6}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_8
    const/4 v9, 0x0

    .line 2348
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 2350
    new-instance v5, Landroidx/media2/widget/e$b;

    const/16 v6, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v9, 0x0

    .line 2337
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 2339
    new-instance v5, Landroidx/media2/widget/e$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v8, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v9, 0x0

    .line 2326
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 2328
    new-instance v5, Landroidx/media2/widget/e$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v12, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_b
    const/4 v9, 0x0

    .line 2315
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 2317
    new-instance v5, Landroidx/media2/widget/e$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v7, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_c
    const/4 v9, 0x0

    .line 2304
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 2306
    new-instance v5, Landroidx/media2/widget/e$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x5

    invoke-direct {v5, v6, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_d
    const/4 v9, 0x0

    .line 2293
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 2295
    new-instance v5, Landroidx/media2/widget/e$b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v15, v3}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :pswitch_e
    const/4 v9, 0x0

    add-int/lit8 v5, v5, -0x80

    .line 2284
    new-instance v6, Landroidx/media2/widget/e$b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Landroidx/media2/widget/e$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroidx/media2/widget/e;->a(Landroidx/media2/widget/e$b;)V

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x0

    if-lt v5, v9, :cond_12

    if-gt v5, v14, :cond_12

    if-ne v5, v14, :cond_11

    .line 2531
    iget-object v5, v2, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/media2/widget/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2534
    :cond_11
    iget-object v6, v2, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_12
    const/16 v7, 0xa0

    if-lt v5, v7, :cond_0

    if-gt v5, v6, :cond_0

    .line 2542
    iget-object v6, v2, Landroidx/media2/widget/e;->b:Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1180
    :cond_13
    invoke-virtual {v2}, Landroidx/media2/widget/e;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
